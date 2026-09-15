// @ts-check

import assert from "node:assert";

/**
 * @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports
 */
export function runJSNameTests(exports) {
    assert.equal(exports.renamedEcho("hi"), "echo: hi");
    assert.ok(!("jsNameEcho" in exports));
    assert.equal(exports.greetName("John"), "Hello, John!");
    assert.equal(exports.greetCount(3), "Hello, 3 people!");
    assert.ok(!("JSNameRenamedClass" in exports));

    /** @type {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').NamedCounter} */
    const counter = new exports.NamedCounter(21);
    assert.equal(counter.doubled(), 42);
    assert.equal(counter.current, 21);
    counter.current = 5;
    assert.equal(counter.doubled(), 10);
    const made = exports.NamedCounter.makeWithValue(7);
    assert.equal(made.current, 7);
    assert.ok(made instanceof exports.NamedCounter);

    /** @type {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').CounterSnapshot} */
    const snapshot = exports.CounterSnapshot.init(9);
    assert.equal(snapshot.value, 9);

    /** @type {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').CounterTransform} */
    const transformer = {
        apply(value) { return value * 2; },
    };
    assert.equal(exports.Renaming.CounterTools.apply(transformer, 6), 12);

    made.release();
    counter.release();
}
