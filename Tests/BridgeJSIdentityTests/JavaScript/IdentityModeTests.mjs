// @ts-check

import assert from "node:assert";

/**
 * @returns {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Imports["IdentityModeTestImports"]}
 */
export function getImports(importsContext) {
    return {
        runJsIdentityModeTests: () => {
            const exports = importsContext.getExports();
            if (!exports) {
                throw new Error("No exports!?");
            }
            runIdentityModeTests(exports);
        },
    };
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function runIdentityModeTests(exports) {
    testWrapperIdentity(exports);
    testCacheInvalidationOnRelease(exports);
    testDifferentClassesDontCollide(exports);
    testRetainLeakOnCacheHit(exports);
    testArrayElementIdentity(exports);
    testArrayElementMatchesSingleGetter(exports);
    testArrayRetainLeak(exports);

    // identityMode: .swift tests (coexist with the pointer-mode classes above).
    testSwiftModeIdentity(exports);
    testSwiftModeSelfMethodIdentity(exports);
    testSwiftModeReleaseFreesHeapObject(exports);
    testSwiftModeDoubleReleaseIdempotent(exports);
    testSwiftModeIdentityTableCleanup(exports);
    testSwiftModeArrayCrossElementIdentity(exports);
    testSwiftModeGcSurvivability(exports);
    testSwiftModeOptionalIdentity(exports);
    testSwiftModeReleaseGuardsMembers(exports);
    testModeCoexistence(exports);
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testWrapperIdentity(exports) {
    exports.resetSharedSubject();
    const a = exports.getSharedSubject();
    const b = exports.getSharedSubject();

    assert.strictEqual(
        a,
        b,
        "Same Swift object should return identical JS wrapper",
    );
    assert.equal(a.currentValue, 42);

    a.release();
    exports.resetSharedSubject();
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testCacheInvalidationOnRelease(exports) {
    exports.resetSharedSubject();
    const first = exports.getSharedSubject();
    first.release();

    exports.resetSharedSubject();
    const second = exports.getSharedSubject();

    assert.notStrictEqual(
        first,
        second,
        "After release + reset, should get a different wrapper",
    );
    assert.equal(second.currentValue, 42);

    second.release();
    exports.resetSharedSubject();
}

/**
 * Verifies that repeated boundary crossings of the same Swift object don't leak
 * retain counts. Each cache hit triggers passRetained on the Swift side. Without
 * the balancing deinit(pointer) call on cache hit, each crossing leaks +1 retain
 * and the object is never deallocated.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testRetainLeakOnCacheHit(exports) {
    exports.resetRetainLeakDeinits();
    exports.resetRetainLeakSubject();

    const wrappers = [];
    for (let i = 0; i < 10; i++) {
        wrappers.push(exports.getRetainLeakSubject());
    }

    for (let i = 1; i < wrappers.length; i++) {
        assert.strictEqual(
            wrappers[0],
            wrappers[i],
            "All should be the same cached wrapper",
        );
    }

    wrappers[0].release();
    exports.resetRetainLeakSubject();

    assert.strictEqual(
        exports.getRetainLeakDeinits(),
        1,
        "Object should be deallocated after release + reset. " +
            "If deinits == 0, retain leak from unbalanced passRetained on cache hits.",
    );
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testArrayElementIdentity(exports) {
    exports.setupArrayPool(10);
    const arr1 = exports.getArrayPool();
    const arr2 = exports.getArrayPool();

    assert.equal(arr1.length, 10);
    assert.equal(arr2.length, 10);

    for (let i = 0; i < 10; i++) {
        assert.strictEqual(
            arr1[i],
            arr2[i],
            `Array element at index ${i} should be === across calls`,
        );
        assert.equal(arr1[i].tag, i);
    }

    for (const elem of arr1) {
        elem.release();
    }
    exports.clearArrayPool();
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testArrayElementMatchesSingleGetter(exports) {
    exports.setupArrayPool(5);
    const arr = exports.getArrayPool();
    const single = exports.getArrayPoolElement(2);

    assert.strictEqual(
        arr[2],
        single,
        "Array element and single getter should return the same wrapper",
    );
    assert.equal(single.tag, 2);

    for (const elem of arr) {
        elem.release();
    }
    exports.clearArrayPool();
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testArrayRetainLeak(exports) {
    exports.resetArrayPoolDeinits();
    exports.setupArrayPool(5);

    for (let round = 0; round < 10; round++) {
        exports.getArrayPool();
    }

    const arr = exports.getArrayPool();
    for (const elem of arr) {
        elem.release();
    }

    exports.clearArrayPool();

    assert.strictEqual(
        exports.getArrayPoolDeinits(),
        5,
        "All 5 pool objects should be deallocated after release + clear. " +
            "If deinits < 5, retain leak from unbalanced passRetained in array returns.",
    );
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testDifferentClassesDontCollide(exports) {
    const subject1 = new exports.IdentityTestSubject(1);
    const subject2 = new exports.IdentityTestSubject(2);

    assert.notStrictEqual(
        subject1,
        subject2,
        "Different instances should not be ===",
    );
    assert.equal(subject1.currentValue, 1);
    assert.equal(subject2.currentValue, 2);

    subject1.release();
    subject2.release();
}

// ---------- identityMode: .swift tests ----------

/**
 * Identity on re-export.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeIdentity(exports) {
    exports.resetSharedSwiftSubject();
    const a = exports.getSharedSwiftSubject();
    const b = exports.getSharedSwiftSubject();
    const c = exports.getSharedSwiftSubject();

    assert.strictEqual(a, b, "swift mode: same Swift object returns same wrapper");
    assert.strictEqual(b, c, "swift mode: identity is transitive across re-exports");
    assert.equal(a.currentValue, 42);
    assert.equal(typeof a.pointer, "number");

    a.release();
    exports.resetSharedSwiftSubject();
}

/**
 * (a') Method returning `self` preserves identity.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeSelfMethodIdentity(exports) {
    exports.resetSharedSwiftSubject();
    const a = exports.getSharedSwiftSubject();
    const viaSelf = a.self_();

    assert.strictEqual(
        a,
        viaSelf,
        "swift mode: `self_()` must return the same JS wrapper (identity preserved across method boundary)",
    );

    a.release();
    exports.resetSharedSwiftSubject();
}

/**
 * Explicit release frees the underlying Swift heap object.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeReleaseFreesHeapObject(exports) {
    exports.resetRetainLeakDeinitsSwift();
    exports.resetRetainLeakSubjectSwift();

    const obj = exports.getRetainLeakSubjectSwift();
    // Drop the only Swift-side strong reference so the sole remaining anchor
    // is Swift's retain on the heap object performed during the fresh-wrap path.
    exports.resetRetainLeakSubjectSwift();
    obj.release();

    assert.strictEqual(
        exports.getRetainLeakDeinitsSwift(),
        1,
        "swift mode: release must invoke Swift deinit exactly once (check bjs_<Class>_release_wrapper fires Unmanaged<AnyObject>.release)",
    );
}

/**
 * Double-release is idempotent. No crash, no over-release.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeDoubleReleaseIdempotent(exports) {
    exports.resetRetainLeakDeinitsSwift();
    exports.resetRetainLeakSubjectSwift();

    const obj = exports.getRetainLeakSubjectSwift();
    exports.resetRetainLeakSubjectSwift();

    obj.release();
    // Second release must be a no-op guarded by __swiftIdentityHasReleased.
    obj.release();
    obj.release();

    assert.strictEqual(
        exports.getRetainLeakDeinitsSwift(),
        1,
        "swift mode: double-release must not deinit twice",
    );
}

/**
 * Identity-table cleanup — the Swift-side Set<pointer> returns to size 0
 * after allocating N wrappers and releasing all of them, so it can't grow
 * unboundedly over a churn loop.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeIdentityTableCleanup(exports) {
    const POOL = 10;
    const first = [];
    for (let i = 0; i < POOL; i++) {
        first.push(new exports.SwiftChurnSubject(i));
    }
    const peakAfterFirst = exports.getSwiftIdentityTableSizeForChurn();
    assert.strictEqual(peakAfterFirst, POOL, `swift mode: identity table should hold ${POOL} entries; got ${peakAfterFirst}`);

    for (const obj of first) {
        obj.release();
    }
    const afterRelease = exports.getSwiftIdentityTableSizeForChurn();
    assert.strictEqual(afterRelease, 0, `swift mode: identity table should empty after release; got ${afterRelease}`);

    const second = [];
    for (let i = 0; i < POOL; i++) {
        second.push(new exports.SwiftChurnSubject(100 + i));
    }
    const peakAfterSecond = exports.getSwiftIdentityTableSizeForChurn();
    assert.strictEqual(peakAfterSecond, POOL, `swift mode: identity table should hold ${POOL} entries again; got ${peakAfterSecond}`);

    for (const obj of second) {
        obj.release();
    }
}

/**
 * Array of the same wrapper preserves cross-element identity.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeArrayCrossElementIdentity(exports) {
    const a = new exports.SwiftIdentityTestSubject(1);
    const b = new exports.SwiftIdentityTestSubject(2);

    const result = exports.makeSwiftIdentityArray(a, b);
    assert.equal(result.length, 3);

    assert.strictEqual(result[0], a, "swift mode: array element 0 === original a");
    assert.strictEqual(result[1], b, "swift mode: array element 1 === original b");
    assert.strictEqual(result[2], a, "swift mode: array element 2 === original a");
    assert.strictEqual(result[0], result[2], "swift mode: cross-element identity");

    a.release();
    b.release();
}

/**
 * GC survivability — wrapper survives forced GC because Swift holds a
 * strong JS ref via `swift.memory.retain`.
 *
 * Requires node to be launched with `--expose-gc`. `make unittest` does so
 * (see Makefile:22). Guarded so we don't fail in environments that don't.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeGcSurvivability(exports) {
    if (typeof globalThis.gc !== "function") {
        console.warn("Skipping swift-mode GC test — run with --expose-gc");
        return;
    }

    exports.resetSharedSwiftSubject();
    let obj = exports.getSharedSwiftSubject();
    const pointerBefore = obj.pointer;
    const weakProbe = new WeakRef(obj);

    // Drop the local reference and force GC twice with a microtask flush in
    // between (V8 sometimes needs two cycles to collect newly-unreferenced
    // objects).
    obj = null;
    globalThis.gc();
    // synchronous setImmediate-equivalent flush
    const flush = () =>
        new Promise((resolve) => {
            if (typeof setImmediate === "function") {
                setImmediate(resolve);
            } else {
                setTimeout(resolve, 0);
            }
        });
    // Note: we can't await here (caller is synchronous). For a sync harness,
    // run gc twice back-to-back — that's sufficient under V8's two-phase
    // collector for this test's purposes.
    globalThis.gc();

    // Re-fetch from Swift. The wrapper must still be === to whatever deref
    // yields (since Swift's retain on the JS ref keeps it alive).
    const again = exports.getSharedSwiftSubject();
    assert.strictEqual(
        again.pointer,
        pointerBefore,
        "swift mode: pointer must be stable across GC (Swift still retains the heap object)",
    );
    assert.strictEqual(
        weakProbe.deref(),
        again,
        "swift mode: wrapper survived GC — Swift retain kept it alive",
    );

    again.release();
    exports.resetSharedSwiftSubject();

    // Suppress "unused" warning for the async helper (kept around in case
    // future refactors make this test async).
    void flush;
}

/**
 * Optional identity — `.some(x)` returns the cached wrapper; `.none` → null.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeOptionalIdentity(exports) {
    exports.resetSharedSwiftSubject();
    const direct = exports.getSharedSwiftSubject();
    const viaOptional = exports.maybeSwiftSubject(true);

    assert.strictEqual(
        direct,
        viaOptional,
        "swift mode: Optional.some returns the same cached wrapper",
    );

    const absent = exports.maybeSwiftSubject(false);
    assert.strictEqual(absent, null, "swift mode: Optional.none returns null");

    direct.release();
    exports.resetSharedSwiftSubject();
}

/**
 * Released wrappers guard instance members (throws on use-after-release).
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testSwiftModeReleaseGuardsMembers(exports) {
    exports.resetSharedSwiftSubject();
    const obj = exports.getSharedSwiftSubject();
    obj.release();

    assert.throws(
        () => obj.currentValue,
        /released|Attempted to call a member/,
        "swift mode: use-after-release must throw",
    );

    exports.resetSharedSwiftSubject();
}

/**
 * Mode coexistence — .swift class and .pointer class in the same build,
 * disjoint tables.
 *
 * Swift-mode and pointer-mode classes coexist without cross-talk.
 *
 * The target's config default is "pointer", so IdentityTestSubject (no
 * per-class annotation) is a pointer-mode class. SwiftIdentityTestSubject is
 * explicitly .swift. Both must work simultaneously and their identity
 * machinery must not leak between classes.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testModeCoexistence(exports) {
    const ptr1 = new exports.IdentityTestSubject(10); // pointer-mode
    const ptr2 = new exports.IdentityTestSubject(20);
    const swift1 = new exports.SwiftIdentityTestSubject(30); // swift-mode
    const swift2 = new exports.SwiftIdentityTestSubject(40);

    assert.notStrictEqual(ptr1, swift1);
    assert.notStrictEqual(ptr2, swift2);
    assert.equal(ptr1.currentValue, 10);
    assert.equal(swift1.currentValue, 30);

    // Pointer-mode wrappers have `__swiftHeapObjectState` from SwiftHeapObject;
    // swift-mode standalone wrappers have `__swiftIdentityHasReleased` instead.
    assert.equal(typeof swift1.__swiftIdentityHasReleased, "boolean");
    assert.equal(typeof ptr1.__swiftIdentityHasReleased, "undefined");
    assert.equal(typeof ptr1.__swiftHeapObjectState, "object");
    assert.equal(typeof swift1.__swiftHeapObjectState, "undefined");

    ptr1.release();
    ptr2.release();
    swift1.release();
    swift2.release();
}
