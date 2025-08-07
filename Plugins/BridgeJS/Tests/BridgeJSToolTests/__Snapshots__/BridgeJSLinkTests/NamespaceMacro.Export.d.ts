// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

export {};

declare global {
    namespace __Swift {
        namespace Foundation {
            namespace UUID {
                function create(): string;
                function validate(uuid: string): boolean;
            }
        }
    }
}

export type Exports = {
    create(): string;
    validate(uuid: string): boolean;
    plainFunction(): string;
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