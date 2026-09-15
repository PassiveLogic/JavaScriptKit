// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

export const PublicChoiceValues: {
    readonly First: 0;
    readonly Second: 1;
};
export type PublicChoiceTag = typeof PublicChoiceValues[keyof typeof PublicChoiceValues];

export type PublicChoiceObject = typeof PublicChoiceValues;

/// Represents a Swift heap object like a class instance or an actor instance.
export interface SwiftHeapObject {
    /// Release the heap object.
    ///
    /// Note: Calling this method will release the heap object and it will no longer be accessible.
    release(): void;
}
export interface PublicBox extends SwiftHeapObject {
    copy(): PublicBox;
}
export type Exports = {
    renamedChoice(value: PublicChoiceTag): PublicChoiceTag;
    PublicChoice: PublicChoiceObject
    PublicBox: {
        new(): PublicBox;
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