// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

export interface ExportGraphNode {
    readonly id: string;
}

export interface ExportLabeled {
    readonly label: string;
}

export interface ExportLabeledNode extends ExportGraphNode {
    readonly label: string;
}

export interface ExportGraphBuilding {
    id: string;
    floors: number;
}
declare const bridgeTypeBrand: unique symbol;
export type BridgeType<T> = string & { readonly [bridgeTypeBrand]: (value: T) => void };
export const BridgeTypes: { readonly Bool: BridgeType<boolean>; readonly Int: BridgeType<number>; readonly Int8: BridgeType<number>; readonly UInt8: BridgeType<number>; readonly Int16: BridgeType<number>; readonly UInt16: BridgeType<number>; readonly Int32: BridgeType<number>; readonly UInt32: BridgeType<number>; readonly UInt: BridgeType<number>; readonly Int64: BridgeType<bigint>; readonly UInt64: BridgeType<bigint>; readonly Float: BridgeType<number>; readonly Double: BridgeType<number>; readonly String: BridgeType<string>; readonly JSValue: BridgeType<any>; readonly ExportGraphBuilding: BridgeType<ExportGraphBuilding>; readonly GraphRegistry: BridgeType<GraphRegistry>; readonly ExportLabeledNode: BridgeType<ExportLabeledNode>; };
/// Represents a Swift heap object like a class instance or an actor instance.
export interface SwiftHeapObject {
    /// Release the heap object.
    ///
    /// Note: Calling this method will release the heap object and it will no longer be accessible.
    release(): void;
}
export interface GraphRegistry extends SwiftHeapObject {
    register<T extends ExportGraphNode>(node: T, typeT: BridgeType<T>): T;
}
export type Exports = {
    storeGraphNode<T extends ExportGraphNode>(node: T, typeT: BridgeType<T>): T;
    storeLabeledGraphNode<T extends ExportGraphNode & ExportLabeled>(node: T, typeT: BridgeType<T>): T;
    pairGraphNodes<T extends ExportGraphNode, U>(a: T, b: U, typeT: BridgeType<T>, typeU: BridgeType<U>): U;
    loadGraphNode<T extends ExportGraphNode>(key: string, typeT: BridgeType<T>): T | null;
    storeAnyLabeled<T extends ExportGraphNode>(node: T, typeT: BridgeType<T>): T;
    GraphRegistry: {
        new(): GraphRegistry;
        pin<T extends ExportGraphNode>(node: T, typeT: BridgeType<T>): T;
    },
}
export type Imports = {
}
export function createInstantiator(options: {
    imports: Imports;
}, swift: any): Promise<{
    addImports: (importObject: WebAssembly.Imports) => void;
    setInstance: (instance: WebAssembly.Instance) => void;
    createExports: (instance: WebAssembly.Instance) => Exports;
}>;