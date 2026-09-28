// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

export const ExportModeValues: {
    readonly On: "on";
    readonly Off: "off";
};
export type ExportModeTag = typeof ExportModeValues[keyof typeof ExportModeValues];

export const ExportColorValues: {
    readonly Red: 0;
    readonly Green: 1;
};
export type ExportColorTag = typeof ExportColorValues[keyof typeof ExportColorValues];

export const ExportTaggedValues: {
    readonly Tag: {
        readonly Number: 0;
        readonly Text: 1;
    };
};

export type ExportTaggedTag =
  { tag: typeof ExportTaggedValues.Tag.Number; value: number } | { tag: typeof ExportTaggedValues.Tag.Text; value: string }

export const GenericFactoryValues: {
    readonly Primary: 0;
};
export type GenericFactoryTag = typeof GenericFactoryValues[keyof typeof GenericFactoryValues];

export interface ExportPoint {
    x: number;
    y: number;
}
export interface GenericPair {
    first<T>(value: T, typeT: BridgeType<T>): T;
    combine<T, t>(a: T, b: t, typeT: BridgeType<T>, typet: BridgeType<t>): T;
    maybe<T>(value: T, typeT: BridgeType<T>): T | null;
    dict<T>(value: T, typeT: BridgeType<T>): Record<string, T>;
}
declare const bridgeTypeBrand: unique symbol;
export type BridgeType<T> = string & { readonly [bridgeTypeBrand]: (value: T) => void };
export const BridgeTypes: { readonly Bool: BridgeType<boolean>; readonly Int: BridgeType<number>; readonly Int8: BridgeType<number>; readonly UInt8: BridgeType<number>; readonly Int16: BridgeType<number>; readonly UInt16: BridgeType<number>; readonly Int32: BridgeType<number>; readonly UInt32: BridgeType<number>; readonly UInt: BridgeType<number>; readonly Int64: BridgeType<bigint>; readonly UInt64: BridgeType<bigint>; readonly Float: BridgeType<number>; readonly Double: BridgeType<number>; readonly String: BridgeType<string>; readonly JSValue: BridgeType<any>; readonly ExportPoint: BridgeType<ExportPoint>; readonly ExportNamespace_Metadata: BridgeType<ExportNamespace.Metadata>; readonly GenericPair: BridgeType<GenericPair>; readonly ExportBox: BridgeType<ExportBox>; readonly GenericBox: BridgeType<GenericBox>; readonly ExportGenericNamespace_Handle: BridgeType<Handle>; readonly ExportNamespace_Level: BridgeType<ExportNamespace.LevelTag>; readonly ExportMode: BridgeType<ExportModeTag>; readonly ExportColor: BridgeType<ExportColorTag>; readonly ExportTagged: BridgeType<ExportTaggedTag>; readonly GenericFactory: BridgeType<GenericFactoryTag>; };
export type LevelObject = typeof ExportNamespace.LevelValues;

export type ExportModeObject = typeof ExportModeValues;

export type ExportColorObject = typeof ExportColorValues;

export type ExportTaggedObject = typeof ExportTaggedValues;

export type GenericFactoryObject = typeof GenericFactoryValues & {
    one<T>(value: T, typeT: BridgeType<T>): T;
};

export namespace ExportNamespace {
    const LevelValues: {
        readonly Low: 1;
        readonly High: 9;
    };
    type LevelTag = typeof LevelValues[keyof typeof LevelValues];
    export interface Metadata {
        label: string;
        count: number;
    }
}
/// Represents a Swift heap object like a class instance or an actor instance.
export interface SwiftHeapObject {
    /// Release the heap object.
    ///
    /// Note: Calling this method will release the heap object and it will no longer be accessible.
    release(): void;
}
export interface ExportBox extends SwiftHeapObject {
    get(): number;
    value: number;
}
export interface GenericBox extends SwiftHeapObject {
    wrap<T>(value: T, typeT: BridgeType<T>): T;
    combine<T, t>(a: T, b: t, typeT: BridgeType<T>, typet: BridgeType<t>): T;
    load<T>(key: string, typeT: BridgeType<T>): T | null;
}
export interface Handle extends SwiftHeapObject {
}
export type Exports = {
    genericExportIdentity<T>(value: T, typeT: BridgeType<T>): T;
    genericExportArray<T>(values: T[], typeT: BridgeType<T>): T[];
    genericExportOptional<T>(value: T | null, typeT: BridgeType<T>): T | null;
    genericExportDictionary<T>(values: Record<string, T>, typeT: BridgeType<T>): Record<string, T>;
    genericExportEcho<T>(value: T, tag: number, typeT: BridgeType<T>): T;
    genericExportStore<T>(key: string, value: T, typeT: BridgeType<T>): void;
    genericExportLoad<T>(key: string, typeT: BridgeType<T>): T | null;
    genericExportStructConcreteLeading<T>(v: T, p: ExportPoint, typeT: BridgeType<T>): T;
    genericExportStructAndScalar<T>(p: ExportPoint, tag: number, v: T, typeT: BridgeType<T>): T;
    genericExportPair<T>(a: T, b: T, typeT: BridgeType<T>): T;
    genericExportCombine<T, U>(a: T, b: U, typeT: BridgeType<T>, typeU: BridgeType<U>): T;
    genericExportCombineReturnU<T, U>(a: T, b: U, typeT: BridgeType<T>, typeU: BridgeType<U>): U;
    genericExportCaseDistinct<T, t>(a: T, b: t, typeT: BridgeType<T>, typet: BridgeType<t>): T;
    ExportMode: ExportModeObject
    ExportColor: ExportColorObject
    ExportTagged: ExportTaggedObject
    GenericFactory: GenericFactoryObject
    ExportBox: {
        new(value: number): ExportBox;
    },
    ExportGenericNamespace: {
        Handle: {
            new(): Handle;
        },
    },
    ExportNamespace: {
        Level: LevelObject
    },
    GenericBox: {
        new(): GenericBox;
        makeArray<T>(value: T, typeT: BridgeType<T>): T[];
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