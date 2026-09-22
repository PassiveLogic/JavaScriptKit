// @ts-check

import assert from 'node:assert';
import { BridgeTypes, GenericRTOutcomeValues } from '../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.js';

/** @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports */
export async function runExportGenericAsyncTests(exports) {
    let startFirst, startSecond, finishFirst, finishSecond;
    const firstStarted = new Promise(resolve => { startFirst = resolve; });
    const secondStarted = new Promise(resolve => { startSecond = resolve; });
    const first = exports.exportGenericAsyncTransform(21, value => new Promise(resolve => {
        finishFirst = () => resolve(String(value * 2));
        startFirst();
    }), BridgeTypes.Int, BridgeTypes.String);
    const second = exports.exportGenericAsyncTransform("abc", value => new Promise(resolve => {
        finishSecond = () => resolve({ x: value.length, y: 9 });
        startSecond();
    }), BridgeTypes.String, BridgeTypes.ExportGenericPoint);
    await Promise.all([firstStarted, secondStarted]);
    finishSecond();
    assert.deepEqual(await second, { x: 3, y: 9 });
    finishFirst();
    assert.equal(await first, "42");
    await assert.rejects(
        exports.exportGenericAsyncTransform(1, async () => { throw new Error("async callback failed"); }, BridgeTypes.Int, BridgeTypes.String),
        /async callback failed/
    );
    await assert.rejects(
        exports.exportGenericAsyncTransform(1, () => { throw new Error("synchronous callback failed"); }, BridgeTypes.Int, BridgeTypes.String),
        /synchronous callback failed/
    );
    assert.equal(
        await exports.exportGenericAsyncTransform(5, async value => exports.exportGenericAsyncTransform(
            "inner", async text => `${text}:${value}`, BridgeTypes.String, BridgeTypes.String
        ), BridgeTypes.Int, BridgeTypes.String),
        "inner:5"
    );
    const pair = exports.ExportGenericMethodPair.init();
    assert.deepEqual(await pair.mapAsync([1, 2], async value => `item-${value}`, BridgeTypes.Int, BridgeTypes.String), ["item-1", "item-2"]);
    const methodBox = new exports.ExportGenericMethodBox();
    methodBox.storeAsync(21, async value => String(value * 2), BridgeTypes.Int, BridgeTypes.String);
    assert.equal(await methodBox.run(BridgeTypes.String), "42");
    assert.equal(await methodBox.run(BridgeTypes.Int), null);
    assert.equal(await methodBox.run(BridgeTypes.String), "42");
    methodBox.clear();
    assert.equal(await methodBox.run(BridgeTypes.String), null);
    methodBox.release();
}

/** @param {import('../../../.build/plugins/PackageToJS/outputs/PackageTests/bridge-js.d.ts').Exports} exports */
export function runExportGenericTests(exports) {
    assert.equal(exports.exportGenericIdentity(42, BridgeTypes.Int), 42);
    assert.equal(exports.exportGenericIdentity(undefined, BridgeTypes.JSValue), undefined);
    assert.equal(exports.exportGenericIdentity(2, BridgeTypes.GenericRTColor), 2);
    assert.equal(exports.exportGenericIdentity("dark", BridgeTypes.GenericRTMode), "dark");

    const outcome = { tag: GenericRTOutcomeValues.Tag.Ok, code: 42 };
    assert.deepEqual(exports.exportGenericIdentity(outcome, BridgeTypes.GenericRTOutcome), outcome);

    assert.deepEqual(exports.exportGenericArrayIdentity([1, 2, 3], BridgeTypes.Int), [1, 2, 3]);
    assert.deepEqual(exports.exportGenericArrayIdentity([], BridgeTypes.Int), []);
    assert.equal(exports.exportGenericOptionalIdentity(7, BridgeTypes.Int), 7);
    assert.equal(exports.exportGenericOptionalIdentity(null, BridgeTypes.Int), null);
    assert.deepEqual(exports.exportGenericDictIdentity({ x: 1, y: 2 }, BridgeTypes.Int), { x: 1, y: 2 });

    assert.equal(exports.exportGenericCount([1, 2], "tag", true, false, BridgeTypes.Int, BridgeTypes.String, BridgeTypes.Bool), 2n);
    assert.throws(
        () => exports.exportGenericCount([1], "tag", true, true, BridgeTypes.Int, BridgeTypes.String, BridgeTypes.Bool),
        /count failed/
    );
    assert.equal(exports.exportGenericCount(["a"], 1, false, false, BridgeTypes.String, BridgeTypes.Int, BridgeTypes.Bool), 1n);
    assert.equal(exports.exportGenericOptionalCount([], BridgeTypes.Int), null);
    assert.equal(exports.exportGenericOptionalCount(["a", "b"], BridgeTypes.String), 2);
    assert.deepEqual(
        exports.exportGenericTransform("abc", value => ({ x: value.length, y: 9 }), BridgeTypes.String, BridgeTypes.ExportGenericPoint),
        { x: 3, y: 9 }
    );
    assert.throws(
        () => exports.exportGenericTransform({ x: 1, y: 2 }, () => { throw new Error("callback failed"); }, BridgeTypes.ExportGenericPoint, BridgeTypes.String),
        /callback failed/
    );
    assert.equal(exports.exportGenericTransform(21, value => value * 2, BridgeTypes.Int, BridgeTypes.Int), 42);
    assert.equal(
        exports.exportGenericTransform(5, value => exports.exportGenericTransform(
            "inner", text => `${text}:${value}`, BridgeTypes.String, BridgeTypes.String
        ), BridgeTypes.Int, BridgeTypes.String),
        "inner:5"
    );
    assert.equal(exports.exportGenericSelect([1, 2, 3], values => values[1], BridgeTypes.Int), 2);
    assert.equal(exports.exportGenericSelect([], () => null, BridgeTypes.String), null);
    assert.equal(exports.ExportGenericMethodBox.produce(() => "produced", BridgeTypes.String), "produced");

    const wrappedStruct = exports.exportGenericWrapPointAndTag({ x: 5, y: 6 }, 8, { x: 7, y: 8 }, BridgeTypes.ExportGenericPoint);
    assert.equal(wrappedStruct.x, 7);
    assert.equal(wrappedStruct.y, 8);
    assert.equal(exports.lastWrappedPointX(), 5);
    assert.equal(exports.lastWrappedPointY(), 6);
    assert.equal(exports.lastTag(), 8);

    const box = new exports.ExportGenericMethodBox();
    box.value = 123;
    let callbackBox;
    const transformedBox = exports.exportGenericTransform(box, value => {
        assert.equal(value.value, 123);
        callbackBox = value;
        return value;
    }, BridgeTypes.ExportGenericMethodBox, BridgeTypes.ExportGenericMethodBox);
    assert.equal(transformedBox.value, 123);
    transformedBox.release();
    callbackBox.release();
    box.release();

    const methodBox = new exports.ExportGenericMethodBox();
    const otherMethodBox = new exports.ExportGenericMethodBox();
    methodBox.store(21, value => String(value * 2), BridgeTypes.Int, BridgeTypes.String);
    otherMethodBox.store("abc", value => ({ x: value.length, y: 5 }), BridgeTypes.String, BridgeTypes.ExportGenericPoint);
    assert.equal(methodBox.invoke(BridgeTypes.String), "42");
    assert.deepEqual(otherMethodBox.invoke(BridgeTypes.ExportGenericPoint), { x: 3, y: 5 });
    assert.equal(methodBox.invoke(BridgeTypes.String), "42");
    methodBox.store("failure", () => { throw new Error("stored callback failed"); }, BridgeTypes.String, BridgeTypes.Int);
    assert.throws(() => methodBox.invoke(BridgeTypes.Int), /stored callback failed/);
    methodBox.store(7, value => value + 1, BridgeTypes.Int, BridgeTypes.Int);
    assert.equal(methodBox.invoke(BridgeTypes.Int), 8);
    methodBox.clear();
    assert.equal(methodBox.invoke(BridgeTypes.Int), null);
    otherMethodBox.release();
    methodBox.release();

    const methodPair = exports.ExportGenericMethodPair.init();
    assert.deepEqual(methodPair.map([1, 2], (value, index) => `${index}:${value}`, BridgeTypes.Int, BridgeTypes.String), ["0:1", "1:2"]);
    assert.deepEqual(methodPair.summary(["a", "b"], false, BridgeTypes.String), { x: 2, y: 4 });
    assert.throws(() => methodPair.summary([1], true, BridgeTypes.Int), /summary failed/);
    assert.deepEqual(methodPair.summary([1, 2, 3], false, BridgeTypes.Int), { x: 3, y: 6 });
    assert.deepEqual(exports.ExportGenericMethodPair.wrap(3, BridgeTypes.Int), [3]);

    assert.equal(exports.ExportGenericMethodFactory.one(11, BridgeTypes.Int), 11);

    assert.equal(exports.ExportGenericMethodNamespace.make(13, BridgeTypes.Int), 13);

    assert.throws(
        () => exports.exportGenericIdentity(1, "NotARealToken"),
        TypeError
    );
    assert.equal(exports.exportGenericIdentity(7, BridgeTypes.Int), 7);
    let pointRead = false;
    assert.throws(
        () => exports.exportGenericWrapPointAndTag({ get x() { pointRead = true; return 1; }, y: 2 }, 3, 4, "NotARealToken"),
        TypeError
    );
    assert.equal(pointRead, false);
    assert.equal(exports.exportGenericWrapPointAndTag({ x: 9, y: 10 }, 11, 12, BridgeTypes.Int), 12);
    assert.equal(exports.lastWrappedPointX(), 9);
    assert.equal(exports.lastWrappedPointY(), 10);
    assert.equal(exports.lastTag(), 11);

    const jsNode = { id: "javascript" };
    assert.equal(exports.exportGenericStoreNode(jsNode, BridgeTypes.ExportGenericGraphNode), jsNode);
    assert.equal(exports.lastStoredNodeID(), "javascript");

    exports.exportGenericSaveNode(
        "vault",
        { id: "vault", region: "north" },
        BridgeTypes.ExportGenericCampus
    );
    const loadedNode = exports.exportGenericLoadNode(
        "vault",
        BridgeTypes.ExportGenericCampus
    );
    assert.equal(loadedNode.id, "vault");
    assert.equal(loadedNode.region, "north");
    assert.equal(
        exports.exportGenericLoadNode("missing", BridgeTypes.ExportGenericCampus),
        null
    );

    assert.throws(
        () => exports.exportGenericStoreNode(5, BridgeTypes.Int),
        TypeError
    );
    const campus = exports.exportGenericStoreNode(
        { id: "campus-1", region: "north" },
        BridgeTypes.ExportGenericCampus
    );
    assert.equal(campus.region, "north");
    assert.equal(exports.lastStoredNodeID(), "campus-1");
}
