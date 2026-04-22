// @ts-check

// Config-default identity mode test harness (Task 5 Part B).
//
// Parallel of Tests/BridgeJSIdentityTests/JavaScript/IdentityModeTests.mjs,
// but every @JS class in the companion Swift file has NO per-class
// identityMode argument — the `"swift"` mode is inherited from the target's
// bridge-js.config.json. We reuse the same assertions as Part A minus the
// mode-coexistence scenario (only one mode is active in this target).

import assert from "node:assert";

/**
 * @returns {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Imports["SwiftIdentityModeTestImports"]}
 */
export function getImports(importsContext) {
    return {
        runJsSwiftIdentityModeTests: () => {
            const exports = importsContext.getExports();
            if (!exports) {
                throw new Error("No exports!?");
            }
            runSwiftIdentityModeTests(exports);
        },
    };
}

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function runSwiftIdentityModeTests(exports) {
    testConfigSwiftIdentity(exports);
    testConfigSwiftSelfMethodIdentity(exports);
    testConfigSwiftReleaseFreesHeapObject(exports);
    testConfigSwiftDoubleReleaseIdempotent(exports);
    testConfigSwiftIdRecycling(exports);
    testConfigSwiftArrayCrossElementIdentity(exports);
    testConfigSwiftGcSurvivability(exports);
    testConfigSwiftOptionalIdentity(exports);
    testConfigSwiftReleaseGuardsMembers(exports);
}

/**
 * (a) Identity on re-export (config-default swift mode).
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftIdentity(exports) {
    exports.resetConfigSwiftSubject();
    const a = exports.getConfigSwiftSubject();
    const b = exports.getConfigSwiftSubject();
    const c = exports.getConfigSwiftSubject();

    assert.strictEqual(a, b, "config-swift: re-export identity");
    assert.strictEqual(b, c, "config-swift: re-export identity transitive");
    assert.equal(a.currentValue, 7);
    assert.equal(
        typeof a.__swiftIdentityId,
        "number",
        "config-default `swift` mode should emit __swiftIdentityId — verify BridgeJSLink.shouldUseSwiftIdentityCache picks up the config",
    );

    a.release();
    exports.resetConfigSwiftSubject();
}

/**
 * (a') Method returning self preserves identity.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftSelfMethodIdentity(exports) {
    exports.resetConfigSwiftSubject();
    const a = exports.getConfigSwiftSubject();
    const viaSelf = a.self_();
    assert.strictEqual(a, viaSelf, "config-swift: self_() preserves identity");

    a.release();
    exports.resetConfigSwiftSubject();
}

/**
 * (b) Explicit release frees underlying Swift heap object.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftReleaseFreesHeapObject(exports) {
    exports.resetConfigSwiftRetainLeakDeinits();
    exports.resetConfigSwiftRetainLeakSubject();

    const obj = exports.getConfigSwiftRetainLeakSubject();
    exports.resetConfigSwiftRetainLeakSubject();
    obj.release();

    assert.strictEqual(
        exports.getConfigSwiftRetainLeakDeinits(),
        1,
        "config-swift: release must deinit exactly once",
    );
}

/**
 * (c) Double-release is idempotent.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftDoubleReleaseIdempotent(exports) {
    exports.resetConfigSwiftRetainLeakDeinits();
    exports.resetConfigSwiftRetainLeakSubject();

    const obj = exports.getConfigSwiftRetainLeakSubject();
    exports.resetConfigSwiftRetainLeakSubject();

    obj.release();
    obj.release();
    obj.release();

    assert.strictEqual(
        exports.getConfigSwiftRetainLeakDeinits(),
        1,
        "config-swift: double-release must not deinit twice",
    );
}

/**
 * (d) Id recycling — nextId does not grow past the pool size.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftIdRecycling(exports) {
    if (typeof exports.getConfigSwiftNextIdForChurn !== "function") {
        return; // ENABLE_TEST_INTROSPECTION not defined
    }

    const POOL = 10;
    const first = [];
    for (let i = 0; i < POOL; i++) {
        first.push(new exports.ConfigSwiftChurnSubject(i));
    }
    const peakAfterFirst = exports.getConfigSwiftNextIdForChurn();

    for (const o of first) o.release();

    const second = [];
    for (let i = 0; i < POOL; i++) {
        second.push(new exports.ConfigSwiftChurnSubject(100 + i));
    }
    const peakAfterSecond = exports.getConfigSwiftNextIdForChurn();

    assert.strictEqual(
        peakAfterSecond,
        peakAfterFirst,
        `config-swift: id recycling failed — nextId grew from ${peakAfterFirst} to ${peakAfterSecond}`,
    );

    for (const o of second) o.release();
}

/**
 * (e) Array returns preserve cross-element identity.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftArrayCrossElementIdentity(exports) {
    const a = new exports.ConfigSwiftSubject(1);
    const b = new exports.ConfigSwiftSubject(2);

    const result = exports.makeConfigSwiftArray(a, b);
    assert.equal(result.length, 3);

    assert.strictEqual(result[0], a);
    assert.strictEqual(result[1], b);
    assert.strictEqual(result[2], a);
    assert.strictEqual(result[0], result[2], "config-swift: cross-element identity");

    a.release();
    b.release();
}

/**
 * (f) GC survivability.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftGcSurvivability(exports) {
    if (typeof globalThis.gc !== "function") {
        console.warn("Skipping config-swift GC test — run with --expose-gc");
        return;
    }

    exports.resetConfigSwiftSubject();
    let obj = exports.getConfigSwiftSubject();
    const idBefore = obj.__swiftIdentityId;
    const weakProbe = new WeakRef(obj);

    obj = null;
    globalThis.gc();
    globalThis.gc();

    const again = exports.getConfigSwiftSubject();
    assert.strictEqual(
        again.__swiftIdentityId,
        idBefore,
        "config-swift: id stable across GC",
    );
    assert.strictEqual(
        weakProbe.deref(),
        again,
        "config-swift: wrapper survived GC — Swift retain kept it alive",
    );

    again.release();
    exports.resetConfigSwiftSubject();
}

/**
 * (h) Optional identity.
 *
 * v1 LIMITATION (see DECISIONS.md D16): `.some(x)` returns a fresh wrapper —
 * the scalar-Optional path bypasses the identity cache. Lifecycle is still
 * correct.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftOptionalIdentity(exports) {
    exports.resetConfigSwiftSubject();
    const direct = exports.getConfigSwiftSubject();
    const viaOptional = exports.maybeConfigSwiftSubject(true);

    // v1: only verify the call works (see D16 — identity not preserved for Optional).
    assert.ok(viaOptional != null, "config-swift: Optional.some returns a wrapper");
    assert.equal(
        viaOptional.currentValue,
        direct.currentValue,
        "config-swift: Optional.some wrapper observes the same value",
    );

    const absent = exports.maybeConfigSwiftSubject(false);
    assert.strictEqual(absent, null, "config-swift: Optional.none returns null");

    viaOptional.release();
    direct.release();
    exports.resetConfigSwiftSubject();
}

/**
 * Released wrappers guard instance members.
 *
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
function testConfigSwiftReleaseGuardsMembers(exports) {
    exports.resetConfigSwiftSubject();
    const obj = exports.getConfigSwiftSubject();
    obj.release();

    assert.throws(
        () => obj.currentValue,
        /released|Attempted to call a member/,
        "config-swift: use-after-release must throw",
    );

    exports.resetConfigSwiftSubject();
}
