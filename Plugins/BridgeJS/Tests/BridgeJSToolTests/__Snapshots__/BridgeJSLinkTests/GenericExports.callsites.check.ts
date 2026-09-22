import type { BridgeTypes as ExportTokens, Exports as GenericExports } from "./GenericExports.d.ts";

declare const exports: GenericExports;
declare const BridgeTypes: typeof ExportTokens;

const n: number = exports.genericExportIdentity(42, BridgeTypes.Int);
const s: string = exports.genericExportIdentity("hi", BridgeTypes.String);
const input = { x: 1, y: 2, label: "not part of ExportPoint" };
const p = exports.genericExportIdentity(input, BridgeTypes.ExportPoint);
const px: number = p.x;
// @ts-expect-error
exports.genericExportIdentity<typeof input>(input, BridgeTypes.ExportPoint);
const transformed: string = exports.genericExportTransform(42, value => value.toString(), BridgeTypes.Int, BridgeTypes.String);
const produced: string = exports.GenericBox.produce(() => "value", BridgeTypes.String);

// @ts-expect-error
exports.genericExportTransform(42, value => value + 1, BridgeTypes.Int, BridgeTypes.String);

// @ts-expect-error
exports.genericExportIdentity(42, "Int");

// @ts-expect-error
exports.genericExportIdentity("hi", BridgeTypes.Int);

const b = exports.storeGraphNode({ id: "b", floors: 3 }, BridgeTypes.ExportGraphBuilding);
const bid: string = b.id;

// @ts-expect-error
exports.storeGraphNode(5, BridgeTypes.Int);

export { n, s, px, bid, transformed, produced };
