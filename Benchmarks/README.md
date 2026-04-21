# JavaScriptKit Benchmarks

This directory contains performance benchmarks for JavaScriptKit.

## Building Benchmarks

Before running the benchmarks, you need to build the test suite:

```bash
swift package --swift-sdk $SWIFT_SDK_ID js -c release
```

## Running Benchmarks

```bash
# Run with default settings
node run.js

# Save results to a JSON file
node run.js --output=results.json

# Specify number of iterations
node run.js --runs=20

# Run in adaptive mode until results stabilize
node run.js --adaptive --output=stable-results.json

# Run benchmarks and compare with previous results
node run.js --baseline=previous-results.json

# Run only a subset of benchmarks
# Substring match
node run.js --filter=Call
# Regex (with flags)
node run.js --filter=/^Property access\//
node run.js --filter=/string/i
```

## Identity Mode Benchmarks

Compare `identityMode: "pointer"` vs default (`"none"`) for SwiftHeapObject wrapper caching. Requires `--expose-gc` for memory benchmarks.

```bash
# Run identity benchmarks comparing both modes
node --expose-gc run.js --identity-mode=both

# Pointer mode only
node --expose-gc run.js --identity-mode=pointer

# Control iteration count (default: 1000000)
node --expose-gc run.js --identity-mode=both --identity-iterations=500000

# Control pool sizes for reuse scenarios (default: 1)
node --expose-gc run.js --identity-mode=both --identity-reuse-pools=1,16

# Include memory profiling (heap snapshots before/during/after)
node --expose-gc run.js --identity-mode=both --identity-memory

# Combine with adaptive sampling
node --expose-gc run.js --identity-mode=both --adaptive

# Save identity results
node --expose-gc run.js --identity-mode=both --output=results/identity-mode/results.json
```

### Identity Mode Scenarios

| Scenario | What it measures |
|----------|-----------------|
| `passBothWaysRoundtrip` | Same object crossing boundary repeatedly (cache hit path) |
| `getPoolRepeated_100` | Bulk return of 100 cached objects (model collection pattern) |
| `churnObjects` | Create, roundtrip, release cycle (FinalizationRegistry cleanup pressure) |
| `swiftConsumesSameObject` | JS passes same object to Swift repeatedly |
| `swiftCreatesObject` | Fresh object creation overhead (cache miss path) |
