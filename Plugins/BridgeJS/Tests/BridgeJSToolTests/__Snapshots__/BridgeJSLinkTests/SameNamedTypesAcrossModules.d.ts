// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

export const ValidationValues: {
    readonly Tag: {
        readonly Valid: 0;
        readonly Invalid: 1;
    };
};

export type ValidationTag =
  { tag: typeof ValidationValues.Tag.Valid } | { tag: typeof ValidationValues.Tag.Invalid; reason: string }

export interface Point {
    x: number;
    y: number;
}
export type ValidationObject = typeof ValidationValues;

export namespace Inner {
    export interface Point {
        x: number;
        y: number;
    }
}
export type Exports = {
    run(point: Point, validation: ValidationTag): Point;
    Validation: ValidationObject
    Inner: {
        run(): void;
        Point: {
            init(x: number, y: number): Point;
        },
    },
    Point: {
        init(x: number, y: number): Point;
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