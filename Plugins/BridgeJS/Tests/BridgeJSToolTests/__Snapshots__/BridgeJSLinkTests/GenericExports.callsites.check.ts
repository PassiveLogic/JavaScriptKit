// Call-site typing fixtures for generic exports. Compiled by `check:bridgejs-dts`
// alongside the generated declarations; the `@ts-expect-error` lines assert
// that TypeScript rejects the call, so a regression in the declarations (for
// example a brand that lets raw strings through) fails the check.
import type { BridgeTypes as ExportTokens, Exports as GenericExports } from "./GenericExports.d.ts";
import type {
    BridgeTypes as ConstrainedTokens,
    Exports as ConstrainedExports,
} from "./GenericConstrainedExports.d.ts";

declare const exports: GenericExports;
declare const BridgeTypes: typeof ExportTokens;
declare const constrained: ConstrainedExports;
declare const ConstrainedBridgeTypes: typeof ConstrainedTokens;

// T is inferred from the token and checked against the value.
const n: number = exports.genericExportIdentity(42, BridgeTypes.Int);
const s: string = exports.genericExportIdentity("hi", BridgeTypes.String);
const p = exports.genericExportIdentity({ x: 1, y: 2 }, BridgeTypes.ExportPoint);
const px: number = p.x;

// A raw string is not a token: the brand is required, not a phantom optional.
// @ts-expect-error
exports.genericExportIdentity(42, "Int");

// Token and value must agree.
// @ts-expect-error
exports.genericExportIdentity("hi", BridgeTypes.Int);

// Constrained generics: the token's type must satisfy the constraint.
const b = constrained.storeGraphNode({ id: "b", floors: 3 }, ConstrainedBridgeTypes.ExportGraphBuilding);
const bid: string = b.id;

// @ts-expect-error
constrained.storeGraphNode(5, ConstrainedBridgeTypes.Int);

export { n, s, px, bid };
