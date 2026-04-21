import { instantiate } from "../.build/plugins/PackageToJS/outputs/Package/instantiate.js"
import { defaultNodeSetup } from "../.build/plugins/PackageToJS/outputs/Package/platforms/node.js"

/**
 * Force a garbage collection cycle if available
 */
function forceGC() {
    if (typeof globalThis.gc === 'function') {
        globalThis.gc()
    }
}

/**
 * Format a byte count as a human-readable string
 * @param {number} bytes - Byte count to format
 * @returns {string} Formatted string (B, KiB, or MiB)
 */
function formatBytes(bytes) {
    if (Math.abs(bytes) < 1024) return `${bytes} B`
    if (Math.abs(bytes) < 1024 * 1024)
        return `${(bytes / 1024).toFixed(2)} KiB`
    return `${(bytes / (1024 * 1024)).toFixed(2)} MiB`
}

/**
 * Parse the --identity-mode CLI argument into a list of modes to benchmark
 * @param {string} modeArg - Mode argument: off, none, pointer, or both
 * @returns {string[]} List of identity modes to run
 */
function parseIdentityModes(modeArg) {
    if (!modeArg || modeArg === 'off') return []
    if (modeArg === 'none') return ['none']
    if (modeArg === 'pointer') return ['pointer']
    if (modeArg === 'both') return ['none', 'pointer']
    console.error(
        `Invalid --identity-mode value: ${modeArg}. Expected off, none, pointer, or both.`
    )
    process.exit(1)
}

/**
 * Parse the --identity-reuse-pools CLI argument into pool sizes
 * @param {string} value - Comma-separated pool sizes (default: "1")
 * @returns {number[]} List of pool sizes
 */
function parseIdentityReusePools(value) {
    const raw = (value || '1')
        .split(',')
        .map((part) => part.trim())
        .filter(Boolean)
    const parsed = []
    for (const item of raw) {
        const poolSize = Number.parseInt(item, 10)
        if (!Number.isInteger(poolSize) || poolSize <= 0) {
            console.error(
                `Invalid --identity-reuse-pools value: ${value}. Expected comma-separated positive integers.`
            )
            process.exit(1)
        }
        if (!parsed.includes(poolSize)) {
            parsed.push(poolSize)
        }
    }
    if (parsed.length === 0) {
        console.error(
            'Invalid --identity-reuse-pools value: expected at least one pool size.'
        )
        process.exit(1)
    }
    return parsed
}

/**
 * Capture a memory profile sample for identity mode benchmarks.
 * Measures heap cost of holding roundtrip results in an array.
 * In pointer mode, retained entries reference the same wrapper; in none mode, each is distinct.
 * @param {object} classRoundtrip - ClassRoundtrip instance
 * @param {object} baseObject - Base SimpleClass instance
 * @param {number} iterations - Number of roundtrip iterations
 * @param {number} sampleInterval - How often to sample heap usage
 * @returns {Promise<object>} Memory profile sample
 */
async function captureIdentityMemorySample(classRoundtrip, baseObject, iterations, sampleInterval) {
    const v8 = await import('v8')
    forceGC()
    const before = process.memoryUsage()
    const beforeHeapStats = v8.getHeapStatistics()
    let peakHeapUsed = before.heapUsed

    const retained = []
    let current = baseObject
    const startedAt = performance.now()
    for (let i = 0; i < iterations; i++) {
        current = classRoundtrip.roundtripSimpleClass(current)
        retained.push(current)
        if ((i + 1) % sampleInterval === 0) {
            peakHeapUsed = Math.max(peakHeapUsed, process.memoryUsage().heapUsed)
        }
    }
    const durationMs = performance.now() - startedAt

    const afterRetain = process.memoryUsage()
    peakHeapUsed = Math.max(peakHeapUsed, afterRetain.heapUsed)
    retained.length = 0

    forceGC()
    const afterGC = process.memoryUsage()
    const afterHeapStats = v8.getHeapStatistics()

    return {
        iterations,
        durationMs,
        heapUsedBefore: before.heapUsed,
        heapUsedPeak: peakHeapUsed,
        heapUsedAfterRetain: afterRetain.heapUsed,
        heapUsedAfterGC: afterGC.heapUsed,
        heapSizeLimit: beforeHeapStats.heap_size_limit,
        totalHeapSizeBefore: beforeHeapStats.total_heap_size,
        totalHeapSizeAfter: afterHeapStats.total_heap_size,
        retainedHeapDelta: afterRetain.heapUsed - before.heapUsed,
        peakHeapDelta: peakHeapUsed - before.heapUsed,
        postGCDelta: afterGC.heapUsed - before.heapUsed,
    }
}

/**
 * Run identity mode benchmarks for each configured mode.
 * Creates a separate WASM instance per mode to isolate identity cache state.
 * @param {object} results - Results object to accumulate benchmark data
 * @param {function|null} nameFilter - Optional filter for benchmark names
 * @param {object|null} identityConfig - Identity benchmark configuration
 * @param {function} benchmarkRunner - Benchmark runner function from singleRun
 */
async function runIdentityModeBenchmarks(results, nameFilter, identityConfig, benchmarkRunner) {
    if (!identityConfig || identityConfig.modes.length === 0) return

    for (const mode of identityConfig.modes) {
        const options = await defaultNodeSetup({})
        const { exports } = await instantiate({
            ...options,
            identityMode: mode,
            getImports: () => ({
                benchmarkHelperNoop: () => {},
                benchmarkHelperNoopWithNumber: () => {},
                benchmarkRunner: () => {},
            }),
        })

        const classRoundtrip = new exports.ClassRoundtrip()
        const baseObject = new exports.SimpleClass('Hello', 42, true, 0.5, 3.14159)

        for (const poolSize of identityConfig.reusePools) {
            const pool = Array.from({ length: poolSize }, (_, i) => {
                return new exports.SimpleClass(`Hello ${i}`, i, true, 0.5, 3.14159)
            })
            const testName = poolSize === 1
                ? `IdentityMode/${mode}/passBothWaysRoundtrip`
                : `IdentityMode/${mode}/passBothWaysPool${poolSize}`
            benchmarkRunner(testName, () => {
                for (let i = 0; i < identityConfig.iterations; i++) {
                    const index = i % poolSize
                    pool[index] = classRoundtrip.roundtripSimpleClass(pool[index])
                }
            })
            for (const object of pool) {
                object.release()
            }
        }

        benchmarkRunner(`IdentityMode/${mode}/swiftConsumesSameObject`, () => {
            for (let i = 0; i < identityConfig.iterations; i++) {
                classRoundtrip.takeSimpleClass(baseObject)
            }
        })


        // Churn scenario: create, roundtrip, release in a tight loop.
        // Tests FinalizationRegistry cleanup overhead when objects are
        // constantly created and dropped. In pointer mode, the identity
        // cache accumulates WeakRef entries that must be cleaned up.
        benchmarkRunner(`IdentityMode/${mode}/churnObjects`, () => {
            for (let i = 0; i < identityConfig.iterations; i++) {
                const obj = new exports.SimpleClass(`temp ${i}`, i, true, 0.5, 3.14159)
                classRoundtrip.roundtripSimpleClass(obj)
                obj.release()
            }
        })

        // Bulk array return: Swift returns same cached array of 100 objects.
        // Tests the common pattern of returning model collections (e.g. building.floors).
        // Uses fewer iterations since each call returns 100 objects.
        const identityCacheBench = new exports.IdentityCacheBenchmark()
        identityCacheBench.setupPool(100)
        identityCacheBench.getPoolRepeated() // warm the cache
        benchmarkRunner(`IdentityMode/${mode}/getPoolRepeated_100`, () => {
            for (let i = 0; i < Math.floor(identityConfig.iterations / 100); i++) {
                identityCacheBench.getPoolRepeated()
            }
        })
        identityCacheBench.release()

        benchmarkRunner(`IdentityMode/${mode}/swiftCreatesObject`, () => {
            for (let i = 0; i < identityConfig.iterations; i++) {
                classRoundtrip.makeSimpleClass()
            }
        })

        if (identityConfig.memory) {
            const sample = await captureIdentityMemorySample(
                classRoundtrip, baseObject,
                identityConfig.iterations, identityConfig.sampleInterval
            )
            if (!identityConfig.memorySamples[mode]) {
                identityConfig.memorySamples[mode] = []
            }
            identityConfig.memorySamples[mode].push(sample)
        }

        baseObject.release()
        classRoundtrip.release()
    }
}

/**
 * Summarize memory profiling results across all identity modes
 * @param {object} identityConfig - Identity benchmark configuration with memorySamples
 * @returns {object[]} Table rows for console.table display
 */
function summarizeIdentityMemory(identityConfig) {
    const rows = []
    for (const mode of identityConfig.modes) {
        const samples = identityConfig.memorySamples[mode] || []
        if (samples.length === 0) continue
        const avg = (selector) =>
            samples.reduce((acc, sample) => acc + selector(sample), 0) / samples.length
        rows.push({
            Mode: mode,
            Samples: samples.length,
            Iterations: samples[0].iterations,
            'Avg duration (ms)': avg((s) => s.durationMs).toFixed(2),
            'Avg peak delta': formatBytes(Math.round(avg((s) => s.peakHeapDelta))),
            'Avg retained delta': formatBytes(Math.round(avg((s) => s.retainedHeapDelta))),
            'Avg post-GC delta': formatBytes(Math.round(avg((s) => s.postGCDelta))),
            'Heap limit': formatBytes(samples[0].heapSizeLimit),
        })
    }
    return rows
}

export {
    parseIdentityModes,
    parseIdentityReusePools,
    runIdentityModeBenchmarks,
    summarizeIdentityMemory,
}
