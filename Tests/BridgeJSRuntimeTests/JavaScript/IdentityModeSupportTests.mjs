// @ts-check

import assert from "node:assert";

/**
 * @returns {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Imports["IdentityModeSupportImports"]}
 */
export function getImports(importsContext) {
    return {
        runJsIdentityModeSupportTests: () => {
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
    const identityMode = process.env.IDENTITY_MODE || undefined;

    testWrapperIdentity(exports, identityMode);
    testCacheInvalidationOnRelease(exports, identityMode);
    testDifferentClassesDontCollide(exports);
    testRetainLeakOnCacheHit(exports, identityMode);
    testArrayElementIdentity(exports, identityMode);
    testArrayElementMatchesSingleGetter(exports, identityMode);
    testArrayRetainLeak(exports, identityMode);
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 * @param {string | undefined} identityMode
 */
function testWrapperIdentity(exports, identityMode) {
    exports.resetSharedSubject();
    const a = exports.getSharedSubject();
    const b = exports.getSharedSubject();

    if (identityMode === "pointer") {
        assert.strictEqual(
            a,
            b,
            "In pointer mode, same Swift object should return identical JS wrapper",
        );
    } else {
        assert.notStrictEqual(
            a,
            b,
            "In default mode, same Swift object should return different JS wrappers",
        );
    }

    assert.equal(a.currentValue, 42);
    assert.equal(b.currentValue, 42);

    a.release();
    if (a !== b) {
        b.release();
    }
    exports.resetSharedSubject();
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 * @param {string | undefined} identityMode
 */
function testCacheInvalidationOnRelease(exports, identityMode) {
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
 * retain counts. In pointer mode, each cache hit triggers passRetained on the
 * Swift side. Without the balancing deinit(pointer) call on cache hit, each
 * crossing leaks +1 retain and the object is never deallocated.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 * @param {string | undefined} identityMode
 */
function testRetainLeakOnCacheHit(exports, identityMode) {
    if (identityMode !== "pointer") return;

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
 * Verifies that elements at the same index across repeated array returns are ===
 * in pointer mode. Without pointer mode, they should be different wrappers.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 * @param {string | undefined} identityMode
 */
function testArrayElementIdentity(exports, identityMode) {
    if (identityMode !== "pointer") return;

    exports.setupArrayPool(10);
    const arr1 = exports.getArrayPool();
    const arr2 = exports.getArrayPool();

    assert.equal(arr1.length, 10, "First array should have 10 elements");
    assert.equal(arr2.length, 10, "Second array should have 10 elements");

    for (let i = 0; i < 10; i++) {
        assert.strictEqual(
            arr1[i],
            arr2[i],
            `Array element at index ${i} should be === across calls in pointer mode`,
        );
        assert.equal(arr1[i].tag, i, `Element ${i} should have correct tag`);
    }

    for (const elem of arr1) {
        elem.release();
    }
    exports.clearArrayPool();
}

/**
 * Verifies that an array element is === to the same object returned via
 * a single-element getter.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 * @param {string | undefined} identityMode
 */
function testArrayElementMatchesSingleGetter(exports, identityMode) {
    if (identityMode !== "pointer") return;

    exports.setupArrayPool(5);
    const arr = exports.getArrayPool();
    const single = exports.getArrayPoolElement(2);

    assert.strictEqual(
        arr[2],
        single,
        "Array element and single getter should return the same wrapper in pointer mode",
    );
    assert.equal(single.tag, 2);

    for (const elem of arr) {
        elem.release();
    }
    exports.clearArrayPool();
}

/**
 * Verifies that returning an array of N objects M times doesn't leak retains.
 * After releasing all wrappers and clearing the pool, all objects should be
 * deallocated.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 * @param {string | undefined} identityMode
 */
function testArrayRetainLeak(exports, identityMode) {
    if (identityMode !== "pointer") return;

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
    const greeter = new exports.Greeter("IdentityTest");
    const subject = new exports.IdentityTestSubject(99);

    assert.notStrictEqual(
        greeter,
        subject,
        "Instances of different classes should never be ===",
    );
    assert.equal(greeter.name, "IdentityTest");
    assert.equal(subject.currentValue, 99);

    greeter.release();
    subject.release();
}
