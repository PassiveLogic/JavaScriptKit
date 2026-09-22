// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

export interface ExportNode {
    readonly id: string;
}

export const GenericFactoryValues: {
    readonly Primary: 0;
};
export type GenericFactoryTag = typeof GenericFactoryValues[keyof typeof GenericFactoryValues];

export interface ExportPoint {
    x: number;
    y: number;
}
export interface GenericPair {
    summarize<T>(values: T[], typeT: BridgeType<T>): ExportPoint;
    map<T, U>(values: T[], transform: (arg0: T, arg1: number) => U, typeT: BridgeType<T>, typeU: BridgeType<U>): U[];
}
export interface ExportGraphBuilding {
    id: string;
    floors: number;
}
declare const bridgeTypeBrand: unique symbol;
export type BridgeType<T> = string & { readonly [bridgeTypeBrand]: (value: T) => T };
export const BridgeTypes: { readonly Bool: BridgeType<boolean>; readonly Int: BridgeType<number>; readonly Int8: BridgeType<number>; readonly UInt8: BridgeType<number>; readonly Int16: BridgeType<number>; readonly UInt16: BridgeType<number>; readonly Int32: BridgeType<number>; readonly UInt32: BridgeType<number>; readonly UInt: BridgeType<number>; readonly Int64: BridgeType<bigint>; readonly UInt64: BridgeType<bigint>; readonly Float: BridgeType<number>; readonly Double: BridgeType<number>; readonly String: BridgeType<string>; readonly JSValue: BridgeType<any>; readonly ExportPoint: BridgeType<ExportPoint>; readonly GenericPair: BridgeType<GenericPair>; readonly ExportGraphBuilding: BridgeType<ExportGraphBuilding>; readonly GenericBox: BridgeType<GenericBox>; readonly GenericFactory: BridgeType<GenericFactoryTag>; readonly ExportGraphNode: BridgeType<ExportNode>; };
export type GenericFactoryObject = typeof GenericFactoryValues & {
    one<T>(value: T, typeT: BridgeType<T>): T;
};

/// Represents a Swift heap object like a class instance or an actor instance.
export interface SwiftHeapObject {
    /// Release the heap object.
    ///
    /// Note: Calling this method will release the heap object and it will no longer be accessible.
    release(): void;
}
export interface GenericBox extends SwiftHeapObject {
    wrap<T>(value: T, typeT: BridgeType<T>): T;
}
export type Exports = {
    genericExportIdentity<T>(value: T, typeT: BridgeType<T>): T;
    genericExportContainers<T>(values: T[], optional: T | null, dictionary: Record<string, T>, typeT: BridgeType<T>): Record<string, T>;
    genericExportTransform<T, U>(value: T, transform: (arg0: T) => U, typeT: BridgeType<T>, typeU: BridgeType<U>): U;
    genericExportTransformAsync<T, U>(value: T, transform: (arg0: T) => Promise<U>, typeT: BridgeType<T>, typeU: BridgeType<U>): Promise<U>;
    genericExportLoad<T>(key: string, typeT: BridgeType<T>): T | null;
    genericExportStructAndScalar<T>(p: ExportPoint, tag: number, v: T, typeT: BridgeType<T>): T;
    genericExportCaseDistinct<T, t>(a: T, b: t, typeT: BridgeType<T>, typet: BridgeType<t>): T;
    storeGraphNode<T extends ExportNode>(node: T, typeT: BridgeType<T>): T;
    GenericFactory: GenericFactoryObject
    GenericBox: {
        new(): GenericBox;
        produce<T>(body: () => T, typeT: BridgeType<T>): T;
    },
    GenericNamespace: {
        make<T>(value: T, typeT: BridgeType<T>): T;
    },
    GenericPair: {
        init(): GenericPair;
        wrap<T>(value: T, typeT: BridgeType<T>): T[];
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