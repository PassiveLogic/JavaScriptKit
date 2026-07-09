// bridge-js: skip
// swift-format-ignore-file
// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.Theme) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS(callbackValue, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.Theme) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.Theme) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.Theme) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.Theme.bridgeJSLiftParameter(param0Bytes, param0Length))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.Theme) -> Bool {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb(callbackValue, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            return Bool.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.Theme) -> Bool {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.Theme) -> Bool) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_Sb(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.Theme) -> Bool>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.Theme.bridgeJSLiftParameter(param0Bytes, param0Length))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS_extern(_ callback: Int32, _ param0: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS_extern(_ callback: Int32, _ param0: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS(_ callback: Int32, _ param0: UnsafeMutableRawPointer) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.Greeter) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Pointer = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS(callbackValue, param0Pointer)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.Greeter) -> String {
    public init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.Greeter) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.Greeter) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.APIResult) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0CaseId = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS(callbackValue, param0CaseId)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.APIResult) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.APIResult) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.APIResult) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.APIResult.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.Direction) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS(callbackValue, param0Value)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.Direction) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.Direction) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.Direction) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.Direction.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.Direction) -> Bool {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb(callbackValue, param0Value)
            return Bool.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.Direction) -> Bool {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.Direction) -> Bool) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_Sb(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.Direction) -> Bool>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.Direction.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.HttpStatus) -> Int {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si(callbackValue, param0Value)
            return Int.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.HttpStatus) -> Int {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.HttpStatus) -> Int) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.HttpStatus) -> Int>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.HttpStatus.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP {
    static func bridgeJSLift(_ callbackId: Int32) -> (any BridgeJSRuntimeTests.DataProcessor) -> any BridgeJSRuntimeTests.DataProcessor {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0ObjectId = (param0 as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP(callbackValue, param0ObjectId)
            return AnyDataProcessor.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (any BridgeJSRuntimeTests.DataProcessor) -> any BridgeJSRuntimeTests.DataProcessor {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (any BridgeJSRuntimeTests.DataProcessor) -> any BridgeJSRuntimeTests.DataProcessor) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(any BridgeJSRuntimeTests.DataProcessor) -> any BridgeJSRuntimeTests.DataProcessor>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(AnyDataProcessor.bridgeJSLiftParameter(param0))
    return (result as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (any BridgeJSRuntimeTests.DataProcessor) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0ObjectId = (param0 as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS(callbackValue, param0ObjectId)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (any BridgeJSRuntimeTests.DataProcessor) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (any BridgeJSRuntimeTests.DataProcessor) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(any BridgeJSRuntimeTests.DataProcessor) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(AnyDataProcessor.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC {
    static func bridgeJSLift(_ callbackId: Int32) -> (JSObject) -> JSObject {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC(callbackValue, param0Value)
            return JSObject.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (JSObject) -> JSObject {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (JSObject) -> JSObject) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTests8JSObjectC_8JSObjectC(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(JSObject) -> JSObject>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(JSObject.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si_extern(_ callback: Int32, _ param0: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si_extern(_ callback: Int32, _ param0: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si(_ callback: Int32, _ param0: UnsafeMutableRawPointer) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si {
    static func bridgeJSLift(_ callbackId: Int32) -> (BridgeJSRuntimeTests.Polygon) -> Int {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Pointer = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si(callbackValue, param0Pointer)
            return Int.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (BridgeJSRuntimeTests.Polygon) -> Int {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (BridgeJSRuntimeTests.Polygon) -> Int) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsAl28BridgeJSRuntimeTests_Polygon_Si(_ boxPtr: UnsafeMutableRawPointer, _ param0: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(BridgeJSRuntimeTests.Polygon) -> Int>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsKSS_Sb {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) throws(JSException) -> Bool {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: String) throws(JSException) -> Bool in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb(callbackValue, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            if let error = _swift_js_take_exception() {
                throw error
            }
            return Bool.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) throws(JSException) -> Bool {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) throws(JSException) -> Bool) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Sb(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) throws(JSException) -> Bool>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    do {
        let result = try closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
        return result.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsKSS_Si {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) throws(JSException) -> Int {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: String) throws(JSException) -> Int in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si(callbackValue, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            if let error = _swift_js_take_exception() {
                throw error
            }
            return Int.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) throws(JSException) -> Int {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) throws(JSException) -> Int) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsKSS_Si(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) throws(JSException) -> Int>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    do {
        let result = try closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
        return result.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> UnsafeMutableRawPointer
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> UnsafeMutableRawPointer {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) -> BridgeJSRuntimeTests.Greeter {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC(callbackValue, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            return BridgeJSRuntimeTests.Greeter.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) -> BridgeJSRuntimeTests.Greeter {
    public init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) -> BridgeJSRuntimeTests.Greeter) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_28BridgeJSRuntimeTests_GreeterC(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) -> BridgeJSRuntimeTests.Greeter>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSS_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS(callbackValue, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) -> String {
    public init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV_extern(_ callback: Int32, _ param0: Float64) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV_extern(_ callback: Int32, _ param0: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV(_ callback: Int32, _ param0: Float64) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV {
    static func bridgeJSLift(_ callbackId: Int32) -> (Double) -> BridgeJSRuntimeTests.Vector2D {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV(callbackValue, param0Value)
            return BridgeJSRuntimeTests.Vector2D.bridgeJSLiftReturn()
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Double) -> BridgeJSRuntimeTests.Vector2D {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Double) -> BridgeJSRuntimeTests.Vector2D) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV(_ boxPtr: UnsafeMutableRawPointer, _ param0: Float64) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Double) -> BridgeJSRuntimeTests.Vector2D>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Double.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd_extern(_ callback: Int32, _ param0: Float64) -> Float64
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd_extern(_ callback: Int32, _ param0: Float64) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd(_ callback: Int32, _ param0: Float64) -> Float64 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSd_Sd {
    static func bridgeJSLift(_ callbackId: Int32) -> (Double) -> Double {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd(callbackValue, param0Value)
            return Double.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Double) -> Double {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Double) -> Double) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sd(_ boxPtr: UnsafeMutableRawPointer, _ param0: Float64) -> Float64 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Double) -> Double>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Double.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV_extern(_ callback: Int32, _ param0: Float64) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV_extern(_ callback: Int32, _ param0: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV(_ callback: Int32, _ param0: Float64) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV {
    static func bridgeJSLift(_ callbackId: Int32) -> (Double) -> Optional<BridgeJSRuntimeTests.Vector2D> {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV(callbackValue, param0Value)
            return Optional<BridgeJSRuntimeTests.Vector2D>.bridgeJSLiftReturn()
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Double) -> Optional<BridgeJSRuntimeTests.Vector2D> {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Double) -> Optional<BridgeJSRuntimeTests.Vector2D>) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV(_ boxPtr: UnsafeMutableRawPointer, _ param0: Float64) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Double) -> Optional<BridgeJSRuntimeTests.Vector2D>>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Double.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS_extern(_ callback: Int32, _ param0: Int32, _ param1Bytes: Int32, _ param1Length: Int32, _ param2: Float64) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS_extern(_ callback: Int32, _ param0: Int32, _ param1Bytes: Int32, _ param1Length: Int32, _ param2: Float64) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS(_ callback: Int32, _ param0: Int32, _ param1Bytes: Int32, _ param1Length: Int32, _ param2: Float64) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS_extern(callback, param0, param1Bytes, param1Length, param2)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSiSSSd_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Int, String, Double) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0, param1, param2) in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret0 = param1.bridgeJSWithLoweredParameter { (param1Bytes, param1Length) in
                let param2Value = param2.bridgeJSLowerParameter()
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS(callbackValue, param0Value, param1Bytes, param1Length, param2Value)
                return ret
            }
            let ret = ret0
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Int, String, Double) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Int, String, Double) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSSSd_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32, _ param1Bytes: Int32, _ param1Length: Int32, _ param2: Float64) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Int, String, Double) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Int.bridgeJSLiftParameter(param0), String.bridgeJSLiftParameter(param1Bytes, param1Length), Double.bridgeJSLiftParameter(param2))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si_extern(_ callback: Int32, _ param0: Int32, _ param1: Int32, _ param2: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si_extern(_ callback: Int32, _ param0: Int32, _ param1: Int32, _ param2: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si(_ callback: Int32, _ param0: Int32, _ param1: Int32, _ param2: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si_extern(callback, param0, param1, param2)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSiSiSi_Si {
    static func bridgeJSLift(_ callbackId: Int32) -> (Int, Int, Int) -> Int {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0, param1, param2) in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let param1Value = param1.bridgeJSLowerParameter()
            let param2Value = param2.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si(callbackValue, param0Value, param1Value, param2Value)
            return Int.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Int, Int, Int) -> Int {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Int, Int, Int) -> Int) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSiSi_Si(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32, _ param1: Int32, _ param2: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Int, Int, Int) -> Int>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Int.bridgeJSLiftParameter(param0), Int.bridgeJSLiftParameter(param1), Int.bridgeJSLiftParameter(param2))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si_extern(_ callback: Int32, _ param0: Int32, _ param1: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si_extern(_ callback: Int32, _ param0: Int32, _ param1: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si(_ callback: Int32, _ param0: Int32, _ param1: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si_extern(callback, param0, param1)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSiSi_Si {
    static func bridgeJSLift(_ callbackId: Int32) -> (Int, Int) -> Int {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0, param1) in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let param1Value = param1.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si(callbackValue, param0Value, param1Value)
            return Int.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Int, Int) -> Int {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Int, Int) -> Int) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSiSi_Si(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32, _ param1: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Int, Int) -> Int>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Int.bridgeJSLiftParameter(param0), Int.bridgeJSLiftParameter(param1))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si_extern(_ callback: Int32, _ param0: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si_extern(_ callback: Int32, _ param0: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si(_ callback: Int32, _ param0: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSi_Si {
    static func bridgeJSLift(_ callbackId: Int32) -> (Int) -> Int {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si(callbackValue, param0Value)
            return Int.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Int) -> Int {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Int) -> Int) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_Si(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Int) -> Int>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Int.bridgeJSLiftParameter(param0))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y_extern(_ callback: Int32, _ param0: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y_extern(_ callback: Int32, _ param0: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y(_ callback: Int32, _ param0: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSi_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (Int) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y(callbackValue, param0Value)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Int) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Int) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSi_y(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Int) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(Int.bridgeJSLiftParameter(param0))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS_extern(callback, param0IsSome, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<BridgeJSRuntimeTests.Theme>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0IsSome, param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS(callbackValue, param0IsSome, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<BridgeJSRuntimeTests.Theme>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<BridgeJSRuntimeTests.Theme>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<BridgeJSRuntimeTests.Theme>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<BridgeJSRuntimeTests.Theme>.bridgeJSLiftParameter(param0IsSome, param0Bytes, param0Length))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0Pointer: UnsafeMutableRawPointer) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS_extern(callback, param0IsSome, param0Pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<BridgeJSRuntimeTests.Greeter>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0Pointer) = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS(callbackValue, param0IsSome, param0Pointer)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<BridgeJSRuntimeTests.Greeter>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<BridgeJSRuntimeTests.Greeter>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<BridgeJSRuntimeTests.Greeter>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(param0IsSome, param0Value))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Pointer: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Pointer: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC(_ callback: Int32, _ param0IsSome: Int32, _ param0Pointer: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC_extern(callback, param0IsSome, param0Pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<BridgeJSRuntimeTests.Greeter>) -> Optional<BridgeJSRuntimeTests.Greeter> {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0Pointer) = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC(callbackValue, param0IsSome, param0Pointer)
            return Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<BridgeJSRuntimeTests.Greeter>) -> Optional<BridgeJSRuntimeTests.Greeter> {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<BridgeJSRuntimeTests.Greeter>) -> Optional<BridgeJSRuntimeTests.Greeter>) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<BridgeJSRuntimeTests.Greeter>) -> Optional<BridgeJSRuntimeTests.Greeter>>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(param0IsSome, param0Value))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS_extern(callback, param0IsSome, param0CaseId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<BridgeJSRuntimeTests.APIResult>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0CaseId) = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS(callbackValue, param0IsSome, param0CaseId)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<BridgeJSRuntimeTests.APIResult>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<BridgeJSRuntimeTests.APIResult>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<BridgeJSRuntimeTests.APIResult>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(param0IsSome, param0CaseId))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS_extern(callback, param0IsSome, param0Value)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<BridgeJSRuntimeTests.Direction>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0Value) = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS(callbackValue, param0IsSome, param0Value)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<BridgeJSRuntimeTests.Direction>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<BridgeJSRuntimeTests.Direction>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Value: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<BridgeJSRuntimeTests.Direction>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<BridgeJSRuntimeTests.Direction>.bridgeJSLiftParameter(param0IsSome, param0Value))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0ObjectId: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0ObjectId: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0ObjectId: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS_extern(callback, param0IsSome, param0ObjectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<any BridgeJSRuntimeTests.DataProcessor>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0ObjectId): (Int32, Int32)
            if let param0 {
                (param0IsSome, param0ObjectId) = (1, (param0 as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
            } else {
                (param0IsSome, param0ObjectId) = (0, 0)
            }
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS(callbackValue, param0IsSome, param0ObjectId)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<any BridgeJSRuntimeTests.DataProcessor>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<any BridgeJSRuntimeTests.DataProcessor>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Value: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<any BridgeJSRuntimeTests.DataProcessor>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<AnyDataProcessor>.bridgeJSLiftParameter(param0IsSome, param0Value))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS_extern(callback, param0IsSome, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSqSS_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<String>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret0 = param0.bridgeJSWithLoweredParameter { (param0IsSome, param0Bytes, param0Length) in
                let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS(callbackValue, param0IsSome, param0Bytes, param0Length)
                return ret
            }
            let ret = ret0
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<String>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<String>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<String>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<String>.bridgeJSLiftParameter(param0IsSome, param0Bytes, param0Length))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS_extern(callback, param0IsSome, param0Value)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsSqSi_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (Optional<Int>) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0Value) = param0.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS(callbackValue, param0IsSome, param0Value)
            return String.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Optional<Int>) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Optional<Int>) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsSqSi_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Value: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Optional<Int>) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure(Optional<Int>.bridgeJSLiftParameter(param0IsSome, param0Value))
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS_extern(resolveRef, rejectRef, callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsYaKSS_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) async throws(JSException) -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: String) async throws(JSException) -> String in
            #if arch(wasm32)
            let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
                    JSTypedClosure<(sending String) -> Void>($0)
                }, makeRejectClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>($0)
                }) { resolveRef, rejectRef in
                let callbackValue = callback.bridgeJSLowerParameter()
                param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                    invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS(resolveRef, rejectRef, callbackValue, param0Bytes, param0Length)
                }
            }
            return resolved
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) async throws(JSException) -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) async throws(JSException) -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) async throws(JSException) -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    return _bjs_makePromise(resolve: Promise_resolve_SS, reject: Promise_reject) { () async throws(JSException) -> String in
        return try await closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y_extern(resolveRef, rejectRef, callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsYaKSS_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) async throws(JSException) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: String) async throws(JSException) -> Void in
            #if arch(wasm32)
            try await _bjs_awaitPromise(makeResolveClosure: {
                    JSTypedClosure<() -> Void>($0)
                }, makeRejectClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>($0)
                }) { resolveRef, rejectRef in
                let callbackValue = callback.bridgeJSLowerParameter()
                param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                    invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y(resolveRef, rejectRef, callbackValue, param0Bytes, param0Length)
                }
            }
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) async throws(JSException) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) async throws(JSException) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSS_y(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) async throws(JSException) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    return _bjs_makePromise(resolve: Promise_resolve_y, reject: Promise_reject) { () async throws(JSException) in
        try await closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(resolveRef, rejectRef, callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO {
    static func bridgeJSLift(_ callbackId: Int32) -> (Bool) async throws(JSException) -> BridgeJSRuntimeTests.AsyncPayloadResult {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: Bool) async throws(JSException) -> BridgeJSRuntimeTests.AsyncPayloadResult in
            #if arch(wasm32)
            let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
                    JSTypedClosure<(sending BridgeJSRuntimeTests.AsyncPayloadResult) -> Void>($0)
                }, makeRejectClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>($0)
                }) { resolveRef, rejectRef in
                let callbackValue = callback.bridgeJSLowerParameter()
                let param0Value = param0.bridgeJSLowerParameter()
                invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO(resolveRef, rejectRef, callbackValue, param0Value)
            }
            return resolved
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Bool) async throws(JSException) -> BridgeJSRuntimeTests.AsyncPayloadResult {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Bool) async throws(JSException) -> BridgeJSRuntimeTests.AsyncPayloadResult) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Bool) async throws(JSException) -> BridgeJSRuntimeTests.AsyncPayloadResult>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    return _bjs_makePromise(resolve: Promise_resolve_39BridgeJSRuntimeTests_AsyncPayloadResultO, reject: Promise_reject) { () async throws(JSException) -> BridgeJSRuntimeTests.AsyncPayloadResult in
        return try await closure(Bool.bridgeJSLiftParameter(param0))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS_extern(resolveRef, rejectRef, callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsYaSS_SS {
    static func bridgeJSLift(_ callbackId: Int32) -> (String) async -> String {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: String) async -> String in
            #if arch(wasm32)
            let resolved = try! await _bjs_awaitPromise(makeResolveClosure: {
                    JSTypedClosure<(sending String) -> Void>($0)
                }, makeRejectClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>($0)
                }) { resolveRef, rejectRef in
                let callbackValue = callback.bridgeJSLowerParameter()
                param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                    invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS(resolveRef, rejectRef, callbackValue, param0Bytes, param0Length)
                }
            }
            return resolved
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (String) async -> String {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (String) async -> String) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSS_SS(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(String) async -> String>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    return _bjs_makePromise(resolve: Promise_resolve_SS, reject: Promise_reject) {
        return await closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0: Float64) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ param0: Float64) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV_extern(resolveRef, rejectRef, callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV {
    static func bridgeJSLift(_ callbackId: Int32) -> (Double) async -> BridgeJSRuntimeTests.DataPoint {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: Double) async -> BridgeJSRuntimeTests.DataPoint in
            #if arch(wasm32)
            let resolved = try! await _bjs_awaitPromise(makeResolveClosure: {
                    JSTypedClosure<(sending BridgeJSRuntimeTests.DataPoint) -> Void>($0)
                }, makeRejectClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>($0)
                }) { resolveRef, rejectRef in
                let callbackValue = callback.bridgeJSLowerParameter()
                let param0Value = param0.bridgeJSLowerParameter()
                invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV(resolveRef, rejectRef, callbackValue, param0Value)
            }
            return resolved
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (Double) async -> BridgeJSRuntimeTests.DataPoint {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (Double) async -> BridgeJSRuntimeTests.DataPoint) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsYaSd_30BridgeJSRuntimeTests_DataPointV(_ boxPtr: UnsafeMutableRawPointer, _ param0: Float64) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(Double) async -> BridgeJSRuntimeTests.DataPoint>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    return _bjs_makePromise(resolve: Promise_resolve_30BridgeJSRuntimeTests_DataPointV, reject: Promise_reject) {
        return await closure(Double.bridgeJSLiftParameter(param0))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y_extern(_ callback: Int32, _ param0: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y_extern(_ callback: Int32, _ param0: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y(_ callback: Int32, _ param0: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestss11WeatherDataC_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending WeatherData) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y(callbackValue, param0Value)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending WeatherData) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending WeatherData) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss11WeatherDataC_y(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending WeatherData) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(WeatherData.bridgeJSLiftParameter(param0))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y_extern(_ callback: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y(_ callback: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending BridgeJSRuntimeTests.DataPoint) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let _ = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y(callbackValue)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending BridgeJSRuntimeTests.DataPoint) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending BridgeJSRuntimeTests.DataPoint) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss30BridgeJSRuntimeTests_DataPointV_y(_ boxPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending BridgeJSRuntimeTests.DataPoint) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(BridgeJSRuntimeTests.DataPoint.bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending BridgeJSRuntimeTests.FeatureFlag) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y(callbackValue, param0Bytes, param0Length)
            }
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending BridgeJSRuntimeTests.FeatureFlag) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending BridgeJSRuntimeTests.FeatureFlag) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss32BridgeJSRuntimeTests_FeatureFlagO_y(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending BridgeJSRuntimeTests.FeatureFlag) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(BridgeJSRuntimeTests.FeatureFlag.bridgeJSLiftParameter(param0Bytes, param0Length))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y_extern(_ callback: Int32, _ param0: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y_extern(_ callback: Int32, _ param0: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y(_ callback: Int32, _ param0: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending BridgeJSRuntimeTests.AsyncPayloadResult) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0CaseId = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y(callbackValue, param0CaseId)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending BridgeJSRuntimeTests.AsyncPayloadResult) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending BridgeJSRuntimeTests.AsyncPayloadResult) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss39BridgeJSRuntimeTests_AsyncPayloadResultO_y(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending BridgeJSRuntimeTests.AsyncPayloadResult) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(BridgeJSRuntimeTests.AsyncPayloadResult.bridgeJSLiftParameter(param0))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ callback: Int32, _ param0: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ callback: Int32, _ param0: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(_ callback: Int32, _ param0: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending BridgeJSRuntimeTests.AsyncImportedPayloadResult) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0CaseId = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(callbackValue, param0CaseId)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending BridgeJSRuntimeTests.AsyncImportedPayloadResult) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending BridgeJSRuntimeTests.AsyncImportedPayloadResult) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending BridgeJSRuntimeTests.AsyncImportedPayloadResult) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(BridgeJSRuntimeTests.AsyncImportedPayloadResult.bridgeJSLiftParameter(param0))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y_extern(_ callback: Int32, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y_extern(_ callback: Int32, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y(_ callback: Int32, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y_extern(callback, param0Kind, param0Payload1, param0Payload2)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestss7JSValueV_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending JSValue) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0Kind, param0Payload1, param0Payload2) = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y(callbackValue, param0Kind, param0Payload1, param0Payload2)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending JSValue) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending JSValue) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestss7JSValueV_y(_ boxPtr: UnsafeMutableRawPointer, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending JSValue) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(JSValue.bridgeJSLiftParameter(param0Kind, param0Payload1, param0Payload2))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y_extern(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y(_ callback: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y_extern(callback, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSS_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending String) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            param0.bridgeJSWithLoweredParameter { (param0Bytes, param0Length) in
                invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y(callbackValue, param0Bytes, param0Length)
            }
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending String) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending String) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSS_y(_ boxPtr: UnsafeMutableRawPointer, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending String) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(String.bridgeJSLiftParameter(param0Bytes, param0Length))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y_extern(_ callback: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y(_ callback: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSaSS_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending [String]) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let _ = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y(callbackValue)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending [String]) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending [String]) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSS_y(_ boxPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending [String]) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure([String].bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y_extern(_ callback: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y(_ callback: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSaSb_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending [Bool]) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let _ = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y(callbackValue)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending [Bool]) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending [Bool]) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSb_y(_ boxPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending [Bool]) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure([Bool].bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y_extern(_ callback: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y(_ callback: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSaSd_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending [Double]) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let _ = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y(callbackValue)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending [Double]) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending [Double]) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSaSd_y(_ boxPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending [Double]) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure([Double].bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y_extern(_ callback: Int32, _ param0: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y_extern(_ callback: Int32, _ param0: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y(_ callback: Int32, _ param0: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSb_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending Bool) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y(callbackValue, param0Value)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending Bool) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending Bool) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSb_y(_ boxPtr: UnsafeMutableRawPointer, _ param0: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending Bool) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(Bool.bridgeJSLiftParameter(param0))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y_extern(_ callback: Int32, _ param0: Float64) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y_extern(_ callback: Int32, _ param0: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y(_ callback: Int32, _ param0: Float64) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y_extern(callback, param0)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSd_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending Double) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let param0Value = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y(callbackValue, param0Value)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending Double) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending Double) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSd_y(_ boxPtr: UnsafeMutableRawPointer, _ param0: Float64) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending Double) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(Double.bridgeJSLiftParameter(param0))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(_ callback: Int32, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(callback, param0IsSome, param0CaseId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0CaseId) = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(callbackValue, param0IsSome, param0CaseId)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSq47BridgeJSRuntimeTests_AsyncImportedPayloadResultO_y(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0CaseId: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>.bridgeJSLiftParameter(param0IsSome, param0CaseId))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y(_ callback: Int32, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y_extern(callback, param0IsSome, param0Bytes, param0Length)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSqSS_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending Optional<String>) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            param0.bridgeJSWithLoweredParameter { (param0IsSome, param0Bytes, param0Length) in
                invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y(callbackValue, param0IsSome, param0Bytes, param0Length)
            }
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending Optional<String>) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending Optional<String>) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSS_y(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Bytes: Int32, _ param0Length: Int32) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending Optional<String>) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(Optional<String>.bridgeJSLiftParameter(param0IsSome, param0Bytes, param0Length))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Float64) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y_extern(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y(_ callback: Int32, _ param0IsSome: Int32, _ param0Value: Float64) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y_extern(callback, param0IsSome, param0Value)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestssSqSd_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending Optional<Double>) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let (param0IsSome, param0Value) = param0.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y(callbackValue, param0IsSome, param0Value)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending Optional<Double>) -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending Optional<Double>) -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestssSqSd_y(_ boxPtr: UnsafeMutableRawPointer, _ param0IsSome: Int32, _ param0Value: Float64) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending Optional<Double>) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(Optional<Double>.bridgeJSLiftParameter(param0IsSome, param0Value))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP_extern(_ callback: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP_extern(_ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP(_ callback: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP {
    static func bridgeJSLift(_ callbackId: Int32) -> () -> any BridgeJSRuntimeTests.DataProcessor {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP(callbackValue)
            return AnyDataProcessor.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == () -> any BridgeJSRuntimeTests.DataProcessor {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping () -> any BridgeJSRuntimeTests.DataProcessor) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_34BridgeJSRuntimeTests_DataProcessorP(_ boxPtr: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<() -> any BridgeJSRuntimeTests.DataProcessor>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure()
    return (result as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb_extern(_ callback: Int32) -> Int32
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb_extern(_ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb(_ callback: Int32) -> Int32 {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsy_Sb {
    static func bridgeJSLift(_ callbackId: Int32) -> () -> Bool {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb(callbackValue)
            return Bool.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == () -> Bool {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping () -> Bool) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sb(_ boxPtr: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<() -> Bool>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure()
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ callback: Int32) -> UnsafeMutableRawPointer
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ callback: Int32) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC(_ callback: Int32) -> UnsafeMutableRawPointer {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC {
    static func bridgeJSLift(_ callbackId: Int32) -> () -> Optional<BridgeJSRuntimeTests.Greeter> {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            let ret = invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC(callbackValue)
            return Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftReturn(ret)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == () -> Optional<BridgeJSRuntimeTests.Greeter> {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping () -> Optional<BridgeJSRuntimeTests.Greeter>) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_Sq28BridgeJSRuntimeTests_GreeterC(_ boxPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<() -> Optional<BridgeJSRuntimeTests.Greeter>>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    let result = closure()
    return result.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y")
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y_extern(_ callback: Int32) -> Void
#else
fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y(_ callback: Int32) -> Void {
    return invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y")
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_20BridgeJSRuntimeTestsy_y {
    static func bridgeJSLift(_ callbackId: Int32) -> () -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            invoke_js_callback_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y(callbackValue)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == () -> Void {
    init(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping () -> Void) {
        self.init(
            makeClosure: make_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y")
@_cdecl("invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y")
public func _invoke_swift_closure_BridgeJSRuntimeTests_20BridgeJSRuntimeTestsy_y(_ boxPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<() -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

struct AnyArrayElementProtocol: ArrayElementProtocol, _BridgedSwiftProtocolWrapper {
    let jsObject: JSObject

    var value: Int {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_ArrayElementProtocol_value_get(jsObjectValue)
            return Int.bridgeJSLiftReturn(ret)
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let newValueValue = newValue.bridgeJSLowerParameter()
            bjs_ArrayElementProtocol_value_set(jsObjectValue, newValueValue)
        }
    }

    static func bridgeJSLiftParameter(_ value: Int32) -> Self {
        return AnyArrayElementProtocol(jsObject: JSObject(id: UInt32(bitPattern: value)))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArrayElementProtocol_value_get")
fileprivate func bjs_ArrayElementProtocol_value_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_ArrayElementProtocol_value_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArrayElementProtocol_value_get(_ jsObject: Int32) -> Int32 {
    return bjs_ArrayElementProtocol_value_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArrayElementProtocol_value_set")
fileprivate func bjs_ArrayElementProtocol_value_set_extern(_ jsObject: Int32, _ newValue: Int32) -> Void
#else
fileprivate func bjs_ArrayElementProtocol_value_set_extern(_ jsObject: Int32, _ newValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArrayElementProtocol_value_set(_ jsObject: Int32, _ newValue: Int32) -> Void {
    return bjs_ArrayElementProtocol_value_set_extern(jsObject, newValue)
}

struct AnyDataProcessor: DataProcessor, _BridgedSwiftProtocolWrapper {
    let jsObject: JSObject

    func increment(by amount: Int) -> Void {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let amountValue = amount.bridgeJSLowerParameter()
        _extern_increment(jsObjectValue, amountValue)
    }

    func getValue() -> Int {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let ret = _extern_getValue(jsObjectValue)
        return Int.bridgeJSLiftReturn(ret)
    }

    func setLabelElements(_ labelPrefix: String, _ labelSuffix: String) -> Void {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        labelPrefix.bridgeJSWithLoweredParameter { (labelPrefixBytes, labelPrefixLength) in
            labelSuffix.bridgeJSWithLoweredParameter { (labelSuffixBytes, labelSuffixLength) in
                _extern_setLabelElements(jsObjectValue, labelPrefixBytes, labelPrefixLength, labelSuffixBytes, labelSuffixLength)
            }
        }
    }

    func getLabel() -> String {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let ret = _extern_getLabel(jsObjectValue)
        return String.bridgeJSLiftReturn(ret)
    }

    func isEven() -> Bool {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let ret = _extern_isEven(jsObjectValue)
        return Bool.bridgeJSLiftReturn(ret)
    }

    func processGreeter(_ greeter: BridgeJSRuntimeTests.Greeter) -> String {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let greeterPointer = greeter.bridgeJSLowerParameter()
        let ret = _extern_processGreeter(jsObjectValue, greeterPointer)
        return String.bridgeJSLiftReturn(ret)
    }

    func createGreeter() -> BridgeJSRuntimeTests.Greeter {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let ret = _extern_createGreeter(jsObjectValue)
        return BridgeJSRuntimeTests.Greeter.bridgeJSLiftReturn(ret)
    }

    func processOptionalGreeter(_ greeter: Optional<BridgeJSRuntimeTests.Greeter>) -> String {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let (greeterIsSome, greeterPointer) = greeter.bridgeJSLowerParameter()
        let ret = _extern_processOptionalGreeter(jsObjectValue, greeterIsSome, greeterPointer)
        return String.bridgeJSLiftReturn(ret)
    }

    func createOptionalGreeter() -> Optional<BridgeJSRuntimeTests.Greeter> {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let ret = _extern_createOptionalGreeter(jsObjectValue)
        return Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftReturn(ret)
    }

    func handleAPIResult(_ result: Optional<BridgeJSRuntimeTests.APIResult>) -> Void {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let (resultIsSome, resultCaseId) = result.bridgeJSLowerParameter()
        _extern_handleAPIResult(jsObjectValue, resultIsSome, resultCaseId)
    }

    func getAPIResult() -> Optional<BridgeJSRuntimeTests.APIResult> {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let ret = _extern_getAPIResult(jsObjectValue)
        return Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftReturn(ret)
    }

    var count: Int {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_DataProcessor_count_get(jsObjectValue)
            return Int.bridgeJSLiftReturn(ret)
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let newValueValue = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_count_set(jsObjectValue, newValueValue)
        }
    }

    var name: String {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_DataProcessor_name_get(jsObjectValue)
            return String.bridgeJSLiftReturn(ret)
        }
    }

    var optionalTag: Optional<String> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            bjs_DataProcessor_optionalTag_get(jsObjectValue)
            return Optional<String>.bridgeJSLiftReturnFromSideChannel()
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            newValue.bridgeJSWithLoweredParameter { (newValueIsSome, newValueBytes, newValueLength) in
                bjs_DataProcessor_optionalTag_set(jsObjectValue, newValueIsSome, newValueBytes, newValueLength)
            }
        }
    }

    var optionalCount: Optional<Int> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            bjs_DataProcessor_optionalCount_get(jsObjectValue)
            return Optional<Int>.bridgeJSLiftReturnFromSideChannel()
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let (newValueIsSome, newValueValue) = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_optionalCount_set(jsObjectValue, newValueIsSome, newValueValue)
        }
    }

    var direction: Optional<BridgeJSRuntimeTests.Direction> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_DataProcessor_direction_get(jsObjectValue)
            return Optional<BridgeJSRuntimeTests.Direction>.bridgeJSLiftReturn(ret)
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let (newValueIsSome, newValueValue) = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_direction_set(jsObjectValue, newValueIsSome, newValueValue)
        }
    }

    var optionalTheme: Optional<BridgeJSRuntimeTests.Theme> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            bjs_DataProcessor_optionalTheme_get(jsObjectValue)
            return Optional<BridgeJSRuntimeTests.Theme>.bridgeJSLiftReturnFromSideChannel()
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            newValue.bridgeJSWithLoweredParameter { (newValueIsSome, newValueBytes, newValueLength) in
                bjs_DataProcessor_optionalTheme_set(jsObjectValue, newValueIsSome, newValueBytes, newValueLength)
            }
        }
    }

    var httpStatus: Optional<BridgeJSRuntimeTests.HttpStatus> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            bjs_DataProcessor_httpStatus_get(jsObjectValue)
            return Optional<BridgeJSRuntimeTests.HttpStatus>.bridgeJSLiftReturnFromSideChannel()
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let (newValueIsSome, newValueValue) = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_httpStatus_set(jsObjectValue, newValueIsSome, newValueValue)
        }
    }

    var apiResult: Optional<BridgeJSRuntimeTests.APIResult> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_DataProcessor_apiResult_get(jsObjectValue)
            return Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftReturn(ret)
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let (newValueIsSome, newValueCaseId) = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_apiResult_set(jsObjectValue, newValueIsSome, newValueCaseId)
        }
    }

    var helper: BridgeJSRuntimeTests.Greeter {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_DataProcessor_helper_get(jsObjectValue)
            return BridgeJSRuntimeTests.Greeter.bridgeJSLiftReturn(ret)
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let newValuePointer = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_helper_set(jsObjectValue, newValuePointer)
        }
    }

    var optionalHelper: Optional<BridgeJSRuntimeTests.Greeter> {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_DataProcessor_optionalHelper_get(jsObjectValue)
            return Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftReturn(ret)
        }
        set {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let (newValueIsSome, newValuePointer) = newValue.bridgeJSLowerParameter()
            bjs_DataProcessor_optionalHelper_set(jsObjectValue, newValueIsSome, newValuePointer)
        }
    }

    static func bridgeJSLiftParameter(_ value: Int32) -> Self {
        return AnyDataProcessor(jsObject: JSObject(id: UInt32(bitPattern: value)))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_increment")
fileprivate func _extern_increment_extern(_ jsObject: Int32, _ amount: Int32) -> Void
#else
fileprivate func _extern_increment_extern(_ jsObject: Int32, _ amount: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_increment(_ jsObject: Int32, _ amount: Int32) -> Void {
    return _extern_increment_extern(jsObject, amount)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_getValue")
fileprivate func _extern_getValue_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func _extern_getValue_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_getValue(_ jsObject: Int32) -> Int32 {
    return _extern_getValue_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_setLabelElements")
fileprivate func _extern_setLabelElements_extern(_ jsObject: Int32, _ labelPrefixBytes: Int32, _ labelPrefixLength: Int32, _ labelSuffixBytes: Int32, _ labelSuffixLength: Int32) -> Void
#else
fileprivate func _extern_setLabelElements_extern(_ jsObject: Int32, _ labelPrefixBytes: Int32, _ labelPrefixLength: Int32, _ labelSuffixBytes: Int32, _ labelSuffixLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_setLabelElements(_ jsObject: Int32, _ labelPrefixBytes: Int32, _ labelPrefixLength: Int32, _ labelSuffixBytes: Int32, _ labelSuffixLength: Int32) -> Void {
    return _extern_setLabelElements_extern(jsObject, labelPrefixBytes, labelPrefixLength, labelSuffixBytes, labelSuffixLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_getLabel")
fileprivate func _extern_getLabel_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func _extern_getLabel_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_getLabel(_ jsObject: Int32) -> Int32 {
    return _extern_getLabel_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_isEven")
fileprivate func _extern_isEven_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func _extern_isEven_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_isEven(_ jsObject: Int32) -> Int32 {
    return _extern_isEven_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_processGreeter")
fileprivate func _extern_processGreeter_extern(_ jsObject: Int32, _ greeter: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _extern_processGreeter_extern(_ jsObject: Int32, _ greeter: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_processGreeter(_ jsObject: Int32, _ greeter: UnsafeMutableRawPointer) -> Int32 {
    return _extern_processGreeter_extern(jsObject, greeter)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_createGreeter")
fileprivate func _extern_createGreeter_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer
#else
fileprivate func _extern_createGreeter_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_createGreeter(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    return _extern_createGreeter_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_processOptionalGreeter")
fileprivate func _extern_processOptionalGreeter_extern(_ jsObject: Int32, _ greeterIsSome: Int32, _ greeterPointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _extern_processOptionalGreeter_extern(_ jsObject: Int32, _ greeterIsSome: Int32, _ greeterPointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_processOptionalGreeter(_ jsObject: Int32, _ greeterIsSome: Int32, _ greeterPointer: UnsafeMutableRawPointer) -> Int32 {
    return _extern_processOptionalGreeter_extern(jsObject, greeterIsSome, greeterPointer)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_createOptionalGreeter")
fileprivate func _extern_createOptionalGreeter_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer
#else
fileprivate func _extern_createOptionalGreeter_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_createOptionalGreeter(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    return _extern_createOptionalGreeter_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_handleAPIResult")
fileprivate func _extern_handleAPIResult_extern(_ jsObject: Int32, _ resultIsSome: Int32, _ resultCaseId: Int32) -> Void
#else
fileprivate func _extern_handleAPIResult_extern(_ jsObject: Int32, _ resultIsSome: Int32, _ resultCaseId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_handleAPIResult(_ jsObject: Int32, _ resultIsSome: Int32, _ resultCaseId: Int32) -> Void {
    return _extern_handleAPIResult_extern(jsObject, resultIsSome, resultCaseId)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_getAPIResult")
fileprivate func _extern_getAPIResult_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func _extern_getAPIResult_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_getAPIResult(_ jsObject: Int32) -> Int32 {
    return _extern_getAPIResult_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_count_get")
fileprivate func bjs_DataProcessor_count_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_DataProcessor_count_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_count_get(_ jsObject: Int32) -> Int32 {
    return bjs_DataProcessor_count_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_count_set")
fileprivate func bjs_DataProcessor_count_set_extern(_ jsObject: Int32, _ newValue: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_count_set_extern(_ jsObject: Int32, _ newValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_count_set(_ jsObject: Int32, _ newValue: Int32) -> Void {
    return bjs_DataProcessor_count_set_extern(jsObject, newValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_name_get")
fileprivate func bjs_DataProcessor_name_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_DataProcessor_name_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_name_get(_ jsObject: Int32) -> Int32 {
    return bjs_DataProcessor_name_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalTag_get")
fileprivate func bjs_DataProcessor_optionalTag_get_extern(_ jsObject: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_optionalTag_get_extern(_ jsObject: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalTag_get(_ jsObject: Int32) -> Void {
    return bjs_DataProcessor_optionalTag_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalTag_set")
fileprivate func bjs_DataProcessor_optionalTag_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_optionalTag_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalTag_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    return bjs_DataProcessor_optionalTag_set_extern(jsObject, newValueIsSome, newValueBytes, newValueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalCount_get")
fileprivate func bjs_DataProcessor_optionalCount_get_extern(_ jsObject: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_optionalCount_get_extern(_ jsObject: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalCount_get(_ jsObject: Int32) -> Void {
    return bjs_DataProcessor_optionalCount_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalCount_set")
fileprivate func bjs_DataProcessor_optionalCount_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_optionalCount_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalCount_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void {
    return bjs_DataProcessor_optionalCount_set_extern(jsObject, newValueIsSome, newValueValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_direction_get")
fileprivate func bjs_DataProcessor_direction_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_DataProcessor_direction_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_direction_get(_ jsObject: Int32) -> Int32 {
    return bjs_DataProcessor_direction_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_direction_set")
fileprivate func bjs_DataProcessor_direction_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_direction_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_direction_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void {
    return bjs_DataProcessor_direction_set_extern(jsObject, newValueIsSome, newValueValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalTheme_get")
fileprivate func bjs_DataProcessor_optionalTheme_get_extern(_ jsObject: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_optionalTheme_get_extern(_ jsObject: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalTheme_get(_ jsObject: Int32) -> Void {
    return bjs_DataProcessor_optionalTheme_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalTheme_set")
fileprivate func bjs_DataProcessor_optionalTheme_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_optionalTheme_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalTheme_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    return bjs_DataProcessor_optionalTheme_set_extern(jsObject, newValueIsSome, newValueBytes, newValueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_httpStatus_get")
fileprivate func bjs_DataProcessor_httpStatus_get_extern(_ jsObject: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_httpStatus_get_extern(_ jsObject: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_httpStatus_get(_ jsObject: Int32) -> Void {
    return bjs_DataProcessor_httpStatus_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_httpStatus_set")
fileprivate func bjs_DataProcessor_httpStatus_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_httpStatus_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_httpStatus_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueValue: Int32) -> Void {
    return bjs_DataProcessor_httpStatus_set_extern(jsObject, newValueIsSome, newValueValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_apiResult_get")
fileprivate func bjs_DataProcessor_apiResult_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_DataProcessor_apiResult_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_apiResult_get(_ jsObject: Int32) -> Int32 {
    return bjs_DataProcessor_apiResult_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_apiResult_set")
fileprivate func bjs_DataProcessor_apiResult_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueCaseId: Int32) -> Void
#else
fileprivate func bjs_DataProcessor_apiResult_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueCaseId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_apiResult_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValueCaseId: Int32) -> Void {
    return bjs_DataProcessor_apiResult_set_extern(jsObject, newValueIsSome, newValueCaseId)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_helper_get")
fileprivate func bjs_DataProcessor_helper_get_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer
#else
fileprivate func bjs_DataProcessor_helper_get_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_helper_get(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    return bjs_DataProcessor_helper_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_helper_set")
fileprivate func bjs_DataProcessor_helper_set_extern(_ jsObject: Int32, _ newValue: UnsafeMutableRawPointer) -> Void
#else
fileprivate func bjs_DataProcessor_helper_set_extern(_ jsObject: Int32, _ newValue: UnsafeMutableRawPointer) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_helper_set(_ jsObject: Int32, _ newValue: UnsafeMutableRawPointer) -> Void {
    return bjs_DataProcessor_helper_set_extern(jsObject, newValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalHelper_get")
fileprivate func bjs_DataProcessor_optionalHelper_get_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer
#else
fileprivate func bjs_DataProcessor_optionalHelper_get_extern(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalHelper_get(_ jsObject: Int32) -> UnsafeMutableRawPointer {
    return bjs_DataProcessor_optionalHelper_get_extern(jsObject)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DataProcessor_optionalHelper_set")
fileprivate func bjs_DataProcessor_optionalHelper_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValuePointer: UnsafeMutableRawPointer) -> Void
#else
fileprivate func bjs_DataProcessor_optionalHelper_set_extern(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValuePointer: UnsafeMutableRawPointer) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DataProcessor_optionalHelper_set(_ jsObject: Int32, _ newValueIsSome: Int32, _ newValuePointer: UnsafeMutableRawPointer) -> Void {
    return bjs_DataProcessor_optionalHelper_set_extern(jsObject, newValueIsSome, newValuePointer)
}

extension BridgeJSRuntimeTests.Severity: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.Severity {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.Severity {
        return BridgeJSRuntimeTests.Severity(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .notice
        case 1:
            self = .warning
        case 2:
            self = .error
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .notice:
            return 0
        case .warning:
            return 1
        case .error:
            return 2
        }
    }
}

extension BridgeJSRuntimeTests.Shape: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.Shape {
        switch caseId {
        case 0:
            return .polygon(BridgeJSRuntimeTests.Polygon.bridgeJSStackPop())
        case 1:
            return .empty
        default:
            fatalError("Unknown BridgeJSRuntimeTests.Shape case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .polygon(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .empty:
            return Int32(1)
        }
    }
}

extension BridgeJSRuntimeTests.InnerTag: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.InnerTag {
        switch caseId {
        case 0:
            return .payload(Int.bridgeJSStackPop())
        case 1:
            return .empty
        default:
            fatalError("Unknown BridgeJSRuntimeTests.InnerTag case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .payload(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .empty:
            return Int32(1)
        }
    }
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripIntArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripIntArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripIntArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripIntArray(_: [Int].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStringArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStringArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStringArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripStringArray(_: [String].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripDoubleArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripDoubleArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripDoubleArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripDoubleArray(_: [Double].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripBoolArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripBoolArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripBoolArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripBoolArray(_: [Bool].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeRawPointerArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeRawPointerArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeRawPointerArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripUnsafeRawPointerArray(_: [UnsafeRawPointer].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeMutableRawPointerArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeMutableRawPointerArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeMutableRawPointerArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripUnsafeMutableRawPointerArray(_: [UnsafeMutableRawPointer].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOpaquePointerArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOpaquePointerArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOpaquePointerArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOpaquePointerArray(_: [OpaquePointer].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafePointerArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafePointerArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafePointerArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripUnsafePointerArray(_: [UnsafePointer<UInt8>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeMutablePointerArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeMutablePointerArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUnsafeMutablePointerArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripUnsafeMutablePointerArray(_: [UnsafeMutablePointer<UInt8>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSValueArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSValueArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSValueArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripJSValueArray(_: [JSValue].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSObjectArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSObjectArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSObjectArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripJSObjectArray(_: [JSObject].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripCaseEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripCaseEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripCaseEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripCaseEnumArray(_: [BridgeJSRuntimeTests.Direction].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStringRawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStringRawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStringRawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripStringRawValueEnumArray(_: [BridgeJSRuntimeTests.Theme].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripIntRawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripIntRawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripIntRawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripIntRawValueEnumArray(_: [BridgeJSRuntimeTests.HttpStatus].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripInt64RawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripInt64RawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripInt64RawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripInt64RawValueEnumArray(_: [BridgeJSRuntimeTests.FileSize].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUInt64RawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUInt64RawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripUInt64RawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripUInt64RawValueEnumArray(_: [BridgeJSRuntimeTests.SessionId].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStructArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStructArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripStructArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripStructArray(_: [BridgeJSRuntimeTests.DataPoint].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripSwiftClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripSwiftClassArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripSwiftClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripSwiftClassArray(_: [BridgeJSRuntimeTests.Greeter].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNamespacedSwiftClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNamespacedSwiftClassArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNamespacedSwiftClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNamespacedSwiftClassArray(_: [BridgeJSRuntimeTests.Utils.Converter].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripProtocolArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripProtocolArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripProtocolArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripProtocolArray(_: [AnyArrayElementProtocol].bridgeJSStackPop())
    for __bjs_elem_ret in ret {
        _swift_js_push_i32((__bjs_elem_ret as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
    }
    _swift_js_push_i32(Int32(ret.count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSClassArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripJSClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripJSClassArray(_: [ArrayElementObject].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalIntArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalIntArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalIntArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalIntArray(_: [Optional<Int>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStringArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStringArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStringArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalStringArray(_: [Optional<String>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalJSObjectArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalJSObjectArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalJSObjectArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalJSObjectArray(_: [Optional<JSObject>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalCaseEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalCaseEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalCaseEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalCaseEnumArray(_: [Optional<BridgeJSRuntimeTests.Direction>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStringRawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStringRawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStringRawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalStringRawValueEnumArray(_: [Optional<BridgeJSRuntimeTests.Theme>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalIntRawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalIntRawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalIntRawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalIntRawValueEnumArray(_: [Optional<BridgeJSRuntimeTests.HttpStatus>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalInt64RawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalInt64RawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalInt64RawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalInt64RawValueEnumArray(_: [Optional<BridgeJSRuntimeTests.FileSize>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalUInt64RawValueEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalUInt64RawValueEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalUInt64RawValueEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalUInt64RawValueEnumArray(_: [Optional<BridgeJSRuntimeTests.SessionId>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStructArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStructArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalStructArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalStructArray(_: [Optional<BridgeJSRuntimeTests.DataPoint>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalSwiftClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalSwiftClassArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalSwiftClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalSwiftClassArray(_: [Optional<BridgeJSRuntimeTests.Greeter>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalJSClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalJSClassArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripOptionalJSClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripOptionalJSClassArray(_: [Optional<ArrayElementObject>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedIntArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedIntArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedIntArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedIntArray(_: [[Int]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedStringArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedStringArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedStringArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedStringArray(_: [[String]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedDoubleArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedDoubleArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedDoubleArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedDoubleArray(_: [[Double]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedBoolArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedBoolArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedBoolArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedBoolArray(_: [[Bool]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedStructArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedStructArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedStructArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedStructArray(_: [[BridgeJSRuntimeTests.DataPoint]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedCaseEnumArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedCaseEnumArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedCaseEnumArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedCaseEnumArray(_: [[BridgeJSRuntimeTests.Direction]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedSwiftClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedSwiftClassArray")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_roundTripNestedSwiftClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArraySupportExports.roundTripNestedSwiftClassArray(_: [[BridgeJSRuntimeTests.Greeter]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiArrayFirst")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiArrayFirst")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiArrayFirst() -> Void {
    #if arch(wasm32)
    let _tmp_b = [String].bridgeJSStackPop()
    let _tmp_a = [Int].bridgeJSStackPop()
    let ret = BridgeJSRuntimeTests.ArraySupportExports.multiArrayFirst(_: _tmp_a, _: _tmp_b)
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiArraySecond")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiArraySecond")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiArraySecond() -> Void {
    #if arch(wasm32)
    let _tmp_b = [String].bridgeJSStackPop()
    let _tmp_a = [Int].bridgeJSStackPop()
    let ret = BridgeJSRuntimeTests.ArraySupportExports.multiArraySecond(_: _tmp_a, _: _tmp_b)
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiOptionalArrayFirst")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiOptionalArrayFirst")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiOptionalArrayFirst() -> Void {
    #if arch(wasm32)
    let _tmp_b = Optional<[String]>.bridgeJSLiftParameter()
    let _tmp_a = Optional<[Int]>.bridgeJSLiftParameter()
    let ret = BridgeJSRuntimeTests.ArraySupportExports.multiOptionalArrayFirst(_: _tmp_a, _: _tmp_b)
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiOptionalArraySecond")
@_cdecl("bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiOptionalArraySecond")
public func _bjs_BridgeJSRuntimeTests_ArraySupportExports_static_multiOptionalArraySecond() -> Void {
    #if arch(wasm32)
    let _tmp_b = Optional<[String]>.bridgeJSLiftParameter()
    let _tmp_a = Optional<[Int]>.bridgeJSLiftParameter()
    let ret = BridgeJSRuntimeTests.ArraySupportExports.multiOptionalArraySecond(_: _tmp_a, _: _tmp_b)
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.AsyncImportedPayloadResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.AsyncImportedPayloadResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .failure(Int.bridgeJSStackPop())
        case 2:
            return .idle
        default:
            fatalError("Unknown BridgeJSRuntimeTests.AsyncImportedPayloadResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .idle:
            return Int32(2)
        }
    }
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testStringDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testStringDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testStringDefault(_ messageBytes: Int32, _ messageLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testStringDefault(message: String.bridgeJSLiftParameter(messageBytes, messageLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testIntDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testIntDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testIntDefault(_ count: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testIntDefault(count: Int.bridgeJSLiftParameter(count))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testBoolDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testBoolDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testBoolDefault(_ flag: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testBoolDefault(flag: Bool.bridgeJSLiftParameter(flag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testOptionalDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testOptionalDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testOptionalDefault(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testOptionalDefault(name: Optional<String>.bridgeJSLiftParameter(nameIsSome, nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testMultipleDefaults")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testMultipleDefaults")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testMultipleDefaults(_ titleBytes: Int32, _ titleLength: Int32, _ count: Int32, _ enabled: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testMultipleDefaults(title: String.bridgeJSLiftParameter(titleBytes, titleLength), count: Int.bridgeJSLiftParameter(count), enabled: Bool.bridgeJSLiftParameter(enabled))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testSimpleEnumDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testSimpleEnumDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testSimpleEnumDefault(_ status: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testSimpleEnumDefault(status: BridgeJSRuntimeTests.Status.bridgeJSLiftParameter(status))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testDirectionDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testDirectionDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testDirectionDefault(_ direction: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testDirectionDefault(direction: BridgeJSRuntimeTests.Direction.bridgeJSLiftParameter(direction))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testRawStringEnumDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testRawStringEnumDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testRawStringEnumDefault(_ themeBytes: Int32, _ themeLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testRawStringEnumDefault(theme: BridgeJSRuntimeTests.Theme.bridgeJSLiftParameter(themeBytes, themeLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testComplexInit")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testComplexInit")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testComplexInit(_ greeter: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testComplexInit(greeter: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(greeter))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testEmptyInit")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testEmptyInit")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_testEmptyInit(_ object: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.testEmptyInit(_: BridgeJSRuntimeTests.StaticPropertyHolder.bridgeJSLiftParameter(object))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_createConstructorDefaults")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_createConstructorDefaults")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_createConstructorDefaults(_ nameBytes: Int32, _ nameLength: Int32, _ count: Int32, _ enabled: Int32, _ status: Int32, _ tagIsSome: Int32, _ tagBytes: Int32, _ tagLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.createConstructorDefaults(name: String.bridgeJSLiftParameter(nameBytes, nameLength), count: Int.bridgeJSLiftParameter(count), enabled: Bool.bridgeJSLiftParameter(enabled), status: BridgeJSRuntimeTests.Status.bridgeJSLiftParameter(status), tag: Optional<String>.bridgeJSLiftParameter(tagIsSome, tagBytes, tagLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_describeConstructorDefaults")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_describeConstructorDefaults")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_describeConstructorDefaults(_ value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.describeConstructorDefaults(_: BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayWithDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayWithDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayWithDefault() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.arrayWithDefault(_: [Int].bridgeJSStackPop())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayWithOptionalDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayWithOptionalDefault")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayWithOptionalDefault() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.arrayWithOptionalDefault(_: Optional<[Int]>.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayMixedDefaults")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayMixedDefaults")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentExports_static_arrayMixedDefaults(_ prefixBytes: Int32, _ prefixLength: Int32, _ suffixBytes: Int32, _ suffixLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentExports.arrayMixedDefaults(prefix: String.bridgeJSLiftParameter(prefixBytes, prefixLength), values: [Int].bridgeJSStackPop(), suffix: String.bridgeJSLiftParameter(suffixBytes, suffixLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Direction: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.Direction {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.Direction {
        return BridgeJSRuntimeTests.Direction(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .north
        case 1:
            self = .south
        case 2:
            self = .east
        case 3:
            self = .west
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .north:
            return 0
        case .south:
            return 1
        case .east:
            return 2
        case .west:
            return 3
        }
    }
}

extension BridgeJSRuntimeTests.Status: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.Status {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.Status {
        return BridgeJSRuntimeTests.Status(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .loading
        case 1:
            self = .success
        case 2:
            self = .error
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .loading:
            return 0
        case .success:
            return 1
        case .error:
            return 2
        }
    }
}

extension BridgeJSRuntimeTests.Theme: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.HttpStatus: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.FileSize: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.SessionId: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.Precision: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.Ratio: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.TSDirection: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.TSDirection {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.TSDirection {
        return BridgeJSRuntimeTests.TSDirection(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .north
        case 1:
            self = .south
        case 2:
            self = .east
        case 3:
            self = .west
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .north:
            return 0
        case .south:
            return 1
        case .east:
            return 2
        case .west:
            return 3
        }
    }
}

extension BridgeJSRuntimeTests.TSTheme: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.AsyncPayloadResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.AsyncPayloadResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .failure(Int.bridgeJSStackPop())
        case 2:
            return .idle
        default:
            fatalError("Unknown BridgeJSRuntimeTests.AsyncPayloadResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .idle:
            return Int32(2)
        }
    }
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_StringUtils_static_uppercase")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_StringUtils_static_uppercase")
public func _bjs_BridgeJSRuntimeTests_Utils_StringUtils_static_uppercase(_ textBytes: Int32, _ textLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Utils.StringUtils.uppercase(_: String.bridgeJSLiftParameter(textBytes, textLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_StringUtils_static_lowercase")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_StringUtils_static_lowercase")
public func _bjs_BridgeJSRuntimeTests_Utils_StringUtils_static_lowercase(_ textBytes: Int32, _ textLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Utils.StringUtils.lowercase(_: String.bridgeJSLiftParameter(textBytes, textLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Networking.API.Method: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.Networking.API.Method {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.Networking.API.Method {
        return BridgeJSRuntimeTests.Networking.API.Method(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .get
        case 1:
            self = .post
        case 2:
            self = .put
        case 3:
            self = .delete
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .get:
            return 0
        case .post:
            return 1
        case .put:
            return 2
        case .delete:
            return 3
        }
    }
}

extension BridgeJSRuntimeTests.Configuration.LogLevel: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.Configuration.Port: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.Internal.SupportedMethod: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.Internal.SupportedMethod {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.Internal.SupportedMethod {
        return BridgeJSRuntimeTests.Internal.SupportedMethod(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .get
        case 1:
            self = .post
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .get:
            return 0
        case .post:
            return 1
        }
    }
}

extension BridgeJSRuntimeTests.APIResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.APIResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .failure(Int.bridgeJSStackPop())
        case 2:
            return .flag(Bool.bridgeJSStackPop())
        case 3:
            return .rate(Float.bridgeJSStackPop())
        case 4:
            return .precise(Double.bridgeJSStackPop())
        case 5:
            return .info
        default:
            fatalError("Unknown BridgeJSRuntimeTests.APIResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .flag(let param0):
            param0.bridgeJSStackPush()
            return Int32(2)
        case .rate(let param0):
            param0.bridgeJSStackPush()
            return Int32(3)
        case .precise(let param0):
            param0.bridgeJSStackPush()
            return Int32(4)
        case .info:
            return Int32(5)
        }
    }
}

extension BridgeJSRuntimeTests.ComplexResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.ComplexResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .error(String.bridgeJSStackPop(), Int.bridgeJSStackPop())
        case 2:
            return .location(Double.bridgeJSStackPop(), Double.bridgeJSStackPop(), String.bridgeJSStackPop())
        case 3:
            return .status(Bool.bridgeJSStackPop(), Int.bridgeJSStackPop(), String.bridgeJSStackPop())
        case 4:
            return .coordinates(Double.bridgeJSStackPop(), Double.bridgeJSStackPop(), Double.bridgeJSStackPop())
        case 5:
            return .comprehensive(Bool.bridgeJSStackPop(), Bool.bridgeJSStackPop(), Int.bridgeJSStackPop(), Int.bridgeJSStackPop(), Double.bridgeJSStackPop(), Double.bridgeJSStackPop(), String.bridgeJSStackPop(), String.bridgeJSStackPop(), String.bridgeJSStackPop())
        case 6:
            return .info
        default:
            fatalError("Unknown BridgeJSRuntimeTests.ComplexResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .error(let param0, let param1):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            return Int32(1)
        case .location(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(2)
        case .status(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(3)
        case .coordinates(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(4)
        case .comprehensive(let param0, let param1, let param2, let param3, let param4, let param5, let param6, let param7, let param8):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            param3.bridgeJSStackPush()
            param4.bridgeJSStackPush()
            param5.bridgeJSStackPush()
            param6.bridgeJSStackPush()
            param7.bridgeJSStackPush()
            param8.bridgeJSStackPush()
            return Int32(5)
        case .info:
            return Int32(6)
        }
    }
}

extension BridgeJSRuntimeTests.Utilities.Result: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.Utilities.Result {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .failure(String.bridgeJSStackPop(), Int.bridgeJSStackPop())
        case 2:
            return .status(Bool.bridgeJSStackPop(), Int.bridgeJSStackPop(), String.bridgeJSStackPop())
        default:
            fatalError("Unknown BridgeJSRuntimeTests.Utilities.Result case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0, let param1):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            return Int32(1)
        case .status(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(2)
        }
    }
}

extension BridgeJSRuntimeTests.API.NetworkingResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.API.NetworkingResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .failure(String.bridgeJSStackPop(), Int.bridgeJSStackPop())
        default:
            fatalError("Unknown BridgeJSRuntimeTests.API.NetworkingResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0, let param1):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            return Int32(1)
        }
    }
}

extension BridgeJSRuntimeTests.AllTypesResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.AllTypesResult {
        switch caseId {
        case 0:
            return .structPayload(BridgeJSRuntimeTests.Address.bridgeJSStackPop())
        case 1:
            return .classPayload(BridgeJSRuntimeTests.Greeter.bridgeJSStackPop())
        case 2:
            return .jsObjectPayload(JSObject.bridgeJSStackPop())
        case 3:
            return .nestedEnum(BridgeJSRuntimeTests.APIResult.bridgeJSStackPop())
        case 4:
            return .arrayPayload([Int].bridgeJSStackPop())
        case 5:
            return .jsClassPayload(Foo(unsafelyWrapping: JSObject.bridgeJSStackPop()))
        case 6:
            return .empty
        default:
            fatalError("Unknown BridgeJSRuntimeTests.AllTypesResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .structPayload(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .classPayload(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .jsObjectPayload(let param0):
            param0.bridgeJSStackPush()
            return Int32(2)
        case .nestedEnum(let param0):
            param0.bridgeJSStackPush()
            return Int32(3)
        case .arrayPayload(let param0):
            param0.bridgeJSStackPush()
            return Int32(4)
        case .jsClassPayload(let param0):
            param0.jsObject.bridgeJSStackPush()
            return Int32(5)
        case .empty:
            return Int32(6)
        }
    }
}

extension BridgeJSRuntimeTests.TypedPayloadResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.TypedPayloadResult {
        switch caseId {
        case 0:
            return .precision(BridgeJSRuntimeTests.Precision.bridgeJSStackPop())
        case 1:
            return .direction(BridgeJSRuntimeTests.Direction.bridgeJSStackPop())
        case 2:
            return .optPrecision(Optional<BridgeJSRuntimeTests.Precision>.bridgeJSStackPop())
        case 3:
            return .optDirection(Optional<BridgeJSRuntimeTests.Direction>.bridgeJSStackPop())
        case 4:
            return .empty
        default:
            fatalError("Unknown BridgeJSRuntimeTests.TypedPayloadResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .precision(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .direction(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .optPrecision(let param0):
            param0.bridgeJSStackPush()
            return Int32(2)
        case .optDirection(let param0):
            param0.bridgeJSStackPush()
            return Int32(3)
        case .empty:
            return Int32(4)
        }
    }
}

extension BridgeJSRuntimeTests.StaticCalculator: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.StaticCalculator {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.StaticCalculator {
        return BridgeJSRuntimeTests.StaticCalculator(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .scientific
        case 1:
            self = .basic
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .scientific:
            return 0
        case .basic:
            return 1
        }
    }
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticCalculator_static_roundtrip")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticCalculator_static_roundtrip")
public func _bjs_BridgeJSRuntimeTests_StaticCalculator_static_roundtrip(_ value: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticCalculator.roundtrip(_: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticCalculator_static_doubleValue")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticCalculator_static_doubleValue")
public func _bjs_BridgeJSRuntimeTests_StaticCalculator_static_doubleValue(_ value: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticCalculator.doubleValue(_: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticCalculator_static_version_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticCalculator_static_version_get")
public func _bjs_BridgeJSRuntimeTests_StaticCalculator_static_version_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticCalculator.version
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticUtils_Nested_static_roundtrip")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticUtils_Nested_static_roundtrip")
public func _bjs_BridgeJSRuntimeTests_StaticUtils_Nested_static_roundtrip(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticUtils.Nested.roundtrip(_: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_GraphOperations_static_createGraph")
@_cdecl("bjs_BridgeJSRuntimeTests_GraphOperations_static_createGraph")
public func _bjs_BridgeJSRuntimeTests_GraphOperations_static_createGraph(_ rootId: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.GraphOperations.createGraph(rootId: Int.bridgeJSLiftParameter(rootId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_GraphOperations_static_nodeCount")
@_cdecl("bjs_BridgeJSRuntimeTests_GraphOperations_static_nodeCount")
public func _bjs_BridgeJSRuntimeTests_GraphOperations_static_nodeCount(_ graphId: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.GraphOperations.nodeCount(graphId: Int.bridgeJSLiftParameter(graphId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.StaticPropertyEnum: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.StaticPropertyEnum {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.StaticPropertyEnum {
        return BridgeJSRuntimeTests.StaticPropertyEnum(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .option1
        case 1:
            self = .option2
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .option1:
            return 0
        case .option2:
            return 1
        }
    }
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumProperty_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumProperty_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumProperty_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyEnum.enumProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumProperty_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumProperty_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumProperty_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyEnum.enumProperty = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumConstant_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumConstant_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumConstant_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyEnum.enumConstant
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumBool_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumBool_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumBool_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyEnum.enumBool
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumBool_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumBool_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumBool_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyEnum.enumBool = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumVariable_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumVariable_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumVariable_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyEnum.enumVariable
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumVariable_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumVariable_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_enumVariable_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyEnum.enumVariable = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadonly_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadonly_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadonly_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyEnum.computedReadonly
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadWrite_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadWrite_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadWrite_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyEnum.computedReadWrite
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadWrite_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadWrite_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyEnum_static_computedReadWrite_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyEnum.computedReadWrite = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceProperty_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceProperty_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceProperty_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyNamespace.namespaceProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceProperty_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceProperty_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceProperty_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyNamespace.namespaceProperty = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceConstant_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceConstant_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_static_namespaceConstant_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyNamespace.namespaceConstant
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedProperty_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedProperty_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedProperty_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyNamespace.NestedProperties.nestedProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedProperty_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedProperty_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedProperty_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyNamespace.NestedProperties.nestedProperty = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedConstant_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedConstant_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedConstant_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyNamespace.NestedProperties.nestedConstant
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedDouble_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedDouble_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedDouble_get() -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyNamespace.NestedProperties.nestedDouble
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedDouble_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedDouble_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyNamespace_NestedProperties_static_nestedDouble_set(_ value: Float64) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyNamespace.NestedProperties.nestedDouble = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedStructGroupA_static_roundtripMetadata")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedStructGroupA_static_roundtripMetadata")
public func _bjs_BridgeJSRuntimeTests_NestedStructGroupA_static_roundtripMetadata() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedStructGroupA.roundtripMetadata(_: BridgeJSRuntimeTests.NestedStructGroupA.Metadata.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedStructGroupB_static_roundtripMetadata")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedStructGroupB_static_roundtripMetadata")
public func _bjs_BridgeJSRuntimeTests_NestedStructGroupB_static_roundtripMetadata() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedStructGroupB.roundtripMetadata(_: BridgeJSRuntimeTests.NestedStructGroupB.Metadata.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.NestedTypeHost.Variant: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSRuntimeTests.LightColor: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSRuntimeTests.LightColor {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSRuntimeTests.LightColor {
        return BridgeJSRuntimeTests.LightColor(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .red
        case 1:
            self = .yellow
        case 2:
            self = .green
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .red:
            return 0
        case .yellow:
            return 1
        case .green:
            return 2
        }
    }
}

extension BridgeJSRuntimeTests.ImportedPayloadSignal: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.ImportedPayloadSignal {
        switch caseId {
        case 0:
            return .start(String.bridgeJSStackPop())
        case 1:
            return .stop(Int.bridgeJSStackPop())
        case 2:
            return .idle
        default:
            fatalError("Unknown BridgeJSRuntimeTests.ImportedPayloadSignal case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .start(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .stop(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .idle:
            return Int32(2)
        }
    }
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripInt(_: Int.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripUInt(_: UInt.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt8")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt8")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt8(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripInt8(_: Int8.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt8")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt8")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt8(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripUInt8(_: UInt8.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt16")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt16")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt16(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripInt16(_: Int16.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt16")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt16")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt16(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripUInt16(_: UInt16.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt32")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt32")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt32(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripInt32(_: Int32.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt32")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt32")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt32(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripUInt32(_: UInt32.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt64")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt64")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripInt64(_ v: Int64) -> Int64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripInt64(_: Int64.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt64")
@_cdecl("bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt64")
public func _bjs_BridgeJSRuntimeTests_IntegerTypesSupportExports_static_roundTripUInt64(_ v: Int64) -> Int64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.IntegerTypesSupportExports.roundTripUInt64(_: UInt64.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripUint8Array")
@_cdecl("bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripUint8Array")
public func _bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripUint8Array(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.JSTypedArrayExports.roundTripUint8Array(_: JSUint8Array.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripFloat32Array")
@_cdecl("bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripFloat32Array")
public func _bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripFloat32Array(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.JSTypedArrayExports.roundTripFloat32Array(_: JSFloat32Array.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripFloat64Array")
@_cdecl("bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripFloat64Array")
public func _bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripFloat64Array(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.JSTypedArrayExports.roundTripFloat64Array(_: JSFloat64Array.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripInt32Array")
@_cdecl("bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripInt32Array")
public func _bjs_BridgeJSRuntimeTests_JSTypedArrayExports_static_roundTripInt32Array(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.JSTypedArrayExports.roundTripInt32Array(_: JSInt32Array.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalString")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalString")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalString(_ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalString(_: Optional<String>.bridgeJSLiftParameter(vIsSome, vBytes, vLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalInt")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalInt")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalInt(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalInt(_: Optional<Int>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalBool")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalBool")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalBool(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalBool(_: Optional<Bool>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalFloat")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalFloat")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalFloat(_ vIsSome: Int32, _ vValue: Float32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalFloat(_: Optional<Float>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalDouble")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalDouble")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalDouble(_ vIsSome: Int32, _ vValue: Float64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalDouble(_: Optional<Double>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSyntax")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSyntax")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSyntax(_ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalSyntax(_: Optional<String>.bridgeJSLiftParameter(vIsSome, vBytes, vLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalCaseEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalCaseEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalCaseEnum(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalCaseEnum(_: Optional<BridgeJSRuntimeTests.Status>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalStringRawValueEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalStringRawValueEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalStringRawValueEnum(_ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalStringRawValueEnum(_: Optional<BridgeJSRuntimeTests.Theme>.bridgeJSLiftParameter(vIsSome, vBytes, vLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalIntRawValueEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalIntRawValueEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalIntRawValueEnum(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalIntRawValueEnum(_: Optional<BridgeJSRuntimeTests.HttpStatus>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalInt64RawValueEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalInt64RawValueEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalInt64RawValueEnum(_ vIsSome: Int32, _ vValue: Int64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalInt64RawValueEnum(_: Optional<BridgeJSRuntimeTests.FileSize>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalUInt64RawValueEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalUInt64RawValueEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalUInt64RawValueEnum(_ vIsSome: Int32, _ vValue: Int64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalUInt64RawValueEnum(_: Optional<BridgeJSRuntimeTests.SessionId>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTSEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTSEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTSEnum(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalTSEnum(_: Optional<BridgeJSRuntimeTests.TSDirection>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTSStringEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTSStringEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTSStringEnum(_ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalTSStringEnum(_: Optional<BridgeJSRuntimeTests.TSTheme>.bridgeJSLiftParameter(vIsSome, vBytes, vLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalNamespacedEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalNamespacedEnum")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalNamespacedEnum(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalNamespacedEnum(_: Optional<BridgeJSRuntimeTests.Networking.API.Method>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSwiftClass")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSwiftClass")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSwiftClass(_ vIsSome: Int32, _ vValue: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalSwiftClass(_: Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalIntArray")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalIntArray")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalIntArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalIntArray(_: Optional<[Int]>.bridgeJSLiftParameter())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalStringArray")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalStringArray")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalStringArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalStringArray(_: Optional<[String]>.bridgeJSLiftParameter())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSwiftClassArray")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSwiftClassArray")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalSwiftClassArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalSwiftClassArray(_: Optional<[BridgeJSRuntimeTests.Greeter]>.bridgeJSLiftParameter())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAPIResult")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAPIResult(_ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalAPIResult(_: Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(vIsSome, vCaseId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTypedPayloadResult")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTypedPayloadResult")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalTypedPayloadResult(_ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalTypedPayloadResult(_: Optional<BridgeJSRuntimeTests.TypedPayloadResult>.bridgeJSLiftParameter(vIsSome, vCaseId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalComplexResult")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalComplexResult")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalComplexResult(_ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalComplexResult(_: Optional<BridgeJSRuntimeTests.ComplexResult>.bridgeJSLiftParameter(vIsSome, vCaseId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAllTypesResult")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAllTypesResult")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAllTypesResult(_ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalAllTypesResult(_: Optional<BridgeJSRuntimeTests.AllTypesResult>.bridgeJSLiftParameter(vIsSome, vCaseId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalPayloadResult")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalPayloadResult")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalPayloadResult(_ v: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalPayloadResult(_: BridgeJSRuntimeTests.OptionalAllTypesResult.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalPayloadResultOpt")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalPayloadResultOpt")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalPayloadResultOpt(_ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalPayloadResultOpt(_: Optional<BridgeJSRuntimeTests.OptionalAllTypesResult>.bridgeJSLiftParameter(vIsSome, vCaseId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAPIOptionalResult")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAPIOptionalResult")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_roundTripOptionalAPIOptionalResult(_ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.roundTripOptionalAPIOptionalResult(_: Optional<BridgeJSRuntimeTests.APIOptionalResult>.bridgeJSLiftParameter(vIsSome, vCaseId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_takeOptionalJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_takeOptionalJSObject")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_takeOptionalJSObject(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.OptionalSupportExports.takeOptionalJSObject(_: Optional<JSObject>.bridgeJSLiftParameter(valueIsSome, valueValue))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_applyOptionalGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_applyOptionalGreeter")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_applyOptionalGreeter(_ valueIsSome: Int32, _ valueValue: UnsafeMutableRawPointer, _ transform: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.applyOptionalGreeter(_: Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(valueIsSome, valueValue), _: _BJS_Closure_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_Sq28BridgeJSRuntimeTests_GreeterC.bridgeJSLift(transform))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_makeOptionalHolder")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_makeOptionalHolder")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_makeOptionalHolder(_ nullableGreeterIsSome: Int32, _ nullableGreeterValue: UnsafeMutableRawPointer, _ undefinedNumberIsSome: Int32, _ undefinedNumberValue: Float64) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.makeOptionalHolder(nullableGreeter: Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(nullableGreeterIsSome, nullableGreeterValue), undefinedNumber: JSUndefinedOr<Double>.bridgeJSLiftParameter(undefinedNumberIsSome, undefinedNumberValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_compareAPIResults")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_compareAPIResults")
public func _bjs_BridgeJSRuntimeTests_OptionalSupportExports_static_compareAPIResults(_ r1IsSome: Int32, _ r1CaseId: Int32, _ r2IsSome: Int32, _ r2CaseId: Int32) -> Void {
    #if arch(wasm32)
    let _tmp_r2 = Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(r2IsSome, r2CaseId)
    let _tmp_r1 = Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(r1IsSome, r1CaseId)
    let ret = BridgeJSRuntimeTests.OptionalSupportExports.compareAPIResults(_: _tmp_r1, _: _tmp_r2)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.OptionalAllTypesResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.OptionalAllTypesResult {
        switch caseId {
        case 0:
            return .optStruct(Optional<BridgeJSRuntimeTests.Address>.bridgeJSStackPop())
        case 1:
            return .optClass(Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSStackPop())
        case 2:
            return .optJSObject(Optional<JSObject>.bridgeJSStackPop())
        case 3:
            return .optNestedEnum(Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSStackPop())
        case 4:
            return .optArray(Optional<[Int]>.bridgeJSStackPop())
        case 5:
            return .optJsClass(Optional<JSObject>.bridgeJSStackPop().map { Foo(unsafelyWrapping: $0) })
        case 6:
            return .empty
        default:
            fatalError("Unknown BridgeJSRuntimeTests.OptionalAllTypesResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .optStruct(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .optClass(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .optJSObject(let param0):
            param0.bridgeJSStackPush()
            return Int32(2)
        case .optNestedEnum(let param0):
            param0.bridgeJSStackPush()
            return Int32(3)
        case .optArray(let param0):
            param0.bridgeJSStackPush()
            return Int32(4)
        case .optJsClass(let param0):
            param0.bridgeJSStackPush()
            return Int32(5)
        case .empty:
            return Int32(6)
        }
    }
}

extension BridgeJSRuntimeTests.APIOptionalResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> BridgeJSRuntimeTests.APIOptionalResult {
        switch caseId {
        case 0:
            return .success(Optional<String>.bridgeJSStackPop())
        case 1:
            return .failure(Optional<Int>.bridgeJSStackPop(), Optional<Bool>.bridgeJSStackPop())
        case 2:
            return .status(Optional<Bool>.bridgeJSStackPop(), Optional<Int>.bridgeJSStackPop(), Optional<String>.bridgeJSStackPop())
        default:
            fatalError("Unknown BridgeJSRuntimeTests.APIOptionalResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0, let param1):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            return Int32(1)
        case .status(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(2)
        }
    }
}

extension BridgeJSRuntimeTests.JSCoordinate: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.JSCoordinate {
        let longitude = Double.bridgeJSStackPop()
        let latitude = Double.bridgeJSStackPop()
        return BridgeJSRuntimeTests.JSCoordinate(latitude: latitude, longitude: longitude)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.latitude.bridgeJSStackPush()
        self.longitude.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_JSCoordinate(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_JSCoordinate()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_JSCoordinate")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_JSCoordinate_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_JSCoordinate_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_JSCoordinate(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_JSCoordinate_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_JSCoordinate")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_JSCoordinate_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_JSCoordinate_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_JSCoordinate() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_JSCoordinate_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_JSCoordinate_init")
@_cdecl("bjs_BridgeJSRuntimeTests_JSCoordinate_init")
public func _bjs_BridgeJSRuntimeTests_JSCoordinate_init(_ latitude: Float64, _ longitude: Float64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.JSCoordinate(latitude: Double.bridgeJSLiftParameter(latitude), longitude: Double.bridgeJSLiftParameter(longitude))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.NestedStructGroupA.Metadata: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.NestedStructGroupA.Metadata {
        let count = Int.bridgeJSStackPop()
        let label = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.NestedStructGroupA.Metadata(label: label, count: count)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.label.bridgeJSStackPush()
        self.count.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupA_Metadata(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupA_Metadata()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_NestedStructGroupA_Metadata")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupA_Metadata_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupA_Metadata_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupA_Metadata(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupA_Metadata_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_NestedStructGroupA_Metadata")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupA_Metadata_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupA_Metadata_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupA_Metadata() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupA_Metadata_extern()
}

extension BridgeJSRuntimeTests.NestedStructGroupB.Metadata: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.NestedStructGroupB.Metadata {
        let value = Double.bridgeJSStackPop()
        let tag = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.NestedStructGroupB.Metadata(tag: tag, value: value)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.tag.bridgeJSStackPush()
        self.value.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupB_Metadata(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupB_Metadata()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_NestedStructGroupB_Metadata")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupB_Metadata_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupB_Metadata_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupB_Metadata(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_NestedStructGroupB_Metadata_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_NestedStructGroupB_Metadata")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupB_Metadata_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupB_Metadata_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupB_Metadata() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_NestedStructGroupB_Metadata_extern()
}

extension BridgeJSRuntimeTests.NestedTypeHost.Label: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.NestedTypeHost.Label {
        let text = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.NestedTypeHost.Label(text: text)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.text.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_NestedTypeHost_Label(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_NestedTypeHost_Label()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_NestedTypeHost_Label")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedTypeHost_Label_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedTypeHost_Label_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_NestedTypeHost_Label(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_NestedTypeHost_Label_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_NestedTypeHost_Label")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedTypeHost_Label_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedTypeHost_Label_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_NestedTypeHost_Label() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_NestedTypeHost_Label_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_init")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_init")
public func _bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_init(_ textBytes: Int32, _ textLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedTypeHost.Label(text: String.bridgeJSLiftParameter(textBytes, textLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_static_maxLength_get")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_static_maxLength_get")
public func _bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_static_maxLength_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedTypeHost.Label.maxLength
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_static_untitled")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_static_untitled")
public func _bjs_BridgeJSRuntimeTests_NestedTypeHost_Label_static_untitled() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedTypeHost.Label.untitled()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Point: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.Point {
        let y = Int.bridgeJSStackPop()
        let x = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.Point(x: x, y: y)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_Point(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_Point()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_Point")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Point_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Point_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Point(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_Point_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_Point")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Point_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Point_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Point() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_Point_extern()
}

extension BridgeJSRuntimeTests.PointerFields: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.PointerFields {
        let mutPtr = UnsafeMutablePointer<UInt8>.bridgeJSStackPop()
        let ptr = UnsafePointer<UInt8>.bridgeJSStackPop()
        let opaque = OpaquePointer.bridgeJSStackPop()
        let mutRaw = UnsafeMutableRawPointer.bridgeJSStackPop()
        let raw = UnsafeRawPointer.bridgeJSStackPop()
        return BridgeJSRuntimeTests.PointerFields(raw: raw, mutRaw: mutRaw, opaque: opaque, ptr: ptr, mutPtr: mutPtr)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.raw.bridgeJSStackPush()
        self.mutRaw.bridgeJSStackPush()
        self.opaque.bridgeJSStackPush()
        self.ptr.bridgeJSStackPush()
        self.mutPtr.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_PointerFields(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_PointerFields()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_PointerFields")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_PointerFields_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_PointerFields_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_PointerFields(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_PointerFields_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_PointerFields")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_PointerFields_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_PointerFields_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_PointerFields() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_PointerFields_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PointerFields_init")
@_cdecl("bjs_BridgeJSRuntimeTests_PointerFields_init")
public func _bjs_BridgeJSRuntimeTests_PointerFields_init(_ raw: UnsafeMutableRawPointer, _ mutRaw: UnsafeMutableRawPointer, _ opaque: UnsafeMutableRawPointer, _ ptr: UnsafeMutableRawPointer, _ mutPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PointerFields(raw: UnsafeRawPointer.bridgeJSLiftParameter(raw), mutRaw: UnsafeMutableRawPointer.bridgeJSLiftParameter(mutRaw), opaque: OpaquePointer.bridgeJSLiftParameter(opaque), ptr: UnsafePointer<UInt8>.bridgeJSLiftParameter(ptr), mutPtr: UnsafeMutablePointer<UInt8>.bridgeJSLiftParameter(mutPtr))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.DataPoint: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.DataPoint {
        let optFlag = Optional<Bool>.bridgeJSStackPop()
        let optCount = Optional<Int>.bridgeJSStackPop()
        let label = String.bridgeJSStackPop()
        let y = Double.bridgeJSStackPop()
        let x = Double.bridgeJSStackPop()
        return BridgeJSRuntimeTests.DataPoint(x: x, y: y, label: label, optCount: optCount, optFlag: optFlag)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
        self.label.bridgeJSStackPush()
        self.optCount.bridgeJSStackPush()
        self.optFlag.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_DataPoint(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_DataPoint()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_DataPoint")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_DataPoint_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_DataPoint_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_DataPoint(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_DataPoint_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_DataPoint")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_DataPoint_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_DataPoint_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_DataPoint() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_DataPoint_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataPoint_init")
@_cdecl("bjs_BridgeJSRuntimeTests_DataPoint_init")
public func _bjs_BridgeJSRuntimeTests_DataPoint_init(_ x: Float64, _ y: Float64, _ labelBytes: Int32, _ labelLength: Int32, _ optCountIsSome: Int32, _ optCountValue: Int32, _ optFlagIsSome: Int32, _ optFlagValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataPoint(x: Double.bridgeJSLiftParameter(x), y: Double.bridgeJSLiftParameter(y), label: String.bridgeJSLiftParameter(labelBytes, labelLength), optCount: Optional<Int>.bridgeJSLiftParameter(optCountIsSome, optCountValue), optFlag: Optional<Bool>.bridgeJSLiftParameter(optFlagIsSome, optFlagValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataPoint_static_dimensions_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DataPoint_static_dimensions_get")
public func _bjs_BridgeJSRuntimeTests_DataPoint_static_dimensions_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataPoint.dimensions
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataPoint_static_origin")
@_cdecl("bjs_BridgeJSRuntimeTests_DataPoint_static_origin")
public func _bjs_BridgeJSRuntimeTests_DataPoint_static_origin() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataPoint.origin()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.PublicPoint: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.PublicPoint {
        let y = Int.bridgeJSStackPop()
        let x = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.PublicPoint(x: x, y: y)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
    }

    public init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_PublicPoint(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    public func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_PublicPoint()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_PublicPoint")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_PublicPoint_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_PublicPoint_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_PublicPoint(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_PublicPoint_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_PublicPoint")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_PublicPoint_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_PublicPoint_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_PublicPoint() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_PublicPoint_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PublicPoint_init")
@_cdecl("bjs_BridgeJSRuntimeTests_PublicPoint_init")
public func _bjs_BridgeJSRuntimeTests_PublicPoint_init(_ x: Int32, _ y: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PublicPoint(x: Int.bridgeJSLiftParameter(x), y: Int.bridgeJSLiftParameter(y))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Address: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.Address {
        let zipCode = Optional<Int>.bridgeJSStackPop()
        let city = String.bridgeJSStackPop()
        let street = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.Address(street: street, city: city, zipCode: zipCode)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.street.bridgeJSStackPush()
        self.city.bridgeJSStackPush()
        self.zipCode.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_Address(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_Address()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_Address")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Address_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Address_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Address(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_Address_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_Address")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Address_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Address_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Address() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_Address_extern()
}

extension BridgeJSRuntimeTests.Contact: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.Contact {
        let secondaryAddress = Optional<BridgeJSRuntimeTests.Address>.bridgeJSStackPop()
        let email = Optional<String>.bridgeJSStackPop()
        let address = BridgeJSRuntimeTests.Address.bridgeJSStackPop()
        let age = Int.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.Contact(name: name, age: age, address: address, email: email, secondaryAddress: secondaryAddress)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.age.bridgeJSStackPush()
        self.address.bridgeJSStackPush()
        self.email.bridgeJSStackPush()
        self.secondaryAddress.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_Contact(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_Contact()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_Contact")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Contact_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Contact_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Contact(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_Contact_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_Contact")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Contact_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Contact_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Contact() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_Contact_extern()
}

extension BridgeJSRuntimeTests.Config: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.Config {
        let status = BridgeJSRuntimeTests.Status.bridgeJSStackPop()
        let direction = Optional<BridgeJSRuntimeTests.Direction>.bridgeJSStackPop()
        let theme = Optional<BridgeJSRuntimeTests.Theme>.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.Config(name: name, theme: theme, direction: direction, status: status)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.theme.bridgeJSStackPush()
        self.direction.bridgeJSStackPush()
        self.status.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_Config(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_Config()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_Config")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Config_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Config_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Config(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_Config_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_Config")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Config_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Config_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Config() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_Config_extern()
}

extension BridgeJSRuntimeTests.SessionData: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.SessionData {
        let owner = Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSStackPop()
        let id = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.SessionData(id: id, owner: owner)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.owner.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_SessionData(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_SessionData()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_SessionData")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_SessionData_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_SessionData_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_SessionData(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_SessionData_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_SessionData")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_SessionData_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_SessionData_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_SessionData() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_SessionData_extern()
}

extension BridgeJSRuntimeTests.ValidationReport: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.ValidationReport {
        let outcome = Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSStackPop()
        let status = Optional<BridgeJSRuntimeTests.Status>.bridgeJSStackPop()
        let result = BridgeJSRuntimeTests.APIResult.bridgeJSStackPop()
        let id = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.ValidationReport(id: id, result: result, status: status, outcome: outcome)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.result.bridgeJSStackPush()
        self.status.bridgeJSStackPush()
        self.outcome.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_ValidationReport(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_ValidationReport()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_ValidationReport")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ValidationReport_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ValidationReport_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ValidationReport(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_ValidationReport_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_ValidationReport")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ValidationReport_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ValidationReport_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ValidationReport() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_ValidationReport_extern()
}

extension BridgeJSRuntimeTests.AdvancedConfig: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.AdvancedConfig {
        let overrideDefaults = Optional<BridgeJSRuntimeTests.ConfigStruct>.bridgeJSStackPop()
        let defaults = BridgeJSRuntimeTests.ConfigStruct.bridgeJSStackPop()
        let location = Optional<BridgeJSRuntimeTests.DataPoint>.bridgeJSStackPop()
        let metadata = Optional<JSObject>.bridgeJSStackPop()
        let result = Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSStackPop()
        let status = BridgeJSRuntimeTests.Status.bridgeJSStackPop()
        let theme = BridgeJSRuntimeTests.Theme.bridgeJSStackPop()
        let enabled = Bool.bridgeJSStackPop()
        let title = String.bridgeJSStackPop()
        let id = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.AdvancedConfig(id: id, title: title, enabled: enabled, theme: theme, status: status, result: result, metadata: metadata, location: location, defaults: defaults, overrideDefaults: overrideDefaults)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.title.bridgeJSStackPush()
        self.enabled.bridgeJSStackPush()
        self.theme.bridgeJSStackPush()
        self.status.bridgeJSStackPush()
        self.result.bridgeJSStackPush()
        self.metadata.bridgeJSStackPush()
        self.location.bridgeJSStackPush()
        self.defaults.bridgeJSStackPush()
        self.overrideDefaults.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_AdvancedConfig(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_AdvancedConfig()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_AdvancedConfig")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_AdvancedConfig_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_AdvancedConfig_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_AdvancedConfig(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_AdvancedConfig_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_AdvancedConfig")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_AdvancedConfig_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_AdvancedConfig_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_AdvancedConfig() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_AdvancedConfig_extern()
}

extension BridgeJSRuntimeTests.MeasurementConfig: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.MeasurementConfig {
        let optionalRatio = Optional<BridgeJSRuntimeTests.Ratio>.bridgeJSStackPop()
        let optionalPrecision = Optional<BridgeJSRuntimeTests.Precision>.bridgeJSStackPop()
        let ratio = BridgeJSRuntimeTests.Ratio.bridgeJSStackPop()
        let precision = BridgeJSRuntimeTests.Precision.bridgeJSStackPop()
        return BridgeJSRuntimeTests.MeasurementConfig(precision: precision, ratio: ratio, optionalPrecision: optionalPrecision, optionalRatio: optionalRatio)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.precision.bridgeJSStackPush()
        self.ratio.bridgeJSStackPush()
        self.optionalPrecision.bridgeJSStackPush()
        self.optionalRatio.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_MeasurementConfig(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_MeasurementConfig()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_MeasurementConfig")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_MeasurementConfig_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_MeasurementConfig_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_MeasurementConfig(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_MeasurementConfig_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_MeasurementConfig")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_MeasurementConfig_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_MeasurementConfig_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_MeasurementConfig() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_MeasurementConfig_extern()
}

extension BridgeJSRuntimeTests.MathOperations: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.MathOperations {
        let baseValue = Double.bridgeJSStackPop()
        return BridgeJSRuntimeTests.MathOperations(baseValue: baseValue)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.baseValue.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_MathOperations(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_MathOperations()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_MathOperations")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_MathOperations_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_MathOperations_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_MathOperations(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_MathOperations_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_MathOperations")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_MathOperations_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_MathOperations_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_MathOperations() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_MathOperations_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathOperations_init")
@_cdecl("bjs_BridgeJSRuntimeTests_MathOperations_init")
public func _bjs_BridgeJSRuntimeTests_MathOperations_init(_ baseValue: Float64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.MathOperations(baseValue: Double.bridgeJSLiftParameter(baseValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathOperations_add")
@_cdecl("bjs_BridgeJSRuntimeTests_MathOperations_add")
public func _bjs_BridgeJSRuntimeTests_MathOperations_add(_ a: Float64, _ b: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.MathOperations.bridgeJSLiftParameter().add(a: Double.bridgeJSLiftParameter(a), b: Double.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathOperations_multiply")
@_cdecl("bjs_BridgeJSRuntimeTests_MathOperations_multiply")
public func _bjs_BridgeJSRuntimeTests_MathOperations_multiply(_ a: Float64, _ b: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.MathOperations.bridgeJSLiftParameter().multiply(a: Double.bridgeJSLiftParameter(a), b: Double.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathOperations_static_subtract")
@_cdecl("bjs_BridgeJSRuntimeTests_MathOperations_static_subtract")
public func _bjs_BridgeJSRuntimeTests_MathOperations_static_subtract(_ a: Float64, _ b: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.MathOperations.subtract(a: Double.bridgeJSLiftParameter(a), b: Double.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.CopyableCart: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.CopyableCart {
        let note = Optional<String>.bridgeJSStackPop()
        let x = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.CopyableCart(x: x, note: note)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.note.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCart(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCart()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_CopyableCart")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCart_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCart_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCart(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCart_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_CopyableCart")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCart_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCart_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCart() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCart_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_CopyableCart_static_fromJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_CopyableCart_static_fromJSObject")
public func _bjs_BridgeJSRuntimeTests_CopyableCart_static_fromJSObject(_ object: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.CopyableCart.fromJSObject(_: JSObject.bridgeJSLiftParameter(object))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.CopyableCartItem: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.CopyableCartItem {
        let quantity = Int.bridgeJSStackPop()
        let sku = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.CopyableCartItem(sku: sku, quantity: quantity)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.sku.bridgeJSStackPush()
        self.quantity.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCartItem(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCartItem()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_CopyableCartItem")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCartItem_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCartItem_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCartItem(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_CopyableCartItem_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_CopyableCartItem")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCartItem_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCartItem_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCartItem() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_CopyableCartItem_extern()
}

extension BridgeJSRuntimeTests.CopyableNestedCart: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.CopyableNestedCart {
        let shippingAddress = Optional<BridgeJSRuntimeTests.Address>.bridgeJSStackPop()
        let item = BridgeJSRuntimeTests.CopyableCartItem.bridgeJSStackPop()
        let id = Int.bridgeJSStackPop()
        return BridgeJSRuntimeTests.CopyableNestedCart(id: id, item: item, shippingAddress: shippingAddress)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.item.bridgeJSStackPush()
        self.shippingAddress.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_CopyableNestedCart(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_CopyableNestedCart()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_CopyableNestedCart")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableNestedCart_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableNestedCart_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_CopyableNestedCart(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_CopyableNestedCart_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_CopyableNestedCart")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableNestedCart_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableNestedCart_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_CopyableNestedCart() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_CopyableNestedCart_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_CopyableNestedCart_static_fromJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_CopyableNestedCart_static_fromJSObject")
public func _bjs_BridgeJSRuntimeTests_CopyableNestedCart_static_fromJSObject(_ object: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.CopyableNestedCart.fromJSObject(_: JSObject.bridgeJSLiftParameter(object))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.ConfigStruct: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.ConfigStruct {
        let value = Int.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return BridgeJSRuntimeTests.ConfigStruct(name: name, value: value)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.value.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_ConfigStruct(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_ConfigStruct()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_ConfigStruct")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ConfigStruct_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ConfigStruct_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ConfigStruct(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_ConfigStruct_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_ConfigStruct")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ConfigStruct_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ConfigStruct_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ConfigStruct() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_ConfigStruct_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ConfigStruct_static_defaultConfig_get")
@_cdecl("bjs_BridgeJSRuntimeTests_ConfigStruct_static_defaultConfig_get")
public func _bjs_BridgeJSRuntimeTests_ConfigStruct_static_defaultConfig_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ConfigStruct.defaultConfig
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ConfigStruct_static_defaultConfig_set")
@_cdecl("bjs_BridgeJSRuntimeTests_ConfigStruct_static_defaultConfig_set")
public func _bjs_BridgeJSRuntimeTests_ConfigStruct_static_defaultConfig_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.ConfigStruct.defaultConfig = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ConfigStruct_static_maxRetries_get")
@_cdecl("bjs_BridgeJSRuntimeTests_ConfigStruct_static_maxRetries_get")
public func _bjs_BridgeJSRuntimeTests_ConfigStruct_static_maxRetries_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ConfigStruct.maxRetries
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ConfigStruct_static_timeout_get")
@_cdecl("bjs_BridgeJSRuntimeTests_ConfigStruct_static_timeout_get")
public func _bjs_BridgeJSRuntimeTests_ConfigStruct_static_timeout_get() -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ConfigStruct.timeout
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ConfigStruct_static_timeout_set")
@_cdecl("bjs_BridgeJSRuntimeTests_ConfigStruct_static_timeout_set")
public func _bjs_BridgeJSRuntimeTests_ConfigStruct_static_timeout_set(_ value: Float64) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.ConfigStruct.timeout = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ConfigStruct_static_computedSetting_get")
@_cdecl("bjs_BridgeJSRuntimeTests_ConfigStruct_static_computedSetting_get")
public func _bjs_BridgeJSRuntimeTests_ConfigStruct_static_computedSetting_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ConfigStruct.computedSetting
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Vector2D: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.Vector2D {
        let dy = Double.bridgeJSStackPop()
        let dx = Double.bridgeJSStackPop()
        return BridgeJSRuntimeTests.Vector2D(dx: dx, dy: dy)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.dx.bridgeJSStackPush()
        self.dy.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_Vector2D(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_Vector2D()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_Vector2D")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Vector2D_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Vector2D_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_Vector2D(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_Vector2D_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_Vector2D")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Vector2D_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Vector2D_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_Vector2D() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_Vector2D_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Vector2D_init")
@_cdecl("bjs_BridgeJSRuntimeTests_Vector2D_init")
public func _bjs_BridgeJSRuntimeTests_Vector2D_init(_ dx: Float64, _ dy: Float64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Vector2D(dx: Double.bridgeJSLiftParameter(dx), dy: Double.bridgeJSLiftParameter(dy))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Vector2D_magnitude")
@_cdecl("bjs_BridgeJSRuntimeTests_Vector2D_magnitude")
public func _bjs_BridgeJSRuntimeTests_Vector2D_magnitude() -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Vector2D.bridgeJSLiftParameter().magnitude()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Vector2D_scaled")
@_cdecl("bjs_BridgeJSRuntimeTests_Vector2D_scaled")
public func _bjs_BridgeJSRuntimeTests_Vector2D_scaled(_ factor: Float64) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Vector2D.bridgeJSLiftParameter().scaled(by: Double.bridgeJSLiftParameter(factor))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.JSObjectContainer: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.JSObjectContainer {
        let optionalObject = Optional<JSObject>.bridgeJSStackPop()
        let object = JSObject.bridgeJSStackPop()
        return BridgeJSRuntimeTests.JSObjectContainer(object: object, optionalObject: optionalObject)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.object.bridgeJSStackPush()
        self.optionalObject.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_JSObjectContainer(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_JSObjectContainer()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_JSObjectContainer")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_JSObjectContainer_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_JSObjectContainer_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_JSObjectContainer(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_JSObjectContainer_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_JSObjectContainer")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_JSObjectContainer_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_JSObjectContainer_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_JSObjectContainer() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_JSObjectContainer_extern()
}

extension BridgeJSRuntimeTests.FooContainer: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.FooContainer {
        let optionalFoo = Optional<JSObject>.bridgeJSStackPop().map { Foo(unsafelyWrapping: $0) }
        let foo = Foo(unsafelyWrapping: JSObject.bridgeJSStackPop())
        return BridgeJSRuntimeTests.FooContainer(foo: foo, optionalFoo: optionalFoo)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.foo.jsObject.bridgeJSStackPush()
        self.optionalFoo.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_FooContainer(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_FooContainer()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_FooContainer")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_FooContainer_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_FooContainer_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_FooContainer(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_FooContainer_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_FooContainer")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_FooContainer_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_FooContainer_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_FooContainer() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_FooContainer_extern()
}

extension BridgeJSRuntimeTests.ArrayMembers: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> BridgeJSRuntimeTests.ArrayMembers {
        let optStrings = Optional<[String]>.bridgeJSStackPop()
        let ints = [Int].bridgeJSStackPop()
        return BridgeJSRuntimeTests.ArrayMembers(ints: ints, optStrings: optStrings)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.ints.bridgeJSStackPush()
        self.optStrings.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_BridgeJSRuntimeTests_ArrayMembers(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_BridgeJSRuntimeTests_ArrayMembers()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_BridgeJSRuntimeTests_ArrayMembers")
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ArrayMembers_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ArrayMembers_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_BridgeJSRuntimeTests_ArrayMembers(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_BridgeJSRuntimeTests_ArrayMembers_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_BridgeJSRuntimeTests_ArrayMembers")
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ArrayMembers_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ArrayMembers_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_BridgeJSRuntimeTests_ArrayMembers() -> Int32 {
    return _bjs_struct_lift_BridgeJSRuntimeTests_ArrayMembers_extern()
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArrayMembers_sumValues")
@_cdecl("bjs_BridgeJSRuntimeTests_ArrayMembers_sumValues")
public func _bjs_BridgeJSRuntimeTests_ArrayMembers_sumValues() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArrayMembers.bridgeJSLiftParameter().sumValues(_: [Int].bridgeJSStackPop())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ArrayMembers_firstString")
@_cdecl("bjs_BridgeJSRuntimeTests_ArrayMembers_firstString")
public func _bjs_BridgeJSRuntimeTests_ArrayMembers_firstString() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ArrayMembers.bridgeJSLiftParameter().firstString(_: [String].bridgeJSStackPop())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeTag")
@_cdecl("bjs_BridgeJSRuntimeTests_makeTag")
public func _bjs_BridgeJSRuntimeTests_makeTag(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = makeTag(_: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripPolygon")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripPolygon")
public func _bjs_BridgeJSRuntimeTests_roundTripPolygon(_ polygon: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripPolygon(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(polygon))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_appendVertex")
@_cdecl("bjs_BridgeJSRuntimeTests_appendVertex")
public func _bjs_BridgeJSRuntimeTests_appendVertex(_ polygon: UnsafeMutableRawPointer, _ value: Float64) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = appendVertex(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(polygon), _: Double.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_optionalRoundTripPolygon")
@_cdecl("bjs_BridgeJSRuntimeTests_optionalRoundTripPolygon")
public func _bjs_BridgeJSRuntimeTests_optionalRoundTripPolygon(_ polygonIsSome: Int32, _ polygonValue: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = optionalRoundTripPolygon(_: Optional<BridgeJSRuntimeTests.Polygon>.bridgeJSLiftParameter(polygonIsSome, polygonValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_polygonVertexCount")
@_cdecl("bjs_BridgeJSRuntimeTests_polygonVertexCount")
public func _bjs_BridgeJSRuntimeTests_polygonVertexCount(_ polygon: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = polygonVertexCount(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(polygon))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripPolygonArray")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripPolygonArray")
public func _bjs_BridgeJSRuntimeTests_roundTripPolygonArray() -> Void {
    #if arch(wasm32)
    let ret = roundTripPolygonArray(_: [BridgeJSRuntimeTests.Polygon].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_concatPolygons")
@_cdecl("bjs_BridgeJSRuntimeTests_concatPolygons")
public func _bjs_BridgeJSRuntimeTests_concatPolygons() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = concatPolygons(_: [BridgeJSRuntimeTests.Polygon].bridgeJSStackPop())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_validatePolygon")
@_cdecl("bjs_BridgeJSRuntimeTests_validatePolygon")
public func _bjs_BridgeJSRuntimeTests_validatePolygon(_ polygon: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    do {
        let ret = try validatePolygon(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(polygon))
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return UnsafeMutableRawPointer(bitPattern: -1).unsafelyUnwrapped
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_splitPolygon")
@_cdecl("bjs_BridgeJSRuntimeTests_splitPolygon")
public func _bjs_BridgeJSRuntimeTests_splitPolygon(_ polygon: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = splitPolygon(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(polygon))
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makePolygonInspector")
@_cdecl("bjs_BridgeJSRuntimeTests_makePolygonInspector")
public func _bjs_BridgeJSRuntimeTests_makePolygonInspector() -> Int32 {
    #if arch(wasm32)
    let ret = makePolygonInspector()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalPolygonArray")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalPolygonArray")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalPolygonArray() -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalPolygonArray(_: [Optional<BridgeJSRuntimeTests.Polygon>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeTagHolder")
@_cdecl("bjs_BridgeJSRuntimeTests_makeTagHolder")
public func _bjs_BridgeJSRuntimeTests_makeTagHolder(_ nameBytes: Int32, _ nameLength: Int32, _ version: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = makeTagHolder(_: String.bridgeJSLiftParameter(nameBytes, nameLength), _: Int.bridgeJSLiftParameter(version))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripCoordinate")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripCoordinate")
public func _bjs_BridgeJSRuntimeTests_roundTripCoordinate() -> Void {
    #if arch(wasm32)
    let ret = roundTripCoordinate(_: BridgeJSRuntimeTests.Coordinate.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripPriority")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripPriority")
public func _bjs_BridgeJSRuntimeTests_roundTripPriority(_ priority: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripPriority(_: BridgeJSRuntimeTests.Priority.bridgeJSLiftParameter(priority))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripAlert")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripAlert")
public func _bjs_BridgeJSRuntimeTests_roundTripAlert(_ alert: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundTripAlert(_: BridgeJSRuntimeTests.Alert.bridgeJSLiftParameter(alert))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAlert")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAlert")
public func _bjs_BridgeJSRuntimeTests_makeAlert(_ level: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = makeAlert(_: BridgeJSRuntimeTests.Severity.bridgeJSLiftParameter(level))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripShape")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripShape")
public func _bjs_BridgeJSRuntimeTests_roundTripShape(_ s: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripShape(_: BridgeJSRuntimeTests.Shape.bridgeJSLiftParameter(s))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeShapePolygon")
@_cdecl("bjs_BridgeJSRuntimeTests_makeShapePolygon")
public func _bjs_BridgeJSRuntimeTests_makeShapePolygon(_ polygon: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = makeShapePolygon(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(polygon))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeShapeEmpty")
@_cdecl("bjs_BridgeJSRuntimeTests_makeShapeEmpty")
public func _bjs_BridgeJSRuntimeTests_makeShapeEmpty() -> Void {
    #if arch(wasm32)
    let ret = makeShapeEmpty()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUserId")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUserId")
public func _bjs_BridgeJSRuntimeTests_roundTripUserId(_ id: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundTripUserId(_: BridgeJSRuntimeTests.UserId.bridgeJSLiftParameter(id))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalUserId")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalUserId")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalUserId(_ idIsSome: Int32, _ idValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalUserId(_: Optional<BridgeJSRuntimeTests.UserId>.bridgeJSLiftParameter(idIsSome, idValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUserIdArray")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUserIdArray")
public func _bjs_BridgeJSRuntimeTests_roundTripUserIdArray() -> Void {
    #if arch(wasm32)
    let ret = roundTripUserIdArray(_: [BridgeJSRuntimeTests.UserId].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripBoxed")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripBoxed")
public func _bjs_BridgeJSRuntimeTests_roundTripBoxed(_ boxedKind: Int32, _ boxedPayload1: Int32, _ boxedPayload2: Float64) -> Void {
    #if arch(wasm32)
    let ret = roundTripBoxed(_: BridgeJSRuntimeTests.Boxed.bridgeJSLiftParameter(boxedKind, boxedPayload1, boxedPayload2))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalBoxed")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalBoxed")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalBoxed(_ boxedIsSome: Int32, _ boxedKind: Int32, _ boxedPayload1: Int32, _ boxedPayload2: Float64) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalBoxed(_: Optional<BridgeJSRuntimeTests.Boxed>.bridgeJSLiftParameter(boxedIsSome, boxedKind, boxedPayload1, boxedPayload2))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_awaitAsyncCallback")
@_cdecl("bjs_BridgeJSRuntimeTests_awaitAsyncCallback")
public func _bjs_BridgeJSRuntimeTests_awaitAsyncCallback(_ fetch: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_SS, reject: Promise_reject) { () async throws(JSException) -> String in
        return try await awaitAsyncCallback(_: _BJS_Closure_20BridgeJSRuntimeTestsYaKSS_SS.bridgeJSLift(fetch))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAsyncParser")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAsyncParser")
public func _bjs_BridgeJSRuntimeTests_makeAsyncParser() -> Int32 {
    #if arch(wasm32)
    let ret = makeAsyncParser()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAsyncEcho")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAsyncEcho")
public func _bjs_BridgeJSRuntimeTests_makeAsyncEcho() -> Int32 {
    #if arch(wasm32)
    let ret = makeAsyncEcho()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAsyncRecorder")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAsyncRecorder")
public func _bjs_BridgeJSRuntimeTests_makeAsyncRecorder() -> Int32 {
    #if arch(wasm32)
    let ret = makeAsyncRecorder()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_lastRecordedValue")
@_cdecl("bjs_BridgeJSRuntimeTests_lastRecordedValue")
public func _bjs_BridgeJSRuntimeTests_lastRecordedValue() -> Void {
    #if arch(wasm32)
    let ret = lastRecordedValue()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAsyncPayloadLoader")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAsyncPayloadLoader")
public func _bjs_BridgeJSRuntimeTests_makeAsyncPayloadLoader() -> Int32 {
    #if arch(wasm32)
    let ret = makeAsyncPayloadLoader()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_awaitPayloadCallback")
@_cdecl("bjs_BridgeJSRuntimeTests_awaitPayloadCallback")
public func _bjs_BridgeJSRuntimeTests_awaitPayloadCallback(_ load: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_SS, reject: Promise_reject) { () async throws(JSException) -> String in
        return try await awaitPayloadCallback(_: _BJS_Closure_20BridgeJSRuntimeTestsYaKSb_39BridgeJSRuntimeTests_AsyncPayloadResultO.bridgeJSLift(load))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAsyncPointMaker")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAsyncPointMaker")
public func _bjs_BridgeJSRuntimeTests_makeAsyncPointMaker() -> Int32 {
    #if arch(wasm32)
    let ret = makeAsyncPointMaker()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeThrowingParser")
@_cdecl("bjs_BridgeJSRuntimeTests_makeThrowingParser")
public func _bjs_BridgeJSRuntimeTests_makeThrowingParser() -> Int32 {
    #if arch(wasm32)
    let ret = makeThrowingParser()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_runValidator")
@_cdecl("bjs_BridgeJSRuntimeTests_runValidator")
public func _bjs_BridgeJSRuntimeTests_runValidator(_ validate: Int32) -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try runValidator(_: _BJS_Closure_20BridgeJSRuntimeTestsKSS_Sb.bridgeJSLift(validate))
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripVoid")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripVoid")
public func _bjs_BridgeJSRuntimeTests_roundTripVoid() -> Void {
    #if arch(wasm32)
    roundTripVoid()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripFloat")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripFloat")
public func _bjs_BridgeJSRuntimeTests_roundTripFloat(_ v: Float32) -> Float32 {
    #if arch(wasm32)
    let ret = roundTripFloat(v: Float.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripDouble")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripDouble")
public func _bjs_BridgeJSRuntimeTests_roundTripDouble(_ v: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = roundTripDouble(v: Double.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripBool")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripBool")
public func _bjs_BridgeJSRuntimeTests_roundTripBool(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundTripBool(v: Bool.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripString")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripString")
public func _bjs_BridgeJSRuntimeTests_roundTripString(_ vBytes: Int32, _ vLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripString(v: String.bridgeJSLiftParameter(vBytes, vLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripSwiftHeapObject")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripSwiftHeapObject")
public func _bjs_BridgeJSRuntimeTests_roundTripSwiftHeapObject(_ v: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripSwiftHeapObject(v: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUnsafeRawPointer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUnsafeRawPointer")
public func _bjs_BridgeJSRuntimeTests_roundTripUnsafeRawPointer(_ v: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripUnsafeRawPointer(v: UnsafeRawPointer.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUnsafeMutableRawPointer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUnsafeMutableRawPointer")
public func _bjs_BridgeJSRuntimeTests_roundTripUnsafeMutableRawPointer(_ v: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripUnsafeMutableRawPointer(v: UnsafeMutableRawPointer.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOpaquePointer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOpaquePointer")
public func _bjs_BridgeJSRuntimeTests_roundTripOpaquePointer(_ v: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripOpaquePointer(v: OpaquePointer.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUnsafePointer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUnsafePointer")
public func _bjs_BridgeJSRuntimeTests_roundTripUnsafePointer(_ v: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripUnsafePointer(v: UnsafePointer<UInt8>.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUnsafeMutablePointer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUnsafeMutablePointer")
public func _bjs_BridgeJSRuntimeTests_roundTripUnsafeMutablePointer(_ v: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripUnsafeMutablePointer(v: UnsafeMutablePointer<UInt8>.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripJSObject")
public func _bjs_BridgeJSRuntimeTests_roundTripJSObject(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundTripJSObject(v: JSObject.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripDictionaryExport")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripDictionaryExport")
public func _bjs_BridgeJSRuntimeTests_roundTripDictionaryExport() -> Void {
    #if arch(wasm32)
    let ret = roundTripDictionaryExport(v: [String: Int].bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalDictionaryExport")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalDictionaryExport")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalDictionaryExport() -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalDictionaryExport(v: Optional<[String: String]>.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripJSValue")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripJSValue")
public func _bjs_BridgeJSRuntimeTests_roundTripJSValue(_ vKind: Int32, _ vPayload1: Int32, _ vPayload2: Float64) -> Void {
    #if arch(wasm32)
    let ret = roundTripJSValue(v: JSValue.bridgeJSLiftParameter(vKind, vPayload1, vPayload2))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalJSValue")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalJSValue")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalJSValue(_ vIsSome: Int32, _ vKind: Int32, _ vPayload1: Int32, _ vPayload2: Float64) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalJSValue(v: Optional<JSValue>.bridgeJSLiftParameter(vIsSome, vKind, vPayload1, vPayload2))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalJSValueArray")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalJSValueArray")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalJSValueArray() -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalJSValueArray(v: Optional<[JSValue]>.bridgeJSLiftParameter())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeImportedFoo")
@_cdecl("bjs_BridgeJSRuntimeTests_makeImportedFoo")
public func _bjs_BridgeJSRuntimeTests_makeImportedFoo(_ valueBytes: Int32, _ valueLength: Int32) -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try makeImportedFoo(value: String.bridgeJSLiftParameter(valueBytes, valueLength))
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripOptionalImportedClass")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripOptionalImportedClass")
public func _bjs_BridgeJSRuntimeTests_roundTripOptionalImportedClass(_ vIsSome: Int32, _ vValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalImportedClass(v: Optional<Foo>.bridgeJSLiftParameter(vIsSome, vValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsSwiftError")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsSwiftError")
public func _bjs_BridgeJSRuntimeTests_throwsSwiftError(_ shouldThrow: Int32) -> Void {
    #if arch(wasm32)
    do {
        try throwsSwiftError(shouldThrow: Bool.bridgeJSLiftParameter(shouldThrow))
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithIntResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithIntResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithIntResult() -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try throwsWithIntResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithStringResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithStringResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithStringResult() -> Void {
    #if arch(wasm32)
    do {
        let ret = try throwsWithStringResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithBoolResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithBoolResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithBoolResult() -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try throwsWithBoolResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithFloatResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithFloatResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithFloatResult() -> Float32 {
    #if arch(wasm32)
    do {
        let ret = try throwsWithFloatResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0.0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithDoubleResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithDoubleResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithDoubleResult() -> Float64 {
    #if arch(wasm32)
    do {
        let ret = try throwsWithDoubleResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0.0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithSwiftHeapObjectResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithSwiftHeapObjectResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithSwiftHeapObjectResult() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    do {
        let ret = try throwsWithSwiftHeapObjectResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return UnsafeMutableRawPointer(bitPattern: -1).unsafelyUnwrapped
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_throwsWithJSObjectResult")
@_cdecl("bjs_BridgeJSRuntimeTests_throwsWithJSObjectResult")
public func _bjs_BridgeJSRuntimeTests_throwsWithJSObjectResult() -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try throwsWithJSObjectResult()
        return ret.bridgeJSLowerReturn()
    } catch let error {
        if let error = error.thrownValue.object {
            withExtendedLifetime(error) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        } else {
            let jsError = JSError(message: error.description)
            withExtendedLifetime(jsError.jsObject) {
                _swift_js_throw(Int32(bitPattern: $0.id))
            }
        }
        return 0
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_zeroArgAsyncThrows")
@_cdecl("bjs_BridgeJSRuntimeTests_zeroArgAsyncThrows")
public func _bjs_BridgeJSRuntimeTests_zeroArgAsyncThrows() -> Int32 {
    #if arch(wasm32)
    let __bjs_capture = 0
    return _bjs_makePromise(resolve: Promise_resolve_SS, reject: Promise_reject) { [__bjs_capture] () async throws(JSException) -> String in
        _ = __bjs_capture
        return try await zeroArgAsyncThrows()
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripVoid")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripVoid")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripVoid() -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_y, reject: Promise_reject) {
        await asyncRoundTripVoid()
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripInt")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripInt")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripInt(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Si, reject: Promise_reject) {
        return await asyncRoundTripInt(v: Int.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripFloat")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripFloat")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripFloat(_ v: Float32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Sf, reject: Promise_reject) {
        return await asyncRoundTripFloat(v: Float.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripDouble")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripDouble")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripDouble(_ v: Float64) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Sd, reject: Promise_reject) {
        return await asyncRoundTripDouble(v: Double.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripBool")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripBool")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripBool(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Sb, reject: Promise_reject) {
        return await asyncRoundTripBool(v: Bool.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripString")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripString")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripString(_ vBytes: Int32, _ vLength: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_SS, reject: Promise_reject) {
        return await asyncRoundTripString(v: String.bridgeJSLiftParameter(vBytes, vLength))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripSwiftHeapObject")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripSwiftHeapObject")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripSwiftHeapObject(_ v: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_28BridgeJSRuntimeTests_GreeterC, reject: Promise_reject) {
        return await asyncRoundTripSwiftHeapObject(v: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripJSObject")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripJSObject(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_8JSObjectC, reject: Promise_reject) {
        return await asyncRoundTripJSObject(v: JSObject.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_takeGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_takeGreeter")
public func _bjs_BridgeJSRuntimeTests_takeGreeter(_ g: UnsafeMutableRawPointer, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    #if arch(wasm32)
    takeGreeter(g: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(g), name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_createCalculator")
@_cdecl("bjs_BridgeJSRuntimeTests_createCalculator")
public func _bjs_BridgeJSRuntimeTests_createCalculator() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = createCalculator()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_useCalculator")
@_cdecl("bjs_BridgeJSRuntimeTests_useCalculator")
public func _bjs_BridgeJSRuntimeTests_useCalculator(_ calc: UnsafeMutableRawPointer, _ x: Int32, _ y: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = useCalculator(calc: BridgeJSRuntimeTests.Calculator.bridgeJSLiftParameter(calc), x: Int.bridgeJSLiftParameter(x), y: Int.bridgeJSLiftParameter(y))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_testGreeterToJSValue")
@_cdecl("bjs_BridgeJSRuntimeTests_testGreeterToJSValue")
public func _bjs_BridgeJSRuntimeTests_testGreeterToJSValue() -> Int32 {
    #if arch(wasm32)
    let ret = testGreeterToJSValue()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_testCalculatorToJSValue")
@_cdecl("bjs_BridgeJSRuntimeTests_testCalculatorToJSValue")
public func _bjs_BridgeJSRuntimeTests_testCalculatorToJSValue() -> Int32 {
    #if arch(wasm32)
    let ret = testCalculatorToJSValue()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_testSwiftClassAsJSValue")
@_cdecl("bjs_BridgeJSRuntimeTests_testSwiftClassAsJSValue")
public func _bjs_BridgeJSRuntimeTests_testSwiftClassAsJSValue(_ greeter: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = testSwiftClassAsJSValue(greeter: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(greeter))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_setDirection")
public func _bjs_BridgeJSRuntimeTests_setDirection(_ direction: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = setDirection(_: BridgeJSRuntimeTests.Direction.bridgeJSLiftParameter(direction))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_getDirection")
public func _bjs_BridgeJSRuntimeTests_getDirection() -> Int32 {
    #if arch(wasm32)
    let ret = getDirection()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_processDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_processDirection")
public func _bjs_BridgeJSRuntimeTests_processDirection(_ input: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = processDirection(_: BridgeJSRuntimeTests.Direction.bridgeJSLiftParameter(input))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_setTheme")
public func _bjs_BridgeJSRuntimeTests_setTheme(_ themeBytes: Int32, _ themeLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = setTheme(_: BridgeJSRuntimeTests.Theme.bridgeJSLiftParameter(themeBytes, themeLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_getTheme")
public func _bjs_BridgeJSRuntimeTests_getTheme() -> Void {
    #if arch(wasm32)
    let ret = getTheme()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripTheme")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripTheme(_ vBytes: Int32, _ vLength: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_26BridgeJSRuntimeTests_ThemeO, reject: Promise_reject) {
        return await asyncRoundTripTheme(_: BridgeJSRuntimeTests.Theme.bridgeJSLiftParameter(vBytes, vLength))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripDirection")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripDirection(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_30BridgeJSRuntimeTests_DirectionO, reject: Promise_reject) {
        return await asyncRoundTripDirection(_: BridgeJSRuntimeTests.Direction.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalTheme")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalTheme(_ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Sq26BridgeJSRuntimeTests_ThemeO, reject: Promise_reject) {
        return await asyncRoundTripOptionalTheme(_: Optional<BridgeJSRuntimeTests.Theme>.bridgeJSLiftParameter(vIsSome, vBytes, vLength))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalDirection")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalDirection(_ vIsSome: Int32, _ vValue: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Sq30BridgeJSRuntimeTests_DirectionO, reject: Promise_reject) {
        return await asyncRoundTripOptionalDirection(_: Optional<BridgeJSRuntimeTests.Direction>.bridgeJSLiftParameter(vIsSome, vValue))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripDirectionArray")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripDirectionArray")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripDirectionArray() -> Int32 {
    #if arch(wasm32)
    let _tmp_v = [BridgeJSRuntimeTests.Direction].bridgeJSStackPop()
    return _bjs_makePromise(resolve: Promise_resolve_Sa30BridgeJSRuntimeTests_DirectionO, reject: Promise_reject) {
        return await asyncRoundTripDirectionArray(_: _tmp_v)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripDirectionDict")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripDirectionDict")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripDirectionDict() -> Int32 {
    #if arch(wasm32)
    let _tmp_v = [String: BridgeJSRuntimeTests.Direction].bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_SD30BridgeJSRuntimeTests_DirectionO, reject: Promise_reject) {
        return await asyncRoundTripDirectionDict(_: _tmp_v)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripThemeArray")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripThemeArray")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripThemeArray() -> Int32 {
    #if arch(wasm32)
    let _tmp_v = [BridgeJSRuntimeTests.Theme].bridgeJSStackPop()
    return _bjs_makePromise(resolve: Promise_resolve_Sa26BridgeJSRuntimeTests_ThemeO, reject: Promise_reject) {
        return await asyncRoundTripThemeArray(_: _tmp_v)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripThemeDict")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripThemeDict")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripThemeDict() -> Int32 {
    #if arch(wasm32)
    let _tmp_v = [String: BridgeJSRuntimeTests.Theme].bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_SD26BridgeJSRuntimeTests_ThemeO, reject: Promise_reject) {
        return await asyncRoundTripThemeDict(_: _tmp_v)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripFileSize")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripFileSize")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripFileSize(_ v: Int64) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_29BridgeJSRuntimeTests_FileSizeO, reject: Promise_reject) {
        return await asyncRoundTripFileSize(_: BridgeJSRuntimeTests.FileSize.bridgeJSLiftParameter(v))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalFileSize")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalFileSize")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalFileSize(_ vIsSome: Int32, _ vValue: Int64) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_Sq29BridgeJSRuntimeTests_FileSizeO, reject: Promise_reject) {
        return await asyncRoundTripOptionalFileSize(_: Optional<BridgeJSRuntimeTests.FileSize>.bridgeJSLiftParameter(vIsSome, vValue))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripAssociatedValueEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripAssociatedValueEnum")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripAssociatedValueEnum(_ v: Int32) -> Int32 {
    #if arch(wasm32)
    let _tmp_v = BridgeJSRuntimeTests.AsyncPayloadResult.bridgeJSLiftParameter(v)
    return _bjs_makePromise(resolve: Promise_resolve_39BridgeJSRuntimeTests_AsyncPayloadResultO, reject: Promise_reject) {
        return await asyncRoundTripAssociatedValueEnum(_: _tmp_v)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalAssociatedValueEnum")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalAssociatedValueEnum")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalAssociatedValueEnum(_ vIsSome: Int32, _ vCaseId: Int32) -> Int32 {
    #if arch(wasm32)
    let _tmp_v = Optional<BridgeJSRuntimeTests.AsyncPayloadResult>.bridgeJSLiftParameter(vIsSome, vCaseId)
    return _bjs_makePromise(resolve: Promise_resolve_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO, reject: Promise_reject) {
        return await asyncRoundTripOptionalAssociatedValueEnum(_: _tmp_v)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setHttpStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_setHttpStatus")
public func _bjs_BridgeJSRuntimeTests_setHttpStatus(_ status: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = setHttpStatus(_: BridgeJSRuntimeTests.HttpStatus.bridgeJSLiftParameter(status))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getHttpStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_getHttpStatus")
public func _bjs_BridgeJSRuntimeTests_getHttpStatus() -> Int32 {
    #if arch(wasm32)
    let ret = getHttpStatus()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setFileSize")
@_cdecl("bjs_BridgeJSRuntimeTests_setFileSize")
public func _bjs_BridgeJSRuntimeTests_setFileSize(_ size: Int64) -> Int64 {
    #if arch(wasm32)
    let ret = setFileSize(_: BridgeJSRuntimeTests.FileSize.bridgeJSLiftParameter(size))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getFileSize")
@_cdecl("bjs_BridgeJSRuntimeTests_getFileSize")
public func _bjs_BridgeJSRuntimeTests_getFileSize() -> Int64 {
    #if arch(wasm32)
    let ret = getFileSize()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setSessionId")
@_cdecl("bjs_BridgeJSRuntimeTests_setSessionId")
public func _bjs_BridgeJSRuntimeTests_setSessionId(_ session: Int64) -> Int64 {
    #if arch(wasm32)
    let ret = setSessionId(_: BridgeJSRuntimeTests.SessionId.bridgeJSLiftParameter(session))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getSessionId")
@_cdecl("bjs_BridgeJSRuntimeTests_getSessionId")
public func _bjs_BridgeJSRuntimeTests_getSessionId() -> Int64 {
    #if arch(wasm32)
    let ret = getSessionId()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_processTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_processTheme")
public func _bjs_BridgeJSRuntimeTests_processTheme(_ themeBytes: Int32, _ themeLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = processTheme(_: BridgeJSRuntimeTests.Theme.bridgeJSLiftParameter(themeBytes, themeLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setTSDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_setTSDirection")
public func _bjs_BridgeJSRuntimeTests_setTSDirection(_ direction: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = setTSDirection(_: BridgeJSRuntimeTests.TSDirection.bridgeJSLiftParameter(direction))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getTSDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_getTSDirection")
public func _bjs_BridgeJSRuntimeTests_getTSDirection() -> Int32 {
    #if arch(wasm32)
    let ret = getTSDirection()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_setTSTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_setTSTheme")
public func _bjs_BridgeJSRuntimeTests_setTSTheme(_ themeBytes: Int32, _ themeLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = setTSTheme(_: BridgeJSRuntimeTests.TSTheme.bridgeJSLiftParameter(themeBytes, themeLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getTSTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_getTSTheme")
public func _bjs_BridgeJSRuntimeTests_getTSTheme() -> Void {
    #if arch(wasm32)
    let ret = getTSTheme()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_createConverter")
@_cdecl("bjs_BridgeJSRuntimeTests_createConverter")
public func _bjs_BridgeJSRuntimeTests_createConverter() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = createConverter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_useConverter")
@_cdecl("bjs_BridgeJSRuntimeTests_useConverter")
public func _bjs_BridgeJSRuntimeTests_useConverter(_ converter: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = useConverter(converter: BridgeJSRuntimeTests.Utils.Converter.bridgeJSLiftParameter(converter), value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripConverterArray")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripConverterArray")
public func _bjs_BridgeJSRuntimeTests_roundTripConverterArray() -> Void {
    #if arch(wasm32)
    let ret = roundTripConverterArray(_: [BridgeJSRuntimeTests.Utils.Converter].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_createHTTPServer")
@_cdecl("bjs_BridgeJSRuntimeTests_createHTTPServer")
public func _bjs_BridgeJSRuntimeTests_createHTTPServer() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = createHTTPServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_createUUID")
@_cdecl("bjs_BridgeJSRuntimeTests_createUUID")
public func _bjs_BridgeJSRuntimeTests_createUUID(_ valueBytes: Int32, _ valueLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = createUUID(value: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripUUID")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripUUID")
public func _bjs_BridgeJSRuntimeTests_roundTripUUID(_ uuid: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = roundTripUUID(_: BridgeJSRuntimeTests.UUID.bridgeJSLiftParameter(uuid))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripNetworkingAPIMethod")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripNetworkingAPIMethod")
public func _bjs_BridgeJSRuntimeTests_roundtripNetworkingAPIMethod(_ method: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundtripNetworkingAPIMethod(_: BridgeJSRuntimeTests.Networking.API.Method.bridgeJSLiftParameter(method))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripConfigurationLogLevel")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripConfigurationLogLevel")
public func _bjs_BridgeJSRuntimeTests_roundtripConfigurationLogLevel(_ levelBytes: Int32, _ levelLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundtripConfigurationLogLevel(_: BridgeJSRuntimeTests.Configuration.LogLevel.bridgeJSLiftParameter(levelBytes, levelLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripConfigurationPort")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripConfigurationPort")
public func _bjs_BridgeJSRuntimeTests_roundtripConfigurationPort(_ port: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundtripConfigurationPort(_: BridgeJSRuntimeTests.Configuration.Port.bridgeJSLiftParameter(port))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_processConfigurationLogLevel")
@_cdecl("bjs_BridgeJSRuntimeTests_processConfigurationLogLevel")
public func _bjs_BridgeJSRuntimeTests_processConfigurationLogLevel(_ levelBytes: Int32, _ levelLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = processConfigurationLogLevel(_: BridgeJSRuntimeTests.Configuration.LogLevel.bridgeJSLiftParameter(levelBytes, levelLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripInternalSupportedMethod")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripInternalSupportedMethod")
public func _bjs_BridgeJSRuntimeTests_roundtripInternalSupportedMethod(_ method: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = roundtripInternalSupportedMethod(_: BridgeJSRuntimeTests.Internal.SupportedMethod.bridgeJSLiftParameter(method))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripAPIResult")
public func _bjs_BridgeJSRuntimeTests_roundtripAPIResult(_ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundtripAPIResult(result: BridgeJSRuntimeTests.APIResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPIResultSuccess")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPIResultSuccess")
public func _bjs_BridgeJSRuntimeTests_makeAPIResultSuccess(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeAPIResultSuccess(_: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPIResultFailure")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPIResultFailure")
public func _bjs_BridgeJSRuntimeTests_makeAPIResultFailure(_ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeAPIResultFailure(_: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPIResultInfo")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPIResultInfo")
public func _bjs_BridgeJSRuntimeTests_makeAPIResultInfo() -> Void {
    #if arch(wasm32)
    let ret = makeAPIResultInfo()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPIResultFlag")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPIResultFlag")
public func _bjs_BridgeJSRuntimeTests_makeAPIResultFlag(_ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeAPIResultFlag(_: Bool.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPIResultRate")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPIResultRate")
public func _bjs_BridgeJSRuntimeTests_makeAPIResultRate(_ value: Float32) -> Void {
    #if arch(wasm32)
    let ret = makeAPIResultRate(_: Float.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPIResultPrecise")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPIResultPrecise")
public func _bjs_BridgeJSRuntimeTests_makeAPIResultPrecise(_ value: Float64) -> Void {
    #if arch(wasm32)
    let ret = makeAPIResultPrecise(_: Double.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripComplexResult")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripComplexResult")
public func _bjs_BridgeJSRuntimeTests_roundtripComplexResult(_ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundtripComplexResult(_: BridgeJSRuntimeTests.ComplexResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultSuccess")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultSuccess")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultSuccess(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultSuccess(_: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultError")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultError")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultError(_ messageBytes: Int32, _ messageLength: Int32, _ code: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultError(_: String.bridgeJSLiftParameter(messageBytes, messageLength), _: Int.bridgeJSLiftParameter(code))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultLocation")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultLocation")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultLocation(_ lat: Float64, _ lng: Float64, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultLocation(_: Double.bridgeJSLiftParameter(lat), _: Double.bridgeJSLiftParameter(lng), _: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultStatus")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultStatus(_ active: Int32, _ code: Int32, _ messageBytes: Int32, _ messageLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultStatus(_: Bool.bridgeJSLiftParameter(active), _: Int.bridgeJSLiftParameter(code), _: String.bridgeJSLiftParameter(messageBytes, messageLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultCoordinates")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultCoordinates")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultCoordinates(_ x: Float64, _ y: Float64, _ z: Float64) -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultCoordinates(_: Double.bridgeJSLiftParameter(x), _: Double.bridgeJSLiftParameter(y), _: Double.bridgeJSLiftParameter(z))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultComprehensive")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultComprehensive")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultComprehensive(_ flag1: Int32, _ flag2: Int32, _ count1: Int32, _ count2: Int32, _ value1: Float64, _ value2: Float64, _ text1Bytes: Int32, _ text1Length: Int32, _ text2Bytes: Int32, _ text2Length: Int32, _ text3Bytes: Int32, _ text3Length: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultComprehensive(_: Bool.bridgeJSLiftParameter(flag1), _: Bool.bridgeJSLiftParameter(flag2), _: Int.bridgeJSLiftParameter(count1), _: Int.bridgeJSLiftParameter(count2), _: Double.bridgeJSLiftParameter(value1), _: Double.bridgeJSLiftParameter(value2), _: String.bridgeJSLiftParameter(text1Bytes, text1Length), _: String.bridgeJSLiftParameter(text2Bytes, text2Length), _: String.bridgeJSLiftParameter(text3Bytes, text3Length))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeComplexResultInfo")
@_cdecl("bjs_BridgeJSRuntimeTests_makeComplexResultInfo")
public func _bjs_BridgeJSRuntimeTests_makeComplexResultInfo() -> Void {
    #if arch(wasm32)
    let ret = makeComplexResultInfo()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeUtilitiesResultSuccess")
@_cdecl("bjs_BridgeJSRuntimeTests_makeUtilitiesResultSuccess")
public func _bjs_BridgeJSRuntimeTests_makeUtilitiesResultSuccess(_ messageBytes: Int32, _ messageLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeUtilitiesResultSuccess(_: String.bridgeJSLiftParameter(messageBytes, messageLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeUtilitiesResultFailure")
@_cdecl("bjs_BridgeJSRuntimeTests_makeUtilitiesResultFailure")
public func _bjs_BridgeJSRuntimeTests_makeUtilitiesResultFailure(_ errorBytes: Int32, _ errorLength: Int32, _ code: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeUtilitiesResultFailure(_: String.bridgeJSLiftParameter(errorBytes, errorLength), _: Int.bridgeJSLiftParameter(code))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeUtilitiesResultStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_makeUtilitiesResultStatus")
public func _bjs_BridgeJSRuntimeTests_makeUtilitiesResultStatus(_ active: Int32, _ code: Int32, _ messageBytes: Int32, _ messageLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeUtilitiesResultStatus(_: Bool.bridgeJSLiftParameter(active), _: Int.bridgeJSLiftParameter(code), _: String.bridgeJSLiftParameter(messageBytes, messageLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPINetworkingResultSuccess")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPINetworkingResultSuccess")
public func _bjs_BridgeJSRuntimeTests_makeAPINetworkingResultSuccess(_ messageBytes: Int32, _ messageLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeAPINetworkingResultSuccess(_: String.bridgeJSLiftParameter(messageBytes, messageLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAPINetworkingResultFailure")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAPINetworkingResultFailure")
public func _bjs_BridgeJSRuntimeTests_makeAPINetworkingResultFailure(_ errorBytes: Int32, _ errorLength: Int32, _ code: Int32) -> Void {
    #if arch(wasm32)
    let ret = makeAPINetworkingResultFailure(_: String.bridgeJSLiftParameter(errorBytes, errorLength), _: Int.bridgeJSLiftParameter(code))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripUtilitiesResult")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripUtilitiesResult")
public func _bjs_BridgeJSRuntimeTests_roundtripUtilitiesResult(_ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundtripUtilitiesResult(_: BridgeJSRuntimeTests.Utilities.Result.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundtripAPINetworkingResult")
@_cdecl("bjs_BridgeJSRuntimeTests_roundtripAPINetworkingResult")
public func _bjs_BridgeJSRuntimeTests_roundtripAPINetworkingResult(_ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundtripAPINetworkingResult(_: BridgeJSRuntimeTests.API.NetworkingResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripAllTypesResult")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripAllTypesResult")
public func _bjs_BridgeJSRuntimeTests_roundTripAllTypesResult(_ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripAllTypesResult(_: BridgeJSRuntimeTests.AllTypesResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripTypedPayloadResult")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripTypedPayloadResult")
public func _bjs_BridgeJSRuntimeTests_roundTripTypedPayloadResult(_ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripTypedPayloadResult(_: BridgeJSRuntimeTests.TypedPayloadResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_createPropertyHolder")
@_cdecl("bjs_BridgeJSRuntimeTests_createPropertyHolder")
public func _bjs_BridgeJSRuntimeTests_createPropertyHolder(_ intValue: Int32, _ floatValue: Float32, _ doubleValue: Float64, _ boolValue: Int32, _ stringValueBytes: Int32, _ stringValueLength: Int32, _ jsObject: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = createPropertyHolder(intValue: Int.bridgeJSLiftParameter(intValue), floatValue: Float.bridgeJSLiftParameter(floatValue), doubleValue: Double.bridgeJSLiftParameter(doubleValue), boolValue: Bool.bridgeJSLiftParameter(boolValue), stringValue: String.bridgeJSLiftParameter(stringValueBytes, stringValueLength), jsObject: JSObject.bridgeJSLiftParameter(jsObject))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_testPropertyHolder")
@_cdecl("bjs_BridgeJSRuntimeTests_testPropertyHolder")
public func _bjs_BridgeJSRuntimeTests_testPropertyHolder(_ holder: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = testPropertyHolder(holder: BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(holder))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_resetObserverCounts")
@_cdecl("bjs_BridgeJSRuntimeTests_resetObserverCounts")
public func _bjs_BridgeJSRuntimeTests_resetObserverCounts() -> Void {
    #if arch(wasm32)
    resetObserverCounts()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_getObserverStats")
@_cdecl("bjs_BridgeJSRuntimeTests_getObserverStats")
public func _bjs_BridgeJSRuntimeTests_getObserverStats() -> Void {
    #if arch(wasm32)
    let ret = getObserverStats()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_formatName")
@_cdecl("bjs_BridgeJSRuntimeTests_formatName")
public func _bjs_BridgeJSRuntimeTests_formatName(_ nameBytes: Int32, _ nameLength: Int32, _ transform: Int32) -> Void {
    #if arch(wasm32)
    let ret = formatName(_: String.bridgeJSLiftParameter(nameBytes, nameLength), transform: _BJS_Closure_20BridgeJSRuntimeTestsSS_SS.bridgeJSLift(transform))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeFormatter")
@_cdecl("bjs_BridgeJSRuntimeTests_makeFormatter")
public func _bjs_BridgeJSRuntimeTests_makeFormatter(_ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = makeFormatter(prefix: String.bridgeJSLiftParameter(prefixBytes, prefixLength))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_makeAdder")
@_cdecl("bjs_BridgeJSRuntimeTests_makeAdder")
public func _bjs_BridgeJSRuntimeTests_makeAdder(_ base: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = makeAdder(base: Int.bridgeJSLiftParameter(base))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripPointerFields")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripPointerFields")
public func _bjs_BridgeJSRuntimeTests_roundTripPointerFields() -> Void {
    #if arch(wasm32)
    let ret = roundTripPointerFields(_: BridgeJSRuntimeTests.PointerFields.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_testStructDefault")
@_cdecl("bjs_BridgeJSRuntimeTests_testStructDefault")
public func _bjs_BridgeJSRuntimeTests_testStructDefault() -> Void {
    #if arch(wasm32)
    let ret = testStructDefault(point: BridgeJSRuntimeTests.DataPoint.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_cartToJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_cartToJSObject")
public func _bjs_BridgeJSRuntimeTests_cartToJSObject() -> Int32 {
    #if arch(wasm32)
    let ret = cartToJSObject(_: BridgeJSRuntimeTests.CopyableCart.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_nestedCartToJSObject")
@_cdecl("bjs_BridgeJSRuntimeTests_nestedCartToJSObject")
public func _bjs_BridgeJSRuntimeTests_nestedCartToJSObject() -> Int32 {
    #if arch(wasm32)
    let ret = nestedCartToJSObject(_: BridgeJSRuntimeTests.CopyableNestedCart.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripDataPoint")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripDataPoint")
public func _bjs_BridgeJSRuntimeTests_roundTripDataPoint() -> Void {
    #if arch(wasm32)
    let ret = roundTripDataPoint(_: BridgeJSRuntimeTests.DataPoint.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripPublicPoint")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripPublicPoint")
public func _bjs_BridgeJSRuntimeTests_roundTripPublicPoint() -> Void {
    #if arch(wasm32)
    let ret = roundTripPublicPoint(_: BridgeJSRuntimeTests.PublicPoint.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPoint")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPoint")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPoint() -> Int32 {
    #if arch(wasm32)
    let _tmp_point = BridgeJSRuntimeTests.PublicPoint.bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) {
        return await asyncRoundTripPublicPoint(_: _tmp_point)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointThrows")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointThrows")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointThrows() -> Int32 {
    #if arch(wasm32)
    let _tmp_point = BridgeJSRuntimeTests.PublicPoint.bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) { () async throws(JSException) -> BridgeJSRuntimeTests.PublicPoint in
        return try await asyncRoundTripPublicPointThrows(_: _tmp_point)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncStructOrThrow")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncStructOrThrow")
public func _bjs_BridgeJSRuntimeTests_asyncStructOrThrow(_ shouldThrow: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) { () async throws(JSException) -> BridgeJSRuntimeTests.PublicPoint in
        return try await asyncStructOrThrow(_: Bool.bridgeJSLiftParameter(shouldThrow))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncCombinePublicPoints")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncCombinePublicPoints")
public func _bjs_BridgeJSRuntimeTests_asyncCombinePublicPoints() -> Int32 {
    #if arch(wasm32)
    let _tmp_b = BridgeJSRuntimeTests.PublicPoint.bridgeJSLiftParameter()
    let _tmp_a = BridgeJSRuntimeTests.PublicPoint.bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) {
        return await asyncCombinePublicPoints(_: _tmp_a, _: _tmp_b)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripContact")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripContact")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripContact() -> Int32 {
    #if arch(wasm32)
    let _tmp_contact = BridgeJSRuntimeTests.Contact.bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_28BridgeJSRuntimeTests_ContactV, reject: Promise_reject) {
        return await asyncRoundTripContact(_: _tmp_contact)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointArray")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointArray")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointArray() -> Int32 {
    #if arch(wasm32)
    let _tmp_points = [BridgeJSRuntimeTests.PublicPoint].bridgeJSStackPop()
    return _bjs_makePromise(resolve: Promise_resolve_Sa32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) {
        return await asyncRoundTripPublicPointArray(_: _tmp_points)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalPublicPoint")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalPublicPoint")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripOptionalPublicPoint() -> Int32 {
    #if arch(wasm32)
    let _tmp_point = Optional<BridgeJSRuntimeTests.PublicPoint>.bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_Sq32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) {
        return await asyncRoundTripOptionalPublicPoint(_: _tmp_point)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointDict")
@_cdecl("bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointDict")
public func _bjs_BridgeJSRuntimeTests_asyncRoundTripPublicPointDict() -> Int32 {
    #if arch(wasm32)
    let _tmp_points = [String: BridgeJSRuntimeTests.PublicPoint].bridgeJSLiftParameter()
    return _bjs_makePromise(resolve: Promise_resolve_SD32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) {
        return await asyncRoundTripPublicPointDict(_: _tmp_points)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripContact")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripContact")
public func _bjs_BridgeJSRuntimeTests_roundTripContact() -> Void {
    #if arch(wasm32)
    let ret = roundTripContact(_: BridgeJSRuntimeTests.Contact.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripConfig")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripConfig")
public func _bjs_BridgeJSRuntimeTests_roundTripConfig() -> Void {
    #if arch(wasm32)
    let ret = roundTripConfig(_: BridgeJSRuntimeTests.Config.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripSessionData")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripSessionData")
public func _bjs_BridgeJSRuntimeTests_roundTripSessionData() -> Void {
    #if arch(wasm32)
    let ret = roundTripSessionData(_: BridgeJSRuntimeTests.SessionData.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripValidationReport")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripValidationReport")
public func _bjs_BridgeJSRuntimeTests_roundTripValidationReport() -> Void {
    #if arch(wasm32)
    let ret = roundTripValidationReport(_: BridgeJSRuntimeTests.ValidationReport.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripAdvancedConfig")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripAdvancedConfig")
public func _bjs_BridgeJSRuntimeTests_roundTripAdvancedConfig() -> Void {
    #if arch(wasm32)
    let ret = roundTripAdvancedConfig(_: BridgeJSRuntimeTests.AdvancedConfig.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripMeasurementConfig")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripMeasurementConfig")
public func _bjs_BridgeJSRuntimeTests_roundTripMeasurementConfig() -> Void {
    #if arch(wasm32)
    let ret = roundTripMeasurementConfig(_: BridgeJSRuntimeTests.MeasurementConfig.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_updateValidationReport")
@_cdecl("bjs_BridgeJSRuntimeTests_updateValidationReport")
public func _bjs_BridgeJSRuntimeTests_updateValidationReport(_ newResultIsSome: Int32, _ newResultCaseId: Int32) -> Void {
    #if arch(wasm32)
    let _tmp_report = BridgeJSRuntimeTests.ValidationReport.bridgeJSLiftParameter()
    let _tmp_newResult = Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(newResultIsSome, newResultCaseId)
    let ret = updateValidationReport(_: _tmp_newResult, _: _tmp_report)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_testContainerWithStruct")
@_cdecl("bjs_BridgeJSRuntimeTests_testContainerWithStruct")
public func _bjs_BridgeJSRuntimeTests_testContainerWithStruct() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = testContainerWithStruct(_: BridgeJSRuntimeTests.DataPoint.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripJSObjectContainer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripJSObjectContainer")
public func _bjs_BridgeJSRuntimeTests_roundTripJSObjectContainer() -> Void {
    #if arch(wasm32)
    let ret = roundTripJSObjectContainer(_: BridgeJSRuntimeTests.JSObjectContainer.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripFooContainer")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripFooContainer")
public func _bjs_BridgeJSRuntimeTests_roundTripFooContainer() -> Void {
    #if arch(wasm32)
    let ret = roundTripFooContainer(_: BridgeJSRuntimeTests.FooContainer.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_roundTripArrayMembers")
@_cdecl("bjs_BridgeJSRuntimeTests_roundTripArrayMembers")
public func _bjs_BridgeJSRuntimeTests_roundTripArrayMembers() -> Void {
    #if arch(wasm32)
    let ret = roundTripArrayMembers(_: BridgeJSRuntimeTests.ArrayMembers.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_arrayMembersSum")
@_cdecl("bjs_BridgeJSRuntimeTests_arrayMembersSum")
public func _bjs_BridgeJSRuntimeTests_arrayMembersSum() -> Int32 {
    #if arch(wasm32)
    let _tmp_values = [Int].bridgeJSStackPop()
    let _tmp_value = BridgeJSRuntimeTests.ArrayMembers.bridgeJSLiftParameter()
    let ret = arrayMembersSum(_: _tmp_value, _: _tmp_values)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_arrayMembersFirst")
@_cdecl("bjs_BridgeJSRuntimeTests_arrayMembersFirst")
public func _bjs_BridgeJSRuntimeTests_arrayMembersFirst() -> Void {
    #if arch(wasm32)
    let _tmp_values = [String].bridgeJSStackPop()
    let _tmp_value = BridgeJSRuntimeTests.ArrayMembers.bridgeJSLiftParameter()
    let ret = arrayMembersFirst(_: _tmp_value, _: _tmp_values)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_init")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_init")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_init(_ labelBytes: Int32, _ labelLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PolygonReference(verticesData: [Double].bridgeJSStackPop(), label: String.bridgeJSLiftParameter(labelBytes, labelLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_vertexCount")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_vertexCount")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_vertexCount(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PolygonReference.bridgeJSLiftParameter(_self).vertexCount()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_summary")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_summary")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_summary(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PolygonReference.bridgeJSLiftParameter(_self).summary()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_snapshot")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_snapshot")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_snapshot(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PolygonReference.bridgeJSLiftParameter(_self).snapshot()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_merge")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_merge")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_merge(_ _self: UnsafeMutableRawPointer, _ other: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PolygonReference.bridgeJSLiftParameter(_self).merge(_: BridgeJSRuntimeTests.Polygon.bridgeJSLiftParameter(other))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_static_origin")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_static_origin")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_static_origin(_ labelBytes: Int32, _ labelLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PolygonReference.origin(label: String.bridgeJSLiftParameter(labelBytes, labelLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PolygonReference_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_PolygonReference_deinit")
public func _bjs_BridgeJSRuntimeTests_PolygonReference_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.PolygonReference>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.PolygonReference: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_PolygonReference_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_PolygonReference_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_PolygonReference_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_PolygonReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_PolygonReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_PolygonReference_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_PolygonReference_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagReference_describe")
@_cdecl("bjs_BridgeJSRuntimeTests_TagReference_describe")
public func _bjs_BridgeJSRuntimeTests_TagReference_describe(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TagReference.bridgeJSLiftParameter(_self).describe()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagReference_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_TagReference_deinit")
public func _bjs_BridgeJSRuntimeTests_TagReference_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.TagReference>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.TagReference: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_TagReference_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_TagReference_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_TagReference_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_TagReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_TagReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_TagReference_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_TagReference_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_init")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_init")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_init(_ tag: UnsafeMutableRawPointer, _ version: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TagHolderReference(tag: BridgeJSRuntimeTests.Tag.bridgeJSLiftParameter(tag), version: Int.bridgeJSLiftParameter(version))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_describe")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_describe")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_describe(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TagHolderReference.bridgeJSLiftParameter(_self).describe()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_tag_get")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_tag_get")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_tag_get(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TagHolderReference.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_tag_set")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_tag_set")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_tag_set(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.TagHolderReference.bridgeJSLiftParameter(_self).tag = BridgeJSRuntimeTests.Tag.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_version_get")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_version_get")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_version_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TagHolderReference.bridgeJSLiftParameter(_self).version
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_version_set")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_version_set")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_version_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.TagHolderReference.bridgeJSLiftParameter(_self).version = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TagHolderReference_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_TagHolderReference_deinit")
public func _bjs_BridgeJSRuntimeTests_TagHolderReference_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.TagHolderReference>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.TagHolderReference: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_TagHolderReference_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_TagHolderReference_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_TagHolderReference_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_TagHolderReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_TagHolderReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_TagHolderReference_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_TagHolderReference_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PriorityReference_describe")
@_cdecl("bjs_BridgeJSRuntimeTests_PriorityReference_describe")
public func _bjs_BridgeJSRuntimeTests_PriorityReference_describe(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PriorityReference.bridgeJSLiftParameter(_self).describe()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PriorityReference_weight")
@_cdecl("bjs_BridgeJSRuntimeTests_PriorityReference_weight")
public func _bjs_BridgeJSRuntimeTests_PriorityReference_weight(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PriorityReference.bridgeJSLiftParameter(_self).weight()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PriorityReference_static_low")
@_cdecl("bjs_BridgeJSRuntimeTests_PriorityReference_static_low")
public func _bjs_BridgeJSRuntimeTests_PriorityReference_static_low() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PriorityReference.low()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PriorityReference_static_medium")
@_cdecl("bjs_BridgeJSRuntimeTests_PriorityReference_static_medium")
public func _bjs_BridgeJSRuntimeTests_PriorityReference_static_medium() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PriorityReference.medium()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PriorityReference_static_high")
@_cdecl("bjs_BridgeJSRuntimeTests_PriorityReference_static_high")
public func _bjs_BridgeJSRuntimeTests_PriorityReference_static_high() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PriorityReference.high()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PriorityReference_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_PriorityReference_deinit")
public func _bjs_BridgeJSRuntimeTests_PriorityReference_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.PriorityReference>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.PriorityReference: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_PriorityReference_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_PriorityReference_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_PriorityReference_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_PriorityReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_PriorityReference_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_PriorityReference_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_PriorityReference_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeIntToInt")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeIntToInt")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeIntToInt(_ base: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ClosureSupportExports.makeIntToInt(_: Int.bridgeJSLiftParameter(base))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeDoubleToDouble")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeDoubleToDouble")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeDoubleToDouble(_ base: Float64) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ClosureSupportExports.makeDoubleToDouble(_: Double.bridgeJSLiftParameter(base))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeStringToString")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeStringToString")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeStringToString(_ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ClosureSupportExports.makeStringToString(_: String.bridgeJSLiftParameter(prefixBytes, prefixLength))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSIntToInt")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSIntToInt")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSIntToInt(_ base: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ClosureSupportExports.makeJSIntToInt(_: Int.bridgeJSLiftParameter(base))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSDoubleToDouble")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSDoubleToDouble")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSDoubleToDouble(_ base: Float64) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ClosureSupportExports.makeJSDoubleToDouble(_: Double.bridgeJSLiftParameter(base))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSStringToString")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSStringToString")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_static_makeJSStringToString(_ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ClosureSupportExports.makeJSStringToString(_: String.bridgeJSLiftParameter(prefixBytes, prefixLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ClosureSupportExports_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_ClosureSupportExports_deinit")
public func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.ClosureSupportExports>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.ClosureSupportExports: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_ClosureSupportExports_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_init")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_init")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_init(_ nameBytes: Int32, _ nameLength: Int32, _ count: Int32, _ enabled: Int32, _ status: Int32, _ tagIsSome: Int32, _ tagBytes: Int32, _ tagLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults(name: String.bridgeJSLiftParameter(nameBytes, nameLength), count: Int.bridgeJSLiftParameter(count), enabled: Bool.bridgeJSLiftParameter(enabled), status: BridgeJSRuntimeTests.Status.bridgeJSLiftParameter(status), tag: Optional<String>.bridgeJSLiftParameter(tagIsSome, tagBytes, tagLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_describe")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_describe")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_describe(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).describe()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_name_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_name_get")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_name_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_name_set")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_count_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_count_get")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_count_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).count
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_count_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_count_set")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_count_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).count = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_enabled_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_enabled_get")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_enabled_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).enabled
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_enabled_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_enabled_set")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_enabled_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).enabled = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_status_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_status_get")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_status_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).status
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_status_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_status_set")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_status_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).status = BridgeJSRuntimeTests.Status.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_tag_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_tag_get")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_tag_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_tag_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_tag_set")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_tag_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults.bridgeJSLiftParameter(_self).tag = Optional<String>.bridgeJSLiftParameter(valueIsSome, valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_deinit")
public func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.DefaultArgumentConstructorDefaults: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_DefaultArgumentConstructorDefaults_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_init")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_init")
public func _bjs_BridgeJSRuntimeTests_Greeter_init(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_greet")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_greet")
public func _bjs_BridgeJSRuntimeTests_Greeter_greet(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).greet()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_changeName")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_changeName")
public func _bjs_BridgeJSRuntimeTests_Greeter_changeName(_ _self: UnsafeMutableRawPointer, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).changeName(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_greetWith")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_greetWith")
public func _bjs_BridgeJSRuntimeTests_Greeter_greetWith(_ _self: UnsafeMutableRawPointer, _ greeter: UnsafeMutableRawPointer, _ customGreeting: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).greetWith(greeter: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(greeter), customGreeting: _BJS_Closure_20BridgeJSRuntimeTests28BridgeJSRuntimeTests_GreeterC_SS.bridgeJSLift(customGreeting))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_makeFormatter")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_makeFormatter")
public func _bjs_BridgeJSRuntimeTests_Greeter_makeFormatter(_ _self: UnsafeMutableRawPointer, _ suffixBytes: Int32, _ suffixLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).makeFormatter(suffix: String.bridgeJSLiftParameter(suffixBytes, suffixLength))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_static_makeCreator")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_static_makeCreator")
public func _bjs_BridgeJSRuntimeTests_Greeter_static_makeCreator(_ defaultNameBytes: Int32, _ defaultNameLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.makeCreator(defaultName: String.bridgeJSLiftParameter(defaultNameBytes, defaultNameLength))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_makeCustomGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_makeCustomGreeter")
public func _bjs_BridgeJSRuntimeTests_Greeter_makeCustomGreeter(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).makeCustomGreeter()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_greetEnthusiastically")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_greetEnthusiastically")
public func _bjs_BridgeJSRuntimeTests_Greeter_greetEnthusiastically(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).greetEnthusiastically()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_static_greetAnonymously")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_static_greetAnonymously")
public func _bjs_BridgeJSRuntimeTests_Greeter_static_greetAnonymously() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.greetAnonymously()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_name_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_name_get")
public func _bjs_BridgeJSRuntimeTests_Greeter_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_name_set")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_name_set")
public func _bjs_BridgeJSRuntimeTests_Greeter_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_prefix_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_prefix_get")
public func _bjs_BridgeJSRuntimeTests_Greeter_prefix_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).prefix
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_nameCount_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_nameCount_get")
public func _bjs_BridgeJSRuntimeTests_Greeter_nameCount_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(_self).nameCount
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_static_defaultGreeting_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_static_defaultGreeting_get")
public func _bjs_BridgeJSRuntimeTests_Greeter_static_defaultGreeting_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Greeter.defaultGreeting
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Greeter_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_Greeter_deinit")
public func _bjs_BridgeJSRuntimeTests_Greeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.Greeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Greeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    public var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_Greeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    public consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_Greeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_Greeter_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_Greeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_Greeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_Greeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_Greeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Calculator_square")
@_cdecl("bjs_BridgeJSRuntimeTests_Calculator_square")
public func _bjs_BridgeJSRuntimeTests_Calculator_square(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Calculator.bridgeJSLiftParameter(_self).square(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Calculator_add")
@_cdecl("bjs_BridgeJSRuntimeTests_Calculator_add")
public func _bjs_BridgeJSRuntimeTests_Calculator_add(_ _self: UnsafeMutableRawPointer, _ a: Int32, _ b: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Calculator.bridgeJSLiftParameter(_self).add(a: Int.bridgeJSLiftParameter(a), b: Int.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Calculator_asyncMakePoint")
@_cdecl("bjs_BridgeJSRuntimeTests_Calculator_asyncMakePoint")
public func _bjs_BridgeJSRuntimeTests_Calculator_asyncMakePoint(_ _self: UnsafeMutableRawPointer, _ x: Int32, _ y: Int32) -> Int32 {
    #if arch(wasm32)
    return _bjs_makePromise(resolve: Promise_resolve_32BridgeJSRuntimeTests_PublicPointV, reject: Promise_reject) {
        return await BridgeJSRuntimeTests.Calculator.bridgeJSLiftParameter(_self).asyncMakePoint(x: Int.bridgeJSLiftParameter(x), y: Int.bridgeJSLiftParameter(y))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Calculator_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_Calculator_deinit")
public func _bjs_BridgeJSRuntimeTests_Calculator_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.Calculator>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Calculator: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_Calculator_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_Calculator_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_Calculator_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_Calculator_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_Calculator_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_Calculator_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_Calculator_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_InternalGreeter_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_InternalGreeter_deinit")
public func _bjs_BridgeJSRuntimeTests_InternalGreeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.InternalGreeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.InternalGreeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    internal var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_InternalGreeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    internal consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_InternalGreeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_InternalGreeter_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_InternalGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_InternalGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_InternalGreeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_InternalGreeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PublicGreeter_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_PublicGreeter_deinit")
public func _bjs_BridgeJSRuntimeTests_PublicGreeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.PublicGreeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.PublicGreeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    public var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_PublicGreeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    public consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_PublicGreeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_PublicGreeter_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_PublicGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_PublicGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_PublicGreeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_PublicGreeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PackageGreeter_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_PackageGreeter_deinit")
public func _bjs_BridgeJSRuntimeTests_PackageGreeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.PackageGreeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.PackageGreeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    package var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_PackageGreeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    package consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_PackageGreeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_PackageGreeter_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_PackageGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_PackageGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_PackageGreeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_PackageGreeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_Converter_init")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_Converter_init")
public func _bjs_BridgeJSRuntimeTests_Utils_Converter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Utils.Converter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_Converter_toString")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_Converter_toString")
public func _bjs_BridgeJSRuntimeTests_Utils_Converter_toString(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Utils.Converter.bridgeJSLiftParameter(_self).toString(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_Converter_precision_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_Converter_precision_get")
public func _bjs_BridgeJSRuntimeTests_Utils_Converter_precision_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Utils.Converter.bridgeJSLiftParameter(_self).precision
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_Converter_precision_set")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_Converter_precision_set")
public func _bjs_BridgeJSRuntimeTests_Utils_Converter_precision_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Utils.Converter.bridgeJSLiftParameter(_self).precision = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Utils_Converter_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_Utils_Converter_deinit")
public func _bjs_BridgeJSRuntimeTests_Utils_Converter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.Utils.Converter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Utils.Converter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_Utils_Converter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_Utils_Converter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_Utils_Converter_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_Utils_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_Utils_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_Utils_Converter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_Utils_Converter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_init")
@_cdecl("bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_init")
public func _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Networking.API.HTTPServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_call")
@_cdecl("bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_call")
public func _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_call(_ _self: UnsafeMutableRawPointer, _ method: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Networking.API.HTTPServer.bridgeJSLiftParameter(_self).call(_: BridgeJSRuntimeTests.Networking.API.Method.bridgeJSLiftParameter(method))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_deinit")
public func _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.Networking.API.HTTPServer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Networking.API.HTTPServer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_Networking_API_HTTPServer_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_UUID_init")
@_cdecl("bjs_BridgeJSRuntimeTests_UUID_init")
public func _bjs_BridgeJSRuntimeTests_UUID_init(_ valueBytes: Int32, _ valueLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.UUID(value: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_UUID_uuidString")
@_cdecl("bjs_BridgeJSRuntimeTests_UUID_uuidString")
public func _bjs_BridgeJSRuntimeTests_UUID_uuidString(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.UUID.bridgeJSLiftParameter(_self).uuidString()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_UUID_static_fromValue")
@_cdecl("bjs_BridgeJSRuntimeTests_UUID_static_fromValue")
public func _bjs_BridgeJSRuntimeTests_UUID_static_fromValue(_ valueBytes: Int32, _ valueLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.UUID.fromValue(_: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_UUID_static_placeholder_get")
@_cdecl("bjs_BridgeJSRuntimeTests_UUID_static_placeholder_get")
public func _bjs_BridgeJSRuntimeTests_UUID_static_placeholder_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.UUID.placeholder
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_UUID_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_UUID_deinit")
public func _bjs_BridgeJSRuntimeTests_UUID_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.UUID>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.UUID: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_UUID_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_UUID_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_UUID_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_UUID_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_UUID_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_UUID_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_UUID_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Internal_TestServer_init")
@_cdecl("bjs_BridgeJSRuntimeTests_Internal_TestServer_init")
public func _bjs_BridgeJSRuntimeTests_Internal_TestServer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Internal.TestServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Internal_TestServer_call")
@_cdecl("bjs_BridgeJSRuntimeTests_Internal_TestServer_call")
public func _bjs_BridgeJSRuntimeTests_Internal_TestServer_call(_ _self: UnsafeMutableRawPointer, _ method: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Internal.TestServer.bridgeJSLiftParameter(_self).call(_: BridgeJSRuntimeTests.Internal.SupportedMethod.bridgeJSLiftParameter(method))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Internal_TestServer_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_Internal_TestServer_deinit")
public func _bjs_BridgeJSRuntimeTests_Internal_TestServer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.Internal.TestServer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Internal.TestServer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_Internal_TestServer_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SimplePropertyHolder_init")
@_cdecl("bjs_BridgeJSRuntimeTests_SimplePropertyHolder_init")
public func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SimplePropertyHolder(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SimplePropertyHolder_value_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SimplePropertyHolder_value_get")
public func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SimplePropertyHolder.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SimplePropertyHolder_value_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SimplePropertyHolder_value_set")
public func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SimplePropertyHolder.bridgeJSLiftParameter(_self).value = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SimplePropertyHolder_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_SimplePropertyHolder_deinit")
public func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.SimplePropertyHolder>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.SimplePropertyHolder: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_SimplePropertyHolder_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_init")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_init")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_init(_ intValue: Int32, _ floatValue: Float32, _ doubleValue: Float64, _ boolValue: Int32, _ stringValueBytes: Int32, _ stringValueLength: Int32, _ jsObject: Int32, _ sibling: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder(intValue: Int.bridgeJSLiftParameter(intValue), floatValue: Float.bridgeJSLiftParameter(floatValue), doubleValue: Double.bridgeJSLiftParameter(doubleValue), boolValue: Bool.bridgeJSLiftParameter(boolValue), stringValue: String.bridgeJSLiftParameter(stringValueBytes, stringValueLength), jsObject: JSObject.bridgeJSLiftParameter(jsObject), sibling: BridgeJSRuntimeTests.SimplePropertyHolder.bridgeJSLiftParameter(sibling))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_getAllValues")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_getAllValues")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_getAllValues(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).getAllValues()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_intValue_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_intValue_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_intValue_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).intValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_intValue_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_intValue_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_intValue_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).intValue = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_floatValue_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_floatValue_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_floatValue_get(_ _self: UnsafeMutableRawPointer) -> Float32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).floatValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_floatValue_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_floatValue_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_floatValue_set(_ _self: UnsafeMutableRawPointer, _ value: Float32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).floatValue = Float.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_doubleValue_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_doubleValue_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_doubleValue_get(_ _self: UnsafeMutableRawPointer) -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).doubleValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_doubleValue_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_doubleValue_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_doubleValue_set(_ _self: UnsafeMutableRawPointer, _ value: Float64) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).doubleValue = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_boolValue_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_boolValue_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_boolValue_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).boolValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_boolValue_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_boolValue_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_boolValue_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).boolValue = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_stringValue_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_stringValue_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_stringValue_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).stringValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_stringValue_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_stringValue_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_stringValue_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).stringValue = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyInt_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyInt_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyInt_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).readonlyInt
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyFloat_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyFloat_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyFloat_get(_ _self: UnsafeMutableRawPointer) -> Float32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).readonlyFloat
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyDouble_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyDouble_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyDouble_get(_ _self: UnsafeMutableRawPointer) -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).readonlyDouble
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyBool_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyBool_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyBool_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).readonlyBool
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyString_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyString_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_readonlyString_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).readonlyString
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_jsObject_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_jsObject_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_jsObject_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).jsObject
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_jsObject_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_jsObject_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_jsObject_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).jsObject = JSObject.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_sibling_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_sibling_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_sibling_get(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).sibling
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_sibling_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_sibling_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_sibling_set(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).sibling = BridgeJSRuntimeTests.SimplePropertyHolder.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_lazyValue_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_lazyValue_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_lazyValue_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).lazyValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_lazyValue_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_lazyValue_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_lazyValue_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).lazyValue = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadonly_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadonly_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadonly_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).computedReadonly
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadWrite_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadWrite_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadWrite_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).computedReadWrite
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadWrite_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadWrite_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_computedReadWrite_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).computedReadWrite = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_observedProperty_get")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_observedProperty_get")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_observedProperty_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).observedProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_observedProperty_set")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_observedProperty_set")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_observedProperty_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.PropertyHolder.bridgeJSLiftParameter(_self).observedProperty = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_PropertyHolder_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_PropertyHolder_deinit")
public func _bjs_BridgeJSRuntimeTests_PropertyHolder_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.PropertyHolder>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.PropertyHolder: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_PropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_PropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_PropertyHolder_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_PropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_PropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_PropertyHolder_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_PropertyHolder_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathUtils_static_add")
@_cdecl("bjs_BridgeJSRuntimeTests_MathUtils_static_add")
public func _bjs_BridgeJSRuntimeTests_MathUtils_static_add(_ a: Int32, _ b: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.MathUtils.add(a: Int.bridgeJSLiftParameter(a), b: Int.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathUtils_static_substract")
@_cdecl("bjs_BridgeJSRuntimeTests_MathUtils_static_substract")
public func _bjs_BridgeJSRuntimeTests_MathUtils_static_substract(_ a: Int32, _ b: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.MathUtils.substract(a: Int.bridgeJSLiftParameter(a), b: Int.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_MathUtils_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_MathUtils_deinit")
public func _bjs_BridgeJSRuntimeTests_MathUtils_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.MathUtils>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.MathUtils: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_MathUtils_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_MathUtils_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_MathUtils_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_MathUtils_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_MathUtils_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_MathUtils_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_MathUtils_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_init")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_init")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticConstant_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticConstant_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticConstant_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.staticConstant
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticVariable_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticVariable_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticVariable_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.staticVariable
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticVariable_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticVariable_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticVariable_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.staticVariable = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticString_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticString_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticString_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.staticString
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticString_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticString_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticString_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.staticString = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticBool_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticBool_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticBool_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.staticBool
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticBool_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticBool_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticBool_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.staticBool = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticFloat_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticFloat_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticFloat_get() -> Float32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.staticFloat
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticFloat_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticFloat_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticFloat_set(_ value: Float32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.staticFloat = Float.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticDouble_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticDouble_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticDouble_get() -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.staticDouble
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticDouble_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticDouble_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_staticDouble_set(_ value: Float64) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.staticDouble = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_computedProperty_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_computedProperty_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_computedProperty_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.computedProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_computedProperty_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_computedProperty_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_computedProperty_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.computedProperty = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_readOnlyComputed_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_readOnlyComputed_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_readOnlyComputed_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.readOnlyComputed
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalString_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalString_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalString_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.optionalString
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalString_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalString_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalString_set(_ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.optionalString = Optional<String>.bridgeJSLiftParameter(valueIsSome, valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalInt_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalInt_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalInt_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.optionalInt
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalInt_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalInt_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_optionalInt_set(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.optionalInt = Optional<Int>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_jsObjectProperty_get")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_jsObjectProperty_get")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_jsObjectProperty_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.StaticPropertyHolder.jsObjectProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_jsObjectProperty_set")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_jsObjectProperty_set")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_static_jsObjectProperty_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.StaticPropertyHolder.jsObjectProperty = JSObject.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_StaticPropertyHolder_deinit")
public func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.StaticPropertyHolder>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.StaticPropertyHolder: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_StaticPropertyHolder_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_init")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_init")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_init(_ processor: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager(processor: AnyDataProcessor.bridgeJSLiftParameter(processor))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_incrementByAmount")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_incrementByAmount")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_incrementByAmount(_ _self: UnsafeMutableRawPointer, _ amount: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).incrementByAmount(_: Int.bridgeJSLiftParameter(amount))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorLabel")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorLabel")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorLabel(_ _self: UnsafeMutableRawPointer, _ prefixBytes: Int32, _ prefixLength: Int32, _ suffixBytes: Int32, _ suffixLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorLabel(_: String.bridgeJSLiftParameter(prefixBytes, prefixLength), _: String.bridgeJSLiftParameter(suffixBytes, suffixLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_isProcessorEven")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_isProcessorEven")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_isProcessorEven(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).isProcessorEven()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorLabel")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorLabel")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorLabel(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorLabel()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getCurrentValue")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getCurrentValue")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getCurrentValue(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getCurrentValue()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_incrementBoth")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_incrementBoth")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_incrementBoth(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).incrementBoth()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getBackupValue")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getBackupValue")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getBackupValue(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getBackupValue()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_hasBackup")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_hasBackup")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_hasBackup(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).hasBackup()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorOptionalTag")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorOptionalTag")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorOptionalTag(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorOptionalTag()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorOptionalTag")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorOptionalTag")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorOptionalTag(_ _self: UnsafeMutableRawPointer, _ tagIsSome: Int32, _ tagBytes: Int32, _ tagLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorOptionalTag(_: Optional<String>.bridgeJSLiftParameter(tagIsSome, tagBytes, tagLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorOptionalCount")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorOptionalCount")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorOptionalCount(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorOptionalCount()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorOptionalCount")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorOptionalCount")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorOptionalCount(_ _self: UnsafeMutableRawPointer, _ countIsSome: Int32, _ countValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorOptionalCount(_: Optional<Int>.bridgeJSLiftParameter(countIsSome, countValue))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorDirection")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorDirection(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorDirection()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorDirection")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorDirection(_ _self: UnsafeMutableRawPointer, _ directionIsSome: Int32, _ directionValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorDirection(_: Optional<BridgeJSRuntimeTests.Direction>.bridgeJSLiftParameter(directionIsSome, directionValue))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorTheme")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorTheme(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorTheme()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorTheme")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorTheme(_ _self: UnsafeMutableRawPointer, _ themeIsSome: Int32, _ themeBytes: Int32, _ themeLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorTheme(_: Optional<BridgeJSRuntimeTests.Theme>.bridgeJSLiftParameter(themeIsSome, themeBytes, themeLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorHttpStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorHttpStatus")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorHttpStatus(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorHttpStatus()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorHttpStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorHttpStatus")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorHttpStatus(_ _self: UnsafeMutableRawPointer, _ statusIsSome: Int32, _ statusValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorHttpStatus(_: Optional<BridgeJSRuntimeTests.HttpStatus>.bridgeJSLiftParameter(statusIsSome, statusValue))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorAPIResult")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_getProcessorAPIResult(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).getProcessorAPIResult()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorAPIResult")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_setProcessorAPIResult(_ _self: UnsafeMutableRawPointer, _ apiResultIsSome: Int32, _ apiResultCaseId: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).setProcessorAPIResult(_: Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(apiResultIsSome, apiResultCaseId))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_processor_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_processor_get")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_processor_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).processor as! _BridgedSwiftProtocolExportable
    return ret.bridgeJSLowerAsProtocolReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_processor_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_processor_set")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_processor_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).processor = AnyDataProcessor.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_backupProcessor_get")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_backupProcessor_get")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_backupProcessor_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).backupProcessor
    if let ret {
        _swift_js_return_optional_object(1, (ret as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
    } else {
        _swift_js_return_optional_object(0, 0)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_backupProcessor_set")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_backupProcessor_set")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_backupProcessor_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.DataProcessorManager.bridgeJSLiftParameter(_self).backupProcessor = Optional<AnyDataProcessor>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_DataProcessorManager_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_DataProcessorManager_deinit")
public func _bjs_BridgeJSRuntimeTests_DataProcessorManager_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.DataProcessorManager>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.DataProcessorManager: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_DataProcessorManager_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_init")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_init")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_increment")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_increment")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_increment(_ _self: UnsafeMutableRawPointer, _ amount: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).increment(by: Int.bridgeJSLiftParameter(amount))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getValue")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getValue")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getValue(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).getValue()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_setLabelElements")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_setLabelElements")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_setLabelElements(_ _self: UnsafeMutableRawPointer, _ labelPrefixBytes: Int32, _ labelPrefixLength: Int32, _ labelSuffixBytes: Int32, _ labelSuffixLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).setLabelElements(_: String.bridgeJSLiftParameter(labelPrefixBytes, labelPrefixLength), _: String.bridgeJSLiftParameter(labelSuffixBytes, labelSuffixLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getLabel")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getLabel")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getLabel(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).getLabel()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_isEven")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_isEven")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_isEven(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).isEven()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_processGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_processGreeter")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_processGreeter(_ _self: UnsafeMutableRawPointer, _ greeter: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).processGreeter(_: BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(greeter))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_createGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_createGreeter")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_createGreeter(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).createGreeter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_processOptionalGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_processOptionalGreeter")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_processOptionalGreeter(_ _self: UnsafeMutableRawPointer, _ greeterIsSome: Int32, _ greeterValue: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).processOptionalGreeter(_: Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(greeterIsSome, greeterValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_createOptionalGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_createOptionalGreeter")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_createOptionalGreeter(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).createOptionalGreeter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_handleAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_handleAPIResult")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_handleAPIResult(_ _self: UnsafeMutableRawPointer, _ resultIsSome: Int32, _ resultCaseId: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).handleAPIResult(_: Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(resultIsSome, resultCaseId))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getAPIResult")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_getAPIResult(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).getAPIResult()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_count_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_count_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_count_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).count
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_count_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_count_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_count_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).count = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_name_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_name_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTag_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTag_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTag_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalTag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTag_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTag_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTag_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalTag = Optional<String>.bridgeJSLiftParameter(valueIsSome, valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalCount_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalCount_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalCount_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalCount
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalCount_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalCount_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalCount_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalCount = Optional<Int>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_direction_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_direction_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_direction_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).direction
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_direction_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_direction_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_direction_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).direction = Optional<BridgeJSRuntimeTests.Direction>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTheme_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTheme_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTheme_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalTheme
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTheme_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTheme_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalTheme_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalTheme = Optional<BridgeJSRuntimeTests.Theme>.bridgeJSLiftParameter(valueIsSome, valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_httpStatus_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_httpStatus_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_httpStatus_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).httpStatus
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_httpStatus_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_httpStatus_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_httpStatus_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).httpStatus = Optional<BridgeJSRuntimeTests.HttpStatus>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_apiResult_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_apiResult_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_apiResult_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).apiResult
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_apiResult_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_apiResult_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_apiResult_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueCaseId: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).apiResult = Optional<BridgeJSRuntimeTests.APIResult>.bridgeJSLiftParameter(valueIsSome, valueCaseId)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_helper_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_helper_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_helper_get(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).helper
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_helper_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_helper_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_helper_set(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).helper = BridgeJSRuntimeTests.Greeter.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalHelper_get")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalHelper_get")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalHelper_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalHelper
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalHelper_set")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalHelper_set")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_optionalHelper_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.SwiftDataProcessor.bridgeJSLiftParameter(_self).optionalHelper = Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_SwiftDataProcessor_deinit")
public func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.SwiftDataProcessor>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.SwiftDataProcessor: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_SwiftDataProcessor_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessor")
@_cdecl("bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessor")
public func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessor() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ProtocolReturnTests.createNativeProcessor() as! _BridgedSwiftProtocolExportable
    return ret.bridgeJSLowerAsProtocolReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorOptional")
@_cdecl("bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorOptional")
public func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorOptional() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ProtocolReturnTests.createNativeProcessorOptional()
    if let ret {
        _swift_js_return_optional_object(1, (ret as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
    } else {
        _swift_js_return_optional_object(0, 0)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorNil")
@_cdecl("bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorNil")
public func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorNil() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ProtocolReturnTests.createNativeProcessorNil()
    if let ret {
        _swift_js_return_optional_object(1, (ret as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
    } else {
        _swift_js_return_optional_object(0, 0)
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorArray")
@_cdecl("bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorArray")
public func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorArray() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ProtocolReturnTests.createNativeProcessorArray()
    for __bjs_elem_ret in ret {
        _swift_js_push_i32((__bjs_elem_ret as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
    }
    _swift_js_push_i32(Int32(ret.count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorDictionary")
@_cdecl("bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorDictionary")
public func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_static_createNativeProcessorDictionary() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.ProtocolReturnTests.createNativeProcessorDictionary()
    for __bjs_kv_ret in ret {
        __bjs_kv_ret.key.bridgeJSStackPush()
        _swift_js_push_i32((__bjs_kv_ret.value as! _BridgedSwiftProtocolExportable).bridgeJSLowerAsProtocolReturn())
    }
    _swift_js_push_i32(Int32(ret.count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_ProtocolReturnTests_deinit")
public func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.ProtocolReturnTests>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.ProtocolReturnTests: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_ProtocolReturnTests_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_init")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_init")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_init(_ transform: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor(transform: _BJS_Closure_20BridgeJSRuntimeTestsSS_SS.bridgeJSLift(transform))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_process")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_process")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_process(_ _self: UnsafeMutableRawPointer, _ textBytes: Int32, _ textLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).process(_: String.bridgeJSLiftParameter(textBytes, textLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processWithCustom")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processWithCustom")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processWithCustom(_ _self: UnsafeMutableRawPointer, _ textBytes: Int32, _ textLength: Int32, _ customTransform: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processWithCustom(_: String.bridgeJSLiftParameter(textBytes, textLength), customTransform: _BJS_Closure_20BridgeJSRuntimeTestsSiSSSd_SS.bridgeJSLift(customTransform))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_getTransform")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_getTransform")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_getTransform(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).getTransform()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalString")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalString")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalString(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalString(_: _BJS_Closure_20BridgeJSRuntimeTestsSqSS_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalInt")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalInt")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalInt(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalInt(_: _BJS_Closure_20BridgeJSRuntimeTestsSqSi_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalGreeter")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalGreeter")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalGreeter(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalGreeter(_: _BJS_Closure_20BridgeJSRuntimeTestsSq28BridgeJSRuntimeTests_GreeterC_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalStringFormatter")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalStringFormatter")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalStringFormatter(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeOptionalStringFormatter()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalGreeterCreator")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalGreeterCreator")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalGreeterCreator(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeOptionalGreeterCreator()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processDirection")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processDirection(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processDirection(_: _BJS_Closure_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_DirectionO_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processTheme")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processTheme(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processTheme(_: _BJS_Closure_20BridgeJSRuntimeTests26BridgeJSRuntimeTests_ThemeO_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processHttpStatus")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processHttpStatus")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processHttpStatus(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processHttpStatus(_: _BJS_Closure_20BridgeJSRuntimeTests31BridgeJSRuntimeTests_HttpStatusO_Si.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processAPIResult")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processAPIResult(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processAPIResult(_: _BJS_Closure_20BridgeJSRuntimeTests30BridgeJSRuntimeTests_APIResultO_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeDirectionChecker")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeDirectionChecker")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeDirectionChecker(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeDirectionChecker()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeThemeValidator")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeThemeValidator")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeThemeValidator(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeThemeValidator()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeStatusCodeExtractor")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeStatusCodeExtractor")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeStatusCodeExtractor(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeStatusCodeExtractor()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeAPIResultHandler")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeAPIResultHandler")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeAPIResultHandler(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeAPIResultHandler()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalDirection")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalDirection")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalDirection(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalDirection(_: _BJS_Closure_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_DirectionO_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalTheme")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalTheme")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalTheme(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalTheme(_: _BJS_Closure_20BridgeJSRuntimeTestsSq26BridgeJSRuntimeTests_ThemeO_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalAPIResult")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalAPIResult")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalAPIResult(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalAPIResult(_: _BJS_Closure_20BridgeJSRuntimeTestsSq30BridgeJSRuntimeTests_APIResultO_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalDirectionFormatter")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalDirectionFormatter")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeOptionalDirectionFormatter(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeOptionalDirectionFormatter()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processDataProcessor")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processDataProcessor")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processDataProcessor(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processDataProcessor(_: _BJS_Closure_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_makeDataProcessorFactory")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_makeDataProcessorFactory")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_makeDataProcessorFactory(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).makeDataProcessorFactory()
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_roundtripDataProcessor")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_roundtripDataProcessor")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_roundtripDataProcessor(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).roundtripDataProcessor(_: _BJS_Closure_20BridgeJSRuntimeTests34BridgeJSRuntimeTests_DataProcessorP_34BridgeJSRuntimeTests_DataProcessorP.bridgeJSLift(callback))
    return JSTypedClosure(ret).bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalDataProcessor")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalDataProcessor")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalDataProcessor(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalDataProcessor(_: _BJS_Closure_20BridgeJSRuntimeTestsSq34BridgeJSRuntimeTests_DataProcessorP_SS.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processVector")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processVector")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processVector(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processVector(_: _BJS_Closure_20BridgeJSRuntimeTestsSd_29BridgeJSRuntimeTests_Vector2DV.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalVector")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalVector")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_processOptionalVector(_ _self: UnsafeMutableRawPointer, _ callback: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.TextProcessor.bridgeJSLiftParameter(_self).processOptionalVector(_: _BJS_Closure_20BridgeJSRuntimeTestsSd_Sq29BridgeJSRuntimeTests_Vector2DV.bridgeJSLift(callback))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_TextProcessor_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_TextProcessor_deinit")
public func _bjs_BridgeJSRuntimeTests_TextProcessor_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.TextProcessor>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.TextProcessor: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_TextProcessor_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_TextProcessor_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_TextProcessor_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_TextProcessor_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_TextProcessor_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_TextProcessor_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_TextProcessor_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedTypeHost_init")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedTypeHost_init")
public func _bjs_BridgeJSRuntimeTests_NestedTypeHost_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedTypeHost()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedTypeHost_describe")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedTypeHost_describe")
public func _bjs_BridgeJSRuntimeTests_NestedTypeHost_describe(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.NestedTypeHost.bridgeJSLiftParameter(_self).describe()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_NestedTypeHost_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_NestedTypeHost_deinit")
public func _bjs_BridgeJSRuntimeTests_NestedTypeHost_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.NestedTypeHost>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.NestedTypeHost: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_NestedTypeHost_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalHolder_init")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalHolder_init")
public func _bjs_BridgeJSRuntimeTests_OptionalHolder_init(_ nullableGreeterIsSome: Int32, _ nullableGreeterValue: UnsafeMutableRawPointer, _ undefinedNumberIsSome: Int32, _ undefinedNumberValue: Float64) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalHolder(nullableGreeter: Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(nullableGreeterIsSome, nullableGreeterValue), undefinedNumber: JSUndefinedOr<Double>.bridgeJSLiftParameter(undefinedNumberIsSome, undefinedNumberValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalHolder_nullableGreeter_get")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalHolder_nullableGreeter_get")
public func _bjs_BridgeJSRuntimeTests_OptionalHolder_nullableGreeter_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalHolder.bridgeJSLiftParameter(_self).nullableGreeter
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalHolder_nullableGreeter_set")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalHolder_nullableGreeter_set")
public func _bjs_BridgeJSRuntimeTests_OptionalHolder_nullableGreeter_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.OptionalHolder.bridgeJSLiftParameter(_self).nullableGreeter = Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalHolder_undefinedNumber_get")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalHolder_undefinedNumber_get")
public func _bjs_BridgeJSRuntimeTests_OptionalHolder_undefinedNumber_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalHolder.bridgeJSLiftParameter(_self).undefinedNumber
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalHolder_undefinedNumber_set")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalHolder_undefinedNumber_set")
public func _bjs_BridgeJSRuntimeTests_OptionalHolder_undefinedNumber_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: Float64) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.OptionalHolder.bridgeJSLiftParameter(_self).undefinedNumber = JSUndefinedOr<Double>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalHolder_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalHolder_deinit")
public func _bjs_BridgeJSRuntimeTests_OptionalHolder_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.OptionalHolder>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.OptionalHolder: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_OptionalHolder_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_OptionalHolder_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_OptionalHolder_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_OptionalHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_OptionalHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_OptionalHolder_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_OptionalHolder_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_init")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_init")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_init(_ optionalNameIsSome: Int32, _ optionalNameBytes: Int32, _ optionalNameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalPropertyHolder(optionalName: Optional<String>.bridgeJSLiftParameter(optionalNameIsSome, optionalNameBytes, optionalNameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalName_get")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalName_get")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalName_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalPropertyHolder.bridgeJSLiftParameter(_self).optionalName
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalName_set")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalName_set")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalName_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.OptionalPropertyHolder.bridgeJSLiftParameter(_self).optionalName = Optional<String>.bridgeJSLiftParameter(valueIsSome, valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalAge_get")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalAge_get")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalAge_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalPropertyHolder.bridgeJSLiftParameter(_self).optionalAge
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalAge_set")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalAge_set")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalAge_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.OptionalPropertyHolder.bridgeJSLiftParameter(_self).optionalAge = Optional<Int>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalGreeter_get")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalGreeter_get")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalGreeter_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.OptionalPropertyHolder.bridgeJSLiftParameter(_self).optionalGreeter
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalGreeter_set")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalGreeter_set")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_optionalGreeter_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueValue: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.OptionalPropertyHolder.bridgeJSLiftParameter(_self).optionalGreeter = Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftParameter(valueIsSome, valueValue)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_deinit")
public func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.OptionalPropertyHolder>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.OptionalPropertyHolder: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_OptionalPropertyHolder_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Container_init")
@_cdecl("bjs_BridgeJSRuntimeTests_Container_init")
public func _bjs_BridgeJSRuntimeTests_Container_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let _tmp_config = Optional<BridgeJSRuntimeTests.Config>.bridgeJSLiftParameter()
    let _tmp_location = BridgeJSRuntimeTests.DataPoint.bridgeJSLiftParameter()
    let ret = BridgeJSRuntimeTests.Container(location: _tmp_location, config: _tmp_config)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Container_location_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Container_location_get")
public func _bjs_BridgeJSRuntimeTests_Container_location_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Container.bridgeJSLiftParameter(_self).location
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Container_location_set")
@_cdecl("bjs_BridgeJSRuntimeTests_Container_location_set")
public func _bjs_BridgeJSRuntimeTests_Container_location_set(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Container.bridgeJSLiftParameter(_self).location = BridgeJSRuntimeTests.DataPoint.bridgeJSLiftParameter()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Container_config_get")
@_cdecl("bjs_BridgeJSRuntimeTests_Container_config_get")
public func _bjs_BridgeJSRuntimeTests_Container_config_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.Container.bridgeJSLiftParameter(_self).config
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Container_config_set")
@_cdecl("bjs_BridgeJSRuntimeTests_Container_config_set")
public func _bjs_BridgeJSRuntimeTests_Container_config_set(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    BridgeJSRuntimeTests.Container.bridgeJSLiftParameter(_self).config = Optional<BridgeJSRuntimeTests.Config>.bridgeJSLiftParameter()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_Container_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_Container_deinit")
public func _bjs_BridgeJSRuntimeTests_Container_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.Container>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.Container: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_Container_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_Container_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_Container_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_Container_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_Container_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_Container_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_Container_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_LeakCheck_init")
@_cdecl("bjs_BridgeJSRuntimeTests_LeakCheck_init")
public func _bjs_BridgeJSRuntimeTests_LeakCheck_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSRuntimeTests.LeakCheck()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSRuntimeTests_LeakCheck_deinit")
@_cdecl("bjs_BridgeJSRuntimeTests_LeakCheck_deinit")
public func _bjs_BridgeJSRuntimeTests_LeakCheck_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSRuntimeTests.LeakCheck>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSRuntimeTests.LeakCheck: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    public var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSRuntimeTests_LeakCheck_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    public consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSRuntimeTests_LeakCheck_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_BridgeJSRuntimeTests_LeakCheck_wrap")
fileprivate func _bjs_BridgeJSRuntimeTests_LeakCheck_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSRuntimeTests_LeakCheck_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSRuntimeTests_LeakCheck_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSRuntimeTests_LeakCheck_wrap_extern(pointer)
}

@JSFunction func Promise_reject(_ promise: JSObject, _ value: JSValue) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_reject_BridgeJSRuntimeTests")
fileprivate func promise_reject_BridgeJSRuntimeTests_extern(_ promise: Int32, _ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64) -> Void
#else
fileprivate func promise_reject_BridgeJSRuntimeTests_extern(_ promise: Int32, _ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_reject_BridgeJSRuntimeTests(_ promise: Int32, _ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64) -> Void {
    return promise_reject_BridgeJSRuntimeTests_extern(promise, valueKind, valuePayload1, valuePayload2)
}

func _$Promise_reject(_ promise: JSObject, _ value: JSValue) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let (valueKind, valuePayload1, valuePayload2) = value.bridgeJSLowerParameter()
    promise_reject_BridgeJSRuntimeTests(promiseValue, valueKind, valuePayload1, valuePayload2)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_SS(_ promise: JSObject, _ value: String) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_SS")
fileprivate func promise_resolve_BridgeJSRuntimeTests_SS_extern(_ promise: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_SS_extern(_ promise: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_SS(_ promise: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_SS_extern(promise, valueBytes, valueLength)
}

func _$Promise_resolve_SS(_ promise: JSObject, _ value: String) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    value.bridgeJSWithLoweredParameter { (valueBytes, valueLength) in
        promise_resolve_BridgeJSRuntimeTests_SS(promiseValue, valueBytes, valueLength)
    }
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_y(_ promise: JSObject) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_y")
fileprivate func promise_resolve_BridgeJSRuntimeTests_y_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_y_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_y(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_y_extern(promise)
}

func _$Promise_resolve_y(_ promise: JSObject) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_y(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Si(_ promise: JSObject, _ value: Int) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Si")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Si_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Si_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Si(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Si_extern(promise, value)
}

func _$Promise_resolve_Si(_ promise: JSObject, _ value: Int) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Si(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sf(_ promise: JSObject, _ value: Float) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sf")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sf_extern(_ promise: Int32, _ value: Float32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sf_extern(_ promise: Int32, _ value: Float32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sf(_ promise: Int32, _ value: Float32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sf_extern(promise, value)
}

func _$Promise_resolve_Sf(_ promise: JSObject, _ value: Float) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sf(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sd(_ promise: JSObject, _ value: Double) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sd")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sd_extern(_ promise: Int32, _ value: Float64) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sd_extern(_ promise: Int32, _ value: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sd(_ promise: Int32, _ value: Float64) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sd_extern(promise, value)
}

func _$Promise_resolve_Sd(_ promise: JSObject, _ value: Double) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sd(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sb(_ promise: JSObject, _ value: Bool) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sb")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sb_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sb_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sb(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sb_extern(promise, value)
}

func _$Promise_resolve_Sb(_ promise: JSObject, _ value: Bool) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sb(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_28BridgeJSRuntimeTests_GreeterC(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Greeter) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_GreeterC")
fileprivate func promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_GreeterC_extern(_ promise: Int32, _ value: UnsafeMutableRawPointer) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_GreeterC_extern(_ promise: Int32, _ value: UnsafeMutableRawPointer) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_GreeterC(_ promise: Int32, _ value: UnsafeMutableRawPointer) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_GreeterC_extern(promise, value)
}

func _$Promise_resolve_28BridgeJSRuntimeTests_GreeterC(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Greeter) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valuePointer = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_GreeterC(promiseValue, valuePointer)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_8JSObjectC(_ promise: JSObject, _ value: JSObject) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_8JSObjectC")
fileprivate func promise_resolve_BridgeJSRuntimeTests_8JSObjectC_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_8JSObjectC_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_8JSObjectC(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_8JSObjectC_extern(promise, value)
}

func _$Promise_resolve_8JSObjectC(_ promise: JSObject, _ value: JSObject) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_8JSObjectC(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Theme) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_26BridgeJSRuntimeTests_ThemeO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_26BridgeJSRuntimeTests_ThemeO(_ promise: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_26BridgeJSRuntimeTests_ThemeO_extern(promise, valueBytes, valueLength)
}

func _$Promise_resolve_26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Theme) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    value.bridgeJSWithLoweredParameter { (valueBytes, valueLength) in
        promise_resolve_BridgeJSRuntimeTests_26BridgeJSRuntimeTests_ThemeO(promiseValue, valueBytes, valueLength)
    }
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Direction) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DirectionO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DirectionO(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DirectionO_extern(promise, value)
}

func _$Promise_resolve_30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Direction) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DirectionO(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sq26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.Theme>) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sq26BridgeJSRuntimeTests_ThemeO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq26BridgeJSRuntimeTests_ThemeO(_ promise: Int32, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sq26BridgeJSRuntimeTests_ThemeO_extern(promise, valueIsSome, valueBytes, valueLength)
}

func _$Promise_resolve_Sq26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.Theme>) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    value.bridgeJSWithLoweredParameter { (valueIsSome, valueBytes, valueLength) in
        promise_resolve_BridgeJSRuntimeTests_Sq26BridgeJSRuntimeTests_ThemeO(promiseValue, valueIsSome, valueBytes, valueLength)
    }
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sq30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.Direction>) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sq30BridgeJSRuntimeTests_DirectionO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueValue: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq30BridgeJSRuntimeTests_DirectionO(_ promise: Int32, _ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sq30BridgeJSRuntimeTests_DirectionO_extern(promise, valueIsSome, valueValue)
}

func _$Promise_resolve_Sq30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.Direction>) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let (valueIsSome, valueValue) = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sq30BridgeJSRuntimeTests_DirectionO(promiseValue, valueIsSome, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sa30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: [BridgeJSRuntimeTests.Direction]) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sa30BridgeJSRuntimeTests_DirectionO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa30BridgeJSRuntimeTests_DirectionO(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sa30BridgeJSRuntimeTests_DirectionO_extern(promise)
}

func _$Promise_resolve_Sa30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: [BridgeJSRuntimeTests.Direction]) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let _ = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sa30BridgeJSRuntimeTests_DirectionO(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_SD30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: [String: BridgeJSRuntimeTests.Direction]) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_SD30BridgeJSRuntimeTests_DirectionO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_SD30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_SD30BridgeJSRuntimeTests_DirectionO_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_SD30BridgeJSRuntimeTests_DirectionO(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_SD30BridgeJSRuntimeTests_DirectionO_extern(promise)
}

func _$Promise_resolve_SD30BridgeJSRuntimeTests_DirectionO(_ promise: JSObject, _ value: [String: BridgeJSRuntimeTests.Direction]) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let _ = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_SD30BridgeJSRuntimeTests_DirectionO(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sa26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: [BridgeJSRuntimeTests.Theme]) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sa26BridgeJSRuntimeTests_ThemeO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa26BridgeJSRuntimeTests_ThemeO(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sa26BridgeJSRuntimeTests_ThemeO_extern(promise)
}

func _$Promise_resolve_Sa26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: [BridgeJSRuntimeTests.Theme]) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let _ = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sa26BridgeJSRuntimeTests_ThemeO(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_SD26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: [String: BridgeJSRuntimeTests.Theme]) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_SD26BridgeJSRuntimeTests_ThemeO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_SD26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_SD26BridgeJSRuntimeTests_ThemeO_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_SD26BridgeJSRuntimeTests_ThemeO(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_SD26BridgeJSRuntimeTests_ThemeO_extern(promise)
}

func _$Promise_resolve_SD26BridgeJSRuntimeTests_ThemeO(_ promise: JSObject, _ value: [String: BridgeJSRuntimeTests.Theme]) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let _ = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_SD26BridgeJSRuntimeTests_ThemeO(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_29BridgeJSRuntimeTests_FileSizeO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.FileSize) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_29BridgeJSRuntimeTests_FileSizeO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_29BridgeJSRuntimeTests_FileSizeO_extern(_ promise: Int32, _ value: Int64) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_29BridgeJSRuntimeTests_FileSizeO_extern(_ promise: Int32, _ value: Int64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_29BridgeJSRuntimeTests_FileSizeO(_ promise: Int32, _ value: Int64) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_29BridgeJSRuntimeTests_FileSizeO_extern(promise, value)
}

func _$Promise_resolve_29BridgeJSRuntimeTests_FileSizeO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.FileSize) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueValue = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_29BridgeJSRuntimeTests_FileSizeO(promiseValue, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sq29BridgeJSRuntimeTests_FileSizeO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.FileSize>) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sq29BridgeJSRuntimeTests_FileSizeO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq29BridgeJSRuntimeTests_FileSizeO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueValue: Int64) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq29BridgeJSRuntimeTests_FileSizeO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueValue: Int64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq29BridgeJSRuntimeTests_FileSizeO(_ promise: Int32, _ valueIsSome: Int32, _ valueValue: Int64) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sq29BridgeJSRuntimeTests_FileSizeO_extern(promise, valueIsSome, valueValue)
}

func _$Promise_resolve_Sq29BridgeJSRuntimeTests_FileSizeO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.FileSize>) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let (valueIsSome, valueValue) = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sq29BridgeJSRuntimeTests_FileSizeO(promiseValue, valueIsSome, valueValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_39BridgeJSRuntimeTests_AsyncPayloadResultO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.AsyncPayloadResult) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_39BridgeJSRuntimeTests_AsyncPayloadResultO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_39BridgeJSRuntimeTests_AsyncPayloadResultO(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(promise, value)
}

func _$Promise_resolve_39BridgeJSRuntimeTests_AsyncPayloadResultO(_ promise: JSObject, _ value: BridgeJSRuntimeTests.AsyncPayloadResult) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueCaseId = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_39BridgeJSRuntimeTests_AsyncPayloadResultO(promiseValue, valueCaseId)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.AsyncPayloadResult>) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueCaseId: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(_ promise: Int32, _ valueIsSome: Int32, _ valueCaseId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO(_ promise: Int32, _ valueIsSome: Int32, _ valueCaseId: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO_extern(promise, valueIsSome, valueCaseId)
}

func _$Promise_resolve_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.AsyncPayloadResult>) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let (valueIsSome, valueCaseId) = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sq39BridgeJSRuntimeTests_AsyncPayloadResultO(promiseValue, valueIsSome, valueCaseId)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: BridgeJSRuntimeTests.PublicPoint) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_32BridgeJSRuntimeTests_PublicPointV")
fileprivate func promise_resolve_BridgeJSRuntimeTests_32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_32BridgeJSRuntimeTests_PublicPointV(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_32BridgeJSRuntimeTests_PublicPointV_extern(promise, value)
}

func _$Promise_resolve_32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: BridgeJSRuntimeTests.PublicPoint) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueObjectId = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_32BridgeJSRuntimeTests_PublicPointV(promiseValue, valueObjectId)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_28BridgeJSRuntimeTests_ContactV(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Contact) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_ContactV")
fileprivate func promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_ContactV_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_ContactV_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_ContactV(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_ContactV_extern(promise, value)
}

func _$Promise_resolve_28BridgeJSRuntimeTests_ContactV(_ promise: JSObject, _ value: BridgeJSRuntimeTests.Contact) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueObjectId = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_28BridgeJSRuntimeTests_ContactV(promiseValue, valueObjectId)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sa32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: [BridgeJSRuntimeTests.PublicPoint]) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sa32BridgeJSRuntimeTests_PublicPointV")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sa32BridgeJSRuntimeTests_PublicPointV(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sa32BridgeJSRuntimeTests_PublicPointV_extern(promise)
}

func _$Promise_resolve_Sa32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: [BridgeJSRuntimeTests.PublicPoint]) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let _ = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sa32BridgeJSRuntimeTests_PublicPointV(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_Sq32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.PublicPoint>) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_Sq32BridgeJSRuntimeTests_PublicPointV")
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_Sq32BridgeJSRuntimeTests_PublicPointV(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_Sq32BridgeJSRuntimeTests_PublicPointV_extern(promise, value)
}

func _$Promise_resolve_Sq32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: Optional<BridgeJSRuntimeTests.PublicPoint>) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueIsSome = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_Sq32BridgeJSRuntimeTests_PublicPointV(promiseValue, valueIsSome)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_SD32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: [String: BridgeJSRuntimeTests.PublicPoint]) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_SD32BridgeJSRuntimeTests_PublicPointV")
fileprivate func promise_resolve_BridgeJSRuntimeTests_SD32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_SD32BridgeJSRuntimeTests_PublicPointV_extern(_ promise: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_SD32BridgeJSRuntimeTests_PublicPointV(_ promise: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_SD32BridgeJSRuntimeTests_PublicPointV_extern(promise)
}

func _$Promise_resolve_SD32BridgeJSRuntimeTests_PublicPointV(_ promise: JSObject, _ value: [String: BridgeJSRuntimeTests.PublicPoint]) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let _ = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_SD32BridgeJSRuntimeTests_PublicPointV(promiseValue)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_30BridgeJSRuntimeTests_DataPointV(_ promise: JSObject, _ value: BridgeJSRuntimeTests.DataPoint) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DataPointV")
fileprivate func promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DataPointV_extern(_ promise: Int32, _ value: Int32) -> Void
#else
fileprivate func promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DataPointV_extern(_ promise: Int32, _ value: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DataPointV(_ promise: Int32, _ value: Int32) -> Void {
    return promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DataPointV_extern(promise, value)
}

func _$Promise_resolve_30BridgeJSRuntimeTests_DataPointV(_ promise: JSObject, _ value: BridgeJSRuntimeTests.DataPoint) throws(JSException) -> Void {
    let promiseValue = promise.bridgeJSLowerParameter()
    let valueObjectId = value.bridgeJSLowerParameter()
    promise_resolve_BridgeJSRuntimeTests_30BridgeJSRuntimeTests_DataPointV(promiseValue, valueObjectId)
    if let error = _swift_js_take_exception() { throw error }
}

extension BridgeJSRuntimeTests.Polygon: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.Tag: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.TagHolder: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.Coordinate: _BridgedSwiftAlias, _BridgedSwiftStruct {}

extension BridgeJSRuntimeTests.Priority: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.Alert: _BridgedSwiftAlias, _BridgedSwiftCaseEnum {}

extension BridgeJSRuntimeTests.UserId: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.Tagged: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.Canvas: _BridgedSwiftAlias, _BridgedSwiftStackType {}

extension BridgeJSRuntimeTests.AliasedTag: _BridgedSwiftAlias, _BridgedSwiftAssociatedValueEnum {}

extension BridgeJSRuntimeTests.Boxed: _BridgedSwiftAlias, _BridgedSwiftStackType {}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Surface_init")
fileprivate func bjs_Surface_init_extern(_ labelBytes: Int32, _ labelLength: Int32) -> Int32
#else
fileprivate func bjs_Surface_init_extern(_ labelBytes: Int32, _ labelLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Surface_init(_ labelBytes: Int32, _ labelLength: Int32) -> Int32 {
    return bjs_Surface_init_extern(labelBytes, labelLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Surface_label_get")
fileprivate func bjs_Surface_label_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_Surface_label_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Surface_label_get(_ self: Int32) -> Int32 {
    return bjs_Surface_label_get_extern(self)
}

func _$Surface_init(_ label: String) throws(JSException) -> JSObject {
    let ret0 = label.bridgeJSWithLoweredParameter { (labelBytes, labelLength) in
        let ret = bjs_Surface_init(labelBytes, labelLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$Surface_label_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Surface_label_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripTagged_static")
fileprivate func bjs_AliasImports_jsRoundTripTagged_static_extern(_ valueBytes: Int32, _ valueLength: Int32) -> Int32
#else
fileprivate func bjs_AliasImports_jsRoundTripTagged_static_extern(_ valueBytes: Int32, _ valueLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripTagged_static(_ valueBytes: Int32, _ valueLength: Int32) -> Int32 {
    return bjs_AliasImports_jsRoundTripTagged_static_extern(valueBytes, valueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripOptionalTagged_static")
fileprivate func bjs_AliasImports_jsRoundTripOptionalTagged_static_extern(_ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void
#else
fileprivate func bjs_AliasImports_jsRoundTripOptionalTagged_static_extern(_ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripOptionalTagged_static(_ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    return bjs_AliasImports_jsRoundTripOptionalTagged_static_extern(valueIsSome, valueBytes, valueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsProduceOptionalCanvas_static")
fileprivate func bjs_AliasImports_jsProduceOptionalCanvas_static_extern(_ labelIsSome: Int32, _ labelBytes: Int32, _ labelLength: Int32) -> Void
#else
fileprivate func bjs_AliasImports_jsProduceOptionalCanvas_static_extern(_ labelIsSome: Int32, _ labelBytes: Int32, _ labelLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsProduceOptionalCanvas_static(_ labelIsSome: Int32, _ labelBytes: Int32, _ labelLength: Int32) -> Void {
    return bjs_AliasImports_jsProduceOptionalCanvas_static_extern(labelIsSome, labelBytes, labelLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripAliasedTags_static")
fileprivate func bjs_AliasImports_jsRoundTripAliasedTags_static_extern() -> Void
#else
fileprivate func bjs_AliasImports_jsRoundTripAliasedTags_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripAliasedTags_static() -> Void {
    return bjs_AliasImports_jsRoundTripAliasedTags_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripPolygon_static")
fileprivate func bjs_AliasImports_jsRoundTripPolygon_static_extern(_ value: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer
#else
fileprivate func bjs_AliasImports_jsRoundTripPolygon_static_extern(_ value: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripPolygon_static(_ value: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    return bjs_AliasImports_jsRoundTripPolygon_static_extern(value)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripCoordinate_static")
fileprivate func bjs_AliasImports_jsRoundTripCoordinate_static_extern(_ value: Int32) -> Int32
#else
fileprivate func bjs_AliasImports_jsRoundTripCoordinate_static_extern(_ value: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripCoordinate_static(_ value: Int32) -> Int32 {
    return bjs_AliasImports_jsRoundTripCoordinate_static_extern(value)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripUserId_static")
fileprivate func bjs_AliasImports_jsRoundTripUserId_static_extern(_ value: Int32) -> Int32
#else
fileprivate func bjs_AliasImports_jsRoundTripUserId_static_extern(_ value: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripUserId_static(_ value: Int32) -> Int32 {
    return bjs_AliasImports_jsRoundTripUserId_static_extern(value)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AliasImports_jsRoundTripOptionalUserId_static")
fileprivate func bjs_AliasImports_jsRoundTripOptionalUserId_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void
#else
fileprivate func bjs_AliasImports_jsRoundTripOptionalUserId_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AliasImports_jsRoundTripOptionalUserId_static(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    return bjs_AliasImports_jsRoundTripOptionalUserId_static_extern(valueIsSome, valueValue)
}

func _$AliasImports_jsRoundTripTagged(_ value: BridgeJSRuntimeTests.Tagged) throws(JSException) -> BridgeJSRuntimeTests.Tagged {
    let ret0 = value.bridgeJSWithLoweredParameter { (valueBytes, valueLength) in
        let ret = bjs_AliasImports_jsRoundTripTagged_static(valueBytes, valueLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.Tagged.bridgeJSLiftReturn(ret)
}

func _$AliasImports_jsRoundTripOptionalTagged(_ value: Optional<BridgeJSRuntimeTests.Tagged>) throws(JSException) -> Optional<BridgeJSRuntimeTests.Tagged> {
    value.bridgeJSWithLoweredParameter { (valueIsSome, valueBytes, valueLength) in
        bjs_AliasImports_jsRoundTripOptionalTagged_static(valueIsSome, valueBytes, valueLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<BridgeJSRuntimeTests.Tagged>.bridgeJSLiftReturnFromSideChannel()
}

func _$AliasImports_jsProduceOptionalCanvas(_ label: Optional<String>) throws(JSException) -> Optional<BridgeJSRuntimeTests.Canvas> {
    label.bridgeJSWithLoweredParameter { (labelIsSome, labelBytes, labelLength) in
        bjs_AliasImports_jsProduceOptionalCanvas_static(labelIsSome, labelBytes, labelLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<BridgeJSRuntimeTests.Canvas>.bridgeJSLiftReturn()
}

func _$AliasImports_jsRoundTripAliasedTags(_ values: [Optional<BridgeJSRuntimeTests.AliasedTag>]) throws(JSException) -> [Optional<BridgeJSRuntimeTests.AliasedTag>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_AliasImports_jsRoundTripAliasedTags_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<BridgeJSRuntimeTests.AliasedTag>].bridgeJSLiftReturn()
}

func _$AliasImports_jsRoundTripPolygon(_ value: BridgeJSRuntimeTests.Polygon) throws(JSException) -> BridgeJSRuntimeTests.Polygon {
    let valuePointer = value.bridgeJSLowerParameter()
    let ret = bjs_AliasImports_jsRoundTripPolygon_static(valuePointer)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.Polygon.bridgeJSLiftReturn(ret)
}

func _$AliasImports_jsRoundTripCoordinate(_ value: BridgeJSRuntimeTests.Coordinate) throws(JSException) -> BridgeJSRuntimeTests.Coordinate {
    let valueObjectId = value.bridgeJSLowerParameter()
    let ret = bjs_AliasImports_jsRoundTripCoordinate_static(valueObjectId)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.Coordinate.bridgeJSLiftReturn(ret)
}

func _$AliasImports_jsRoundTripUserId(_ value: BridgeJSRuntimeTests.UserId) throws(JSException) -> BridgeJSRuntimeTests.UserId {
    let valueValue = value.bridgeJSLowerParameter()
    let ret = bjs_AliasImports_jsRoundTripUserId_static(valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.UserId.bridgeJSLiftReturn(ret)
}

func _$AliasImports_jsRoundTripOptionalUserId(_ value: Optional<BridgeJSRuntimeTests.UserId>) throws(JSException) -> Optional<BridgeJSRuntimeTests.UserId> {
    let (valueIsSome, valueValue) = value.bridgeJSLowerParameter()
    bjs_AliasImports_jsRoundTripOptionalUserId_static(valueIsSome, valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<BridgeJSRuntimeTests.UserId>.bridgeJSLiftReturnFromSideChannel()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArrayElementObject_init")
fileprivate func bjs_ArrayElementObject_init_extern(_ idBytes: Int32, _ idLength: Int32) -> Int32
#else
fileprivate func bjs_ArrayElementObject_init_extern(_ idBytes: Int32, _ idLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArrayElementObject_init(_ idBytes: Int32, _ idLength: Int32) -> Int32 {
    return bjs_ArrayElementObject_init_extern(idBytes, idLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArrayElementObject_id_get")
fileprivate func bjs_ArrayElementObject_id_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_ArrayElementObject_id_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArrayElementObject_id_get(_ self: Int32) -> Int32 {
    return bjs_ArrayElementObject_id_get_extern(self)
}

func _$ArrayElementObject_init(_ id: String) throws(JSException) -> JSObject {
    let ret0 = id.bridgeJSWithLoweredParameter { (idBytes, idLength) in
        let ret = bjs_ArrayElementObject_init(idBytes, idLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$ArrayElementObject_id_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_ArrayElementObject_id_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsIntArrayLength_static")
fileprivate func bjs_ArraySupportImports_jsIntArrayLength_static_extern() -> Int32
#else
fileprivate func bjs_ArraySupportImports_jsIntArrayLength_static_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsIntArrayLength_static() -> Int32 {
    return bjs_ArraySupportImports_jsIntArrayLength_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripIntArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripIntArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripIntArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripIntArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripIntArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripNumberArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripNumberArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripNumberArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripNumberArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripNumberArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripStringArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripStringArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripStringArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripStringArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripStringArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripBoolArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripBoolArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripBoolArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripBoolArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripBoolArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripJSValueArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripJSValueArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripJSValueArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripJSValueArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripJSValueArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripJSObjectArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripJSObjectArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripJSObjectArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripJSObjectArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripJSObjectArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripJSClassArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripJSClassArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripJSClassArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripJSClassArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripJSClassArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripOptionalIntArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalIntArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalIntArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalIntArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripOptionalIntArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripOptionalStringArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalStringArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalStringArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalStringArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripOptionalStringArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripOptionalBoolArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalBoolArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalBoolArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalBoolArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripOptionalBoolArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripOptionalJSValueArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSValueArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSValueArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSValueArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripOptionalJSValueArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripOptionalJSObjectArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSObjectArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSObjectArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSObjectArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripOptionalJSObjectArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsRoundTripOptionalJSClassArray_static")
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSClassArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSClassArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsRoundTripOptionalJSClassArray_static() -> Void {
    return bjs_ArraySupportImports_jsRoundTripOptionalJSClassArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsSumNumberArray_static")
fileprivate func bjs_ArraySupportImports_jsSumNumberArray_static_extern() -> Float64
#else
fileprivate func bjs_ArraySupportImports_jsSumNumberArray_static_extern() -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsSumNumberArray_static() -> Float64 {
    return bjs_ArraySupportImports_jsSumNumberArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_jsCreateNumberArray_static")
fileprivate func bjs_ArraySupportImports_jsCreateNumberArray_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_jsCreateNumberArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_jsCreateNumberArray_static() -> Void {
    return bjs_ArraySupportImports_jsCreateNumberArray_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ArraySupportImports_runJsArraySupportTests_static")
fileprivate func bjs_ArraySupportImports_runJsArraySupportTests_static_extern() -> Void
#else
fileprivate func bjs_ArraySupportImports_runJsArraySupportTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ArraySupportImports_runJsArraySupportTests_static() -> Void {
    return bjs_ArraySupportImports_runJsArraySupportTests_static_extern()
}

func _$ArraySupportImports_jsIntArrayLength(_ items: [Int]) throws(JSException) -> Int {
    let _ = items.bridgeJSLowerParameter()
    let ret = bjs_ArraySupportImports_jsIntArrayLength_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$ArraySupportImports_jsRoundTripIntArray(_ items: [Int]) throws(JSException) -> [Int] {
    let _ = items.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripIntArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Int].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripNumberArray(_ values: [Double]) throws(JSException) -> [Double] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripNumberArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Double].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripStringArray(_ values: [String]) throws(JSException) -> [String] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripStringArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripBoolArray(_ values: [Bool]) throws(JSException) -> [Bool] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripBoolArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Bool].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripJSValueArray(_ v: [JSValue]) throws(JSException) -> [JSValue] {
    let _ = v.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripJSValueArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [JSValue].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripJSObjectArray(_ values: [JSObject]) throws(JSException) -> [JSObject] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripJSObjectArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [JSObject].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripJSClassArray(_ values: [ArrayElementObject]) throws(JSException) -> [ArrayElementObject] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripJSClassArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [ArrayElementObject].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripOptionalIntArray(_ values: [Optional<Int>]) throws(JSException) -> [Optional<Int>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripOptionalIntArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<Int>].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripOptionalStringArray(_ values: [Optional<String>]) throws(JSException) -> [Optional<String>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripOptionalStringArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<String>].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripOptionalBoolArray(_ values: [Optional<Bool>]) throws(JSException) -> [Optional<Bool>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripOptionalBoolArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<Bool>].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripOptionalJSValueArray(_ values: [Optional<JSValue>]) throws(JSException) -> [Optional<JSValue>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripOptionalJSValueArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<JSValue>].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripOptionalJSObjectArray(_ values: [Optional<JSObject>]) throws(JSException) -> [Optional<JSObject>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripOptionalJSObjectArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<JSObject>].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsRoundTripOptionalJSClassArray(_ values: [Optional<ArrayElementObject>]) throws(JSException) -> [Optional<ArrayElementObject>] {
    let _ = values.bridgeJSLowerParameter()
    bjs_ArraySupportImports_jsRoundTripOptionalJSClassArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Optional<ArrayElementObject>].bridgeJSLiftReturn()
}

func _$ArraySupportImports_jsSumNumberArray(_ values: [Double]) throws(JSException) -> Double {
    let _ = values.bridgeJSLowerParameter()
    let ret = bjs_ArraySupportImports_jsSumNumberArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

func _$ArraySupportImports_jsCreateNumberArray() throws(JSException) -> [Double] {
    bjs_ArraySupportImports_jsCreateNumberArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Double].bridgeJSLiftReturn()
}

func _$ArraySupportImports_runJsArraySupportTests() throws(JSException) -> Void {
    bjs_ArraySupportImports_runJsArraySupportTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripVoid_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripVoid_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripVoid_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripVoid_static(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripVoid_static_extern(resolveRef, rejectRef)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripNumber_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripNumber_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Float64) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripNumber_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripNumber_static(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Float64) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripNumber_static_extern(resolveRef, rejectRef, v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripBool_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripBool_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripBool_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripBool_static(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripBool_static_extern(resolveRef, rejectRef, v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripString_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripString_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripString_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripString_static(_ resolveRef: Int32, _ rejectRef: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripString_static_extern(resolveRef, rejectRef, vBytes, vLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripOptionalString_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalString_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalString_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalString_static(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripOptionalString_static_extern(resolveRef, rejectRef, vIsSome, vBytes, vLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripOptionalNumber_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalNumber_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vValue: Float64) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalNumber_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vValue: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalNumber_static(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vValue: Float64) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripOptionalNumber_static_extern(resolveRef, rejectRef, vIsSome, vValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripBoolArray_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripBoolArray_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripBoolArray_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripBoolArray_static(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripBoolArray_static_extern(resolveRef, rejectRef)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripIntArray_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripIntArray_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripIntArray_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripIntArray_static(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripIntArray_static_extern(resolveRef, rejectRef)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripStringArray_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripStringArray_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripStringArray_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripStringArray_static(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripStringArray_static_extern(resolveRef, rejectRef)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripFeatureFlag_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripFeatureFlag_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripFeatureFlag_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripFeatureFlag_static(_ resolveRef: Int32, _ rejectRef: Int32, _ vBytes: Int32, _ vLength: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripFeatureFlag_static_extern(resolveRef, rejectRef, vBytes, vLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum_static(_ resolveRef: Int32, _ rejectRef: Int32, _ v: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum_static_extern(resolveRef, rejectRef, v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum_static")
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vCaseId: Int32) -> Void
#else
fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum_static_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum_static(_ resolveRef: Int32, _ rejectRef: Int32, _ vIsSome: Int32, _ vCaseId: Int32) -> Void {
    return bjs_AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum_static_extern(resolveRef, rejectRef, vIsSome, vCaseId)
}

func _$AsyncImportImports_jsAsyncRoundTripVoid() async throws(JSException) -> Void {
    try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<() -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        bjs_AsyncImportImports_jsAsyncRoundTripVoid_static(resolveRef, rejectRef)
    }
}

func _$AsyncImportImports_jsAsyncRoundTripNumber(_ v: Double) async throws(JSException) -> Double {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending Double) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let vValue = v.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripNumber_static(resolveRef, rejectRef, vValue)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripBool(_ v: Bool) async throws(JSException) -> Bool {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending Bool) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let vValue = v.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripBool_static(resolveRef, rejectRef, vValue)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripString(_ v: String) async throws(JSException) -> String {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending String) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        v.bridgeJSWithLoweredParameter { (vBytes, vLength) in
            bjs_AsyncImportImports_jsAsyncRoundTripString_static(resolveRef, rejectRef, vBytes, vLength)
        }
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripOptionalString(_ v: Optional<String>) async throws(JSException) -> Optional<String> {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending Optional<String>) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        v.bridgeJSWithLoweredParameter { (vIsSome, vBytes, vLength) in
            bjs_AsyncImportImports_jsAsyncRoundTripOptionalString_static(resolveRef, rejectRef, vIsSome, vBytes, vLength)
        }
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripOptionalNumber(_ v: Optional<Double>) async throws(JSException) -> Optional<Double> {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending Optional<Double>) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let (vIsSome, vValue) = v.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripOptionalNumber_static(resolveRef, rejectRef, vIsSome, vValue)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripBoolArray(_ values: [Bool]) async throws(JSException) -> [Bool] {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending [Bool]) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let _ = values.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripBoolArray_static(resolveRef, rejectRef)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripIntArray(_ values: [Double]) async throws(JSException) -> [Double] {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending [Double]) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let _ = values.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripIntArray_static(resolveRef, rejectRef)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripStringArray(_ values: [String]) async throws(JSException) -> [String] {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending [String]) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let _ = values.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripStringArray_static(resolveRef, rejectRef)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripFeatureFlag(_ v: BridgeJSRuntimeTests.FeatureFlag) async throws(JSException) -> BridgeJSRuntimeTests.FeatureFlag {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending BridgeJSRuntimeTests.FeatureFlag) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        v.bridgeJSWithLoweredParameter { (vBytes, vLength) in
            bjs_AsyncImportImports_jsAsyncRoundTripFeatureFlag_static(resolveRef, rejectRef, vBytes, vLength)
        }
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum(_ v: BridgeJSRuntimeTests.AsyncImportedPayloadResult) async throws(JSException) -> BridgeJSRuntimeTests.AsyncImportedPayloadResult {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending BridgeJSRuntimeTests.AsyncImportedPayloadResult) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let vCaseId = v.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripAssociatedValueEnum_static(resolveRef, rejectRef, vCaseId)
    }
    return resolved
}

func _$AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum(_ v: Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>) async throws(JSException) -> Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult> {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending Optional<BridgeJSRuntimeTests.AsyncImportedPayloadResult>) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        let (vIsSome, vCaseId) = v.bridgeJSLowerParameter()
        bjs_AsyncImportImports_jsAsyncRoundTripOptionalAssociatedValueEnum_static(resolveRef, rejectRef, vIsSome, vCaseId)
    }
    return resolved
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureAsyncImports_runJsClosureAsyncTests_static")
fileprivate func bjs_ClosureAsyncImports_runJsClosureAsyncTests_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void
#else
fileprivate func bjs_ClosureAsyncImports_runJsClosureAsyncTests_static_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureAsyncImports_runJsClosureAsyncTests_static(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    return bjs_ClosureAsyncImports_runJsClosureAsyncTests_static_extern(resolveRef, rejectRef)
}

func _$ClosureAsyncImports_runJsClosureAsyncTests() async throws(JSException) -> Void {
    try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<() -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        bjs_ClosureAsyncImports_runJsClosureAsyncTests_static(resolveRef, rejectRef)
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsApplyVoid_static")
fileprivate func bjs_ClosureSupportImports_jsApplyVoid_static_extern(_ callback: Int32) -> Void
#else
fileprivate func bjs_ClosureSupportImports_jsApplyVoid_static_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsApplyVoid_static(_ callback: Int32) -> Void {
    return bjs_ClosureSupportImports_jsApplyVoid_static_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsApplyBool_static")
fileprivate func bjs_ClosureSupportImports_jsApplyBool_static_extern(_ callback: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsApplyBool_static_extern(_ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsApplyBool_static(_ callback: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsApplyBool_static_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsApplyInt_static")
fileprivate func bjs_ClosureSupportImports_jsApplyInt_static_extern(_ value: Int32, _ transform: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsApplyInt_static_extern(_ value: Int32, _ transform: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsApplyInt_static(_ value: Int32, _ transform: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsApplyInt_static_extern(value, transform)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsApplyDouble_static")
fileprivate func bjs_ClosureSupportImports_jsApplyDouble_static_extern(_ value: Float64, _ transform: Int32) -> Float64
#else
fileprivate func bjs_ClosureSupportImports_jsApplyDouble_static_extern(_ value: Float64, _ transform: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsApplyDouble_static(_ value: Float64, _ transform: Int32) -> Float64 {
    return bjs_ClosureSupportImports_jsApplyDouble_static_extern(value, transform)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsApplyString_static")
fileprivate func bjs_ClosureSupportImports_jsApplyString_static_extern(_ valueBytes: Int32, _ valueLength: Int32, _ transform: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsApplyString_static_extern(_ valueBytes: Int32, _ valueLength: Int32, _ transform: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsApplyString_static(_ valueBytes: Int32, _ valueLength: Int32, _ transform: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsApplyString_static_extern(valueBytes, valueLength, transform)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsApplyJSObject_static")
fileprivate func bjs_ClosureSupportImports_jsApplyJSObject_static_extern(_ value: Int32, _ transform: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsApplyJSObject_static_extern(_ value: Int32, _ transform: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsApplyJSObject_static(_ value: Int32, _ transform: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsApplyJSObject_static_extern(value, transform)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsMakeIntToInt_static")
fileprivate func bjs_ClosureSupportImports_jsMakeIntToInt_static_extern(_ base: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsMakeIntToInt_static_extern(_ base: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsMakeIntToInt_static(_ base: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsMakeIntToInt_static_extern(base)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsMakeDoubleToDouble_static")
fileprivate func bjs_ClosureSupportImports_jsMakeDoubleToDouble_static_extern(_ base: Float64) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsMakeDoubleToDouble_static_extern(_ base: Float64) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsMakeDoubleToDouble_static(_ base: Float64) -> Int32 {
    return bjs_ClosureSupportImports_jsMakeDoubleToDouble_static_extern(base)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsMakeStringToString_static")
fileprivate func bjs_ClosureSupportImports_jsMakeStringToString_static_extern(_ prefixBytes: Int32, _ prefixLength: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsMakeStringToString_static_extern(_ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsMakeStringToString_static(_ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsMakeStringToString_static_extern(prefixBytes, prefixLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsCallTwice_static")
fileprivate func bjs_ClosureSupportImports_jsCallTwice_static_extern(_ value: Int32, _ callback: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsCallTwice_static_extern(_ value: Int32, _ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsCallTwice_static(_ value: Int32, _ callback: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsCallTwice_static_extern(value, callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsCallBinary_static")
fileprivate func bjs_ClosureSupportImports_jsCallBinary_static_extern(_ callback: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsCallBinary_static_extern(_ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsCallBinary_static(_ callback: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsCallBinary_static_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsCallTriple_static")
fileprivate func bjs_ClosureSupportImports_jsCallTriple_static_extern(_ callback: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsCallTriple_static_extern(_ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsCallTriple_static(_ callback: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsCallTriple_static_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsCallAfterRelease_static")
fileprivate func bjs_ClosureSupportImports_jsCallAfterRelease_static_extern(_ callback: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsCallAfterRelease_static_extern(_ callback: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsCallAfterRelease_static(_ callback: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsCallAfterRelease_static_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsOptionalInvoke_static")
fileprivate func bjs_ClosureSupportImports_jsOptionalInvoke_static_extern(_ callbackIsSome: Int32, _ callbackFuncRef: Int32) -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsOptionalInvoke_static_extern(_ callbackIsSome: Int32, _ callbackFuncRef: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsOptionalInvoke_static(_ callbackIsSome: Int32, _ callbackFuncRef: Int32) -> Int32 {
    return bjs_ClosureSupportImports_jsOptionalInvoke_static_extern(callbackIsSome, callbackFuncRef)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsStoreClosure_static")
fileprivate func bjs_ClosureSupportImports_jsStoreClosure_static_extern(_ callback: Int32) -> Void
#else
fileprivate func bjs_ClosureSupportImports_jsStoreClosure_static_extern(_ callback: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsStoreClosure_static(_ callback: Int32) -> Void {
    return bjs_ClosureSupportImports_jsStoreClosure_static_extern(callback)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsCallStoredClosure_static")
fileprivate func bjs_ClosureSupportImports_jsCallStoredClosure_static_extern() -> Void
#else
fileprivate func bjs_ClosureSupportImports_jsCallStoredClosure_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsCallStoredClosure_static() -> Void {
    return bjs_ClosureSupportImports_jsCallStoredClosure_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_jsHeapCount_static")
fileprivate func bjs_ClosureSupportImports_jsHeapCount_static_extern() -> Int32
#else
fileprivate func bjs_ClosureSupportImports_jsHeapCount_static_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_jsHeapCount_static() -> Int32 {
    return bjs_ClosureSupportImports_jsHeapCount_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureSupportImports_runJsClosureSupportTests_static")
fileprivate func bjs_ClosureSupportImports_runJsClosureSupportTests_static_extern() -> Void
#else
fileprivate func bjs_ClosureSupportImports_runJsClosureSupportTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureSupportImports_runJsClosureSupportTests_static() -> Void {
    return bjs_ClosureSupportImports_runJsClosureSupportTests_static_extern()
}

func _$ClosureSupportImports_jsApplyVoid(_ callback: JSTypedClosure<() -> Void>) throws(JSException) -> Void {
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    bjs_ClosureSupportImports_jsApplyVoid_static(callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$ClosureSupportImports_jsApplyBool(_ callback: JSTypedClosure<() -> Bool>) throws(JSException) -> Bool {
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsApplyBool_static(callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Bool.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsApplyInt(_ value: Int, _ transform: JSTypedClosure<(Int) -> Int>) throws(JSException) -> Int {
    let valueValue = value.bridgeJSLowerParameter()
    let transformFuncRef = transform.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsApplyInt_static(valueValue, transformFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsApplyDouble(_ value: Double, _ transform: JSTypedClosure<(Double) -> Double>) throws(JSException) -> Double {
    let valueValue = value.bridgeJSLowerParameter()
    let transformFuncRef = transform.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsApplyDouble_static(valueValue, transformFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsApplyString(_ value: String, _ transform: JSTypedClosure<(String) -> String>) throws(JSException) -> String {
    let ret0 = value.bridgeJSWithLoweredParameter { (valueBytes, valueLength) in
        let transformFuncRef = transform.bridgeJSLowerParameter()
        let ret = bjs_ClosureSupportImports_jsApplyString_static(valueBytes, valueLength, transformFuncRef)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsApplyJSObject(_ value: JSObject, _ transform: JSTypedClosure<(JSObject) -> JSObject>) throws(JSException) -> JSObject {
    let valueValue = value.bridgeJSLowerParameter()
    let transformFuncRef = transform.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsApplyJSObject_static(valueValue, transformFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsMakeIntToInt(_ base: Int) throws(JSException) -> (Int) -> Int {
    let baseValue = base.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsMakeIntToInt_static(baseValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return _BJS_Closure_20BridgeJSRuntimeTestsSi_Si.bridgeJSLift(ret)
}

func _$ClosureSupportImports_jsMakeDoubleToDouble(_ base: Double) throws(JSException) -> (Double) -> Double {
    let baseValue = base.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsMakeDoubleToDouble_static(baseValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return _BJS_Closure_20BridgeJSRuntimeTestsSd_Sd.bridgeJSLift(ret)
}

func _$ClosureSupportImports_jsMakeStringToString(_ prefix: String) throws(JSException) -> (String) -> String {
    let ret0 = prefix.bridgeJSWithLoweredParameter { (prefixBytes, prefixLength) in
        let ret = bjs_ClosureSupportImports_jsMakeStringToString_static(prefixBytes, prefixLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return _BJS_Closure_20BridgeJSRuntimeTestsSS_SS.bridgeJSLift(ret)
}

func _$ClosureSupportImports_jsCallTwice(_ value: Int, _ callback: JSTypedClosure<(Int) -> Void>) throws(JSException) -> Int {
    let valueValue = value.bridgeJSLowerParameter()
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsCallTwice_static(valueValue, callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsCallBinary(_ callback: JSTypedClosure<(Int, Int) -> Int>) throws(JSException) -> Int {
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsCallBinary_static(callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsCallTriple(_ callback: JSTypedClosure<(Int, Int, Int) -> Int>) throws(JSException) -> Int {
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsCallTriple_static(callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsCallAfterRelease(_ callback: JSTypedClosure<() -> Void>) throws(JSException) -> String {
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsCallAfterRelease_static(callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsOptionalInvoke(_ callback: Optional<JSTypedClosure<() -> Bool>>) throws(JSException) -> Bool {
    let (callbackIsSome, callbackFuncRef) = callback.bridgeJSLowerParameter()
    let ret = bjs_ClosureSupportImports_jsOptionalInvoke_static(callbackIsSome, callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Bool.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_jsStoreClosure(_ callback: JSTypedClosure<() -> Void>) throws(JSException) -> Void {
    let callbackFuncRef = callback.bridgeJSLowerParameter()
    bjs_ClosureSupportImports_jsStoreClosure_static(callbackFuncRef)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$ClosureSupportImports_jsCallStoredClosure() throws(JSException) -> Void {
    bjs_ClosureSupportImports_jsCallStoredClosure_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$ClosureSupportImports_jsHeapCount() throws(JSException) -> Int {
    let ret = bjs_ClosureSupportImports_jsHeapCount_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$ClosureSupportImports_runJsClosureSupportTests() throws(JSException) -> Void {
    bjs_ClosureSupportImports_runJsClosureSupportTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_ClosureThrowsImports_runJsClosureThrowsTests_static")
fileprivate func bjs_ClosureThrowsImports_runJsClosureThrowsTests_static_extern() -> Void
#else
fileprivate func bjs_ClosureThrowsImports_runJsClosureThrowsTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ClosureThrowsImports_runJsClosureThrowsTests_static() -> Void {
    return bjs_ClosureThrowsImports_runJsClosureThrowsTests_static_extern()
}

func _$ClosureThrowsImports_runJsClosureThrowsTests() throws(JSException) -> Void {
    bjs_ClosureThrowsImports_runJsClosureThrowsTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DefaultArgumentImports_runJsDefaultArgumentTests_static")
fileprivate func bjs_DefaultArgumentImports_runJsDefaultArgumentTests_static_extern() -> Void
#else
fileprivate func bjs_DefaultArgumentImports_runJsDefaultArgumentTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DefaultArgumentImports_runJsDefaultArgumentTests_static() -> Void {
    return bjs_DefaultArgumentImports_runJsDefaultArgumentTests_static_extern()
}

func _$DefaultArgumentImports_runJsDefaultArgumentTests() throws(JSException) -> Void {
    bjs_DefaultArgumentImports_runJsDefaultArgumentTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DictionarySupportImports_jsRoundTripDictionaryInt_static")
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryInt_static_extern() -> Void
#else
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryInt_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryInt_static() -> Void {
    return bjs_DictionarySupportImports_jsRoundTripDictionaryInt_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DictionarySupportImports_jsRoundTripDictionaryBool_static")
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryBool_static_extern() -> Void
#else
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryBool_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryBool_static() -> Void {
    return bjs_DictionarySupportImports_jsRoundTripDictionaryBool_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DictionarySupportImports_jsRoundTripDictionaryDouble_static")
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryDouble_static_extern() -> Void
#else
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryDouble_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryDouble_static() -> Void {
    return bjs_DictionarySupportImports_jsRoundTripDictionaryDouble_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DictionarySupportImports_jsRoundTripDictionaryJSObject_static")
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryJSObject_static_extern() -> Void
#else
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryJSObject_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryJSObject_static() -> Void {
    return bjs_DictionarySupportImports_jsRoundTripDictionaryJSObject_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DictionarySupportImports_jsRoundTripDictionaryJSValue_static")
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryJSValue_static_extern() -> Void
#else
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryJSValue_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryJSValue_static() -> Void {
    return bjs_DictionarySupportImports_jsRoundTripDictionaryJSValue_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_DictionarySupportImports_jsRoundTripDictionaryDoubleArray_static")
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryDoubleArray_static_extern() -> Void
#else
fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryDoubleArray_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_DictionarySupportImports_jsRoundTripDictionaryDoubleArray_static() -> Void {
    return bjs_DictionarySupportImports_jsRoundTripDictionaryDoubleArray_static_extern()
}

func _$DictionarySupportImports_jsRoundTripDictionaryInt(_ values: [String: Int]) throws(JSException) -> [String: Int] {
    let _ = values.bridgeJSLowerParameter()
    bjs_DictionarySupportImports_jsRoundTripDictionaryInt_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: Int].bridgeJSLiftReturn()
}

func _$DictionarySupportImports_jsRoundTripDictionaryBool(_ values: [String: Bool]) throws(JSException) -> [String: Bool] {
    let _ = values.bridgeJSLowerParameter()
    bjs_DictionarySupportImports_jsRoundTripDictionaryBool_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: Bool].bridgeJSLiftReturn()
}

func _$DictionarySupportImports_jsRoundTripDictionaryDouble(_ values: [String: Double]) throws(JSException) -> [String: Double] {
    let _ = values.bridgeJSLowerParameter()
    bjs_DictionarySupportImports_jsRoundTripDictionaryDouble_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: Double].bridgeJSLiftReturn()
}

func _$DictionarySupportImports_jsRoundTripDictionaryJSObject(_ values: [String: JSObject]) throws(JSException) -> [String: JSObject] {
    let _ = values.bridgeJSLowerParameter()
    bjs_DictionarySupportImports_jsRoundTripDictionaryJSObject_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: JSObject].bridgeJSLiftReturn()
}

func _$DictionarySupportImports_jsRoundTripDictionaryJSValue(_ values: [String: JSValue]) throws(JSException) -> [String: JSValue] {
    let _ = values.bridgeJSLowerParameter()
    bjs_DictionarySupportImports_jsRoundTripDictionaryJSValue_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: JSValue].bridgeJSLiftReturn()
}

func _$DictionarySupportImports_jsRoundTripDictionaryDoubleArray(_ values: [String: [Double]]) throws(JSException) -> [String: [Double]] {
    let _ = values.bridgeJSLowerParameter()
    bjs_DictionarySupportImports_jsRoundTripDictionaryDoubleArray_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: [Double]].bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Foo_init")
fileprivate func bjs_Foo_init_extern(_ valueBytes: Int32, _ valueLength: Int32) -> Int32
#else
fileprivate func bjs_Foo_init_extern(_ valueBytes: Int32, _ valueLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Foo_init(_ valueBytes: Int32, _ valueLength: Int32) -> Int32 {
    return bjs_Foo_init_extern(valueBytes, valueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Foo_value_get")
fileprivate func bjs_Foo_value_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_Foo_value_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Foo_value_get(_ self: Int32) -> Int32 {
    return bjs_Foo_value_get_extern(self)
}

func _$Foo_init(_ value: String) throws(JSException) -> JSObject {
    let ret0 = value.bridgeJSWithLoweredParameter { (valueBytes, valueLength) in
        let ret = bjs_Foo_init(valueBytes, valueLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$Foo_value_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Foo_value_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_globalObject1_get")
fileprivate func bjs_globalObject1_get_extern() -> Void
#else
fileprivate func bjs_globalObject1_get_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_globalObject1_get() -> Void {
    return bjs_globalObject1_get_extern()
}

func _$globalObject1_get() throws(JSException) -> JSValue {
    bjs_globalObject1_get()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSValue.bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripVoid")
fileprivate func bjs_jsRoundTripVoid_extern() -> Void
#else
fileprivate func bjs_jsRoundTripVoid_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripVoid() -> Void {
    return bjs_jsRoundTripVoid_extern()
}

func _$jsRoundTripVoid() throws(JSException) -> Void {
    bjs_jsRoundTripVoid()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripNumber")
fileprivate func bjs_jsRoundTripNumber_extern(_ v: Float64) -> Float64
#else
fileprivate func bjs_jsRoundTripNumber_extern(_ v: Float64) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripNumber(_ v: Float64) -> Float64 {
    return bjs_jsRoundTripNumber_extern(v)
}

func _$jsRoundTripNumber(_ v: Double) throws(JSException) -> Double {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_jsRoundTripNumber(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripBool")
fileprivate func bjs_jsRoundTripBool_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_jsRoundTripBool_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripBool(_ v: Int32) -> Int32 {
    return bjs_jsRoundTripBool_extern(v)
}

func _$jsRoundTripBool(_ v: Bool) throws(JSException) -> Bool {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_jsRoundTripBool(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Bool.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripString")
fileprivate func bjs_jsRoundTripString_extern(_ vBytes: Int32, _ vLength: Int32) -> Int32
#else
fileprivate func bjs_jsRoundTripString_extern(_ vBytes: Int32, _ vLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripString(_ vBytes: Int32, _ vLength: Int32) -> Int32 {
    return bjs_jsRoundTripString_extern(vBytes, vLength)
}

func _$jsRoundTripString(_ v: String) throws(JSException) -> String {
    let ret0 = v.bridgeJSWithLoweredParameter { (vBytes, vLength) in
        let ret = bjs_jsRoundTripString(vBytes, vLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripJSValue")
fileprivate func bjs_jsRoundTripJSValue_extern(_ vKind: Int32, _ vPayload1: Int32, _ vPayload2: Float64) -> Void
#else
fileprivate func bjs_jsRoundTripJSValue_extern(_ vKind: Int32, _ vPayload1: Int32, _ vPayload2: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripJSValue(_ vKind: Int32, _ vPayload1: Int32, _ vPayload2: Float64) -> Void {
    return bjs_jsRoundTripJSValue_extern(vKind, vPayload1, vPayload2)
}

func _$jsRoundTripJSValue(_ v: JSValue) throws(JSException) -> JSValue {
    let (vKind, vPayload1, vPayload2) = v.bridgeJSLowerParameter()
    bjs_jsRoundTripJSValue(vKind, vPayload1, vPayload2)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSValue.bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsThrowOrVoid")
fileprivate func bjs_jsThrowOrVoid_extern(_ shouldThrow: Int32) -> Void
#else
fileprivate func bjs_jsThrowOrVoid_extern(_ shouldThrow: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsThrowOrVoid(_ shouldThrow: Int32) -> Void {
    return bjs_jsThrowOrVoid_extern(shouldThrow)
}

func _$jsThrowOrVoid(_ shouldThrow: Bool) throws(JSException) -> Void {
    let shouldThrowValue = shouldThrow.bridgeJSLowerParameter()
    bjs_jsThrowOrVoid(shouldThrowValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsThrowOrNumber")
fileprivate func bjs_jsThrowOrNumber_extern(_ shouldThrow: Int32) -> Float64
#else
fileprivate func bjs_jsThrowOrNumber_extern(_ shouldThrow: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsThrowOrNumber(_ shouldThrow: Int32) -> Float64 {
    return bjs_jsThrowOrNumber_extern(shouldThrow)
}

func _$jsThrowOrNumber(_ shouldThrow: Bool) throws(JSException) -> Double {
    let shouldThrowValue = shouldThrow.bridgeJSLowerParameter()
    let ret = bjs_jsThrowOrNumber(shouldThrowValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsThrowOrBool")
fileprivate func bjs_jsThrowOrBool_extern(_ shouldThrow: Int32) -> Int32
#else
fileprivate func bjs_jsThrowOrBool_extern(_ shouldThrow: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsThrowOrBool(_ shouldThrow: Int32) -> Int32 {
    return bjs_jsThrowOrBool_extern(shouldThrow)
}

func _$jsThrowOrBool(_ shouldThrow: Bool) throws(JSException) -> Bool {
    let shouldThrowValue = shouldThrow.bridgeJSLowerParameter()
    let ret = bjs_jsThrowOrBool(shouldThrowValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Bool.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsThrowOrString")
fileprivate func bjs_jsThrowOrString_extern(_ shouldThrow: Int32) -> Int32
#else
fileprivate func bjs_jsThrowOrString_extern(_ shouldThrow: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsThrowOrString(_ shouldThrow: Int32) -> Int32 {
    return bjs_jsThrowOrString_extern(shouldThrow)
}

func _$jsThrowOrString(_ shouldThrow: Bool) throws(JSException) -> String {
    let shouldThrowValue = shouldThrow.bridgeJSLowerParameter()
    let ret = bjs_jsThrowOrString(shouldThrowValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripFeatureFlag")
fileprivate func bjs_jsRoundTripFeatureFlag_extern(_ flagBytes: Int32, _ flagLength: Int32) -> Int32
#else
fileprivate func bjs_jsRoundTripFeatureFlag_extern(_ flagBytes: Int32, _ flagLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripFeatureFlag(_ flagBytes: Int32, _ flagLength: Int32) -> Int32 {
    return bjs_jsRoundTripFeatureFlag_extern(flagBytes, flagLength)
}

func _$jsRoundTripFeatureFlag(_ flag: BridgeJSRuntimeTests.FeatureFlag) throws(JSException) -> BridgeJSRuntimeTests.FeatureFlag {
    let ret0 = flag.bridgeJSWithLoweredParameter { (flagBytes, flagLength) in
        let ret = bjs_jsRoundTripFeatureFlag(flagBytes, flagLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.FeatureFlag.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_runAsyncWorks")
fileprivate func bjs_runAsyncWorks_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void
#else
fileprivate func bjs_runAsyncWorks_extern(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_runAsyncWorks(_ resolveRef: Int32, _ rejectRef: Int32) -> Void {
    return bjs_runAsyncWorks_extern(resolveRef, rejectRef)
}

func _$runAsyncWorks() async throws(JSException) -> Void {
    try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<() -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        bjs_runAsyncWorks(resolveRef, rejectRef)
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_fetchWeatherData")
fileprivate func bjs_fetchWeatherData_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ cityBytes: Int32, _ cityLength: Int32) -> Void
#else
fileprivate func bjs_fetchWeatherData_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ cityBytes: Int32, _ cityLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_fetchWeatherData(_ resolveRef: Int32, _ rejectRef: Int32, _ cityBytes: Int32, _ cityLength: Int32) -> Void {
    return bjs_fetchWeatherData_extern(resolveRef, rejectRef, cityBytes, cityLength)
}

func _$fetchWeatherData(_ city: String) async throws(JSException) -> WeatherData {
    let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
            JSTypedClosure<(sending WeatherData) -> Void>($0)
        }, makeRejectClosure: {
            JSTypedClosure<(sending JSValue) -> Void>($0)
        }) { resolveRef, rejectRef in
        city.bridgeJSWithLoweredParameter { (cityBytes, cityLength) in
            bjs_fetchWeatherData(resolveRef, rejectRef, cityBytes, cityLength)
        }
    }
    return resolved
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs__jsWeirdFunction")
fileprivate func bjs__jsWeirdFunction_extern() -> Float64
#else
fileprivate func bjs__jsWeirdFunction_extern() -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs__jsWeirdFunction() -> Float64 {
    return bjs__jsWeirdFunction_extern()
}

func _$_jsWeirdFunction() throws(JSException) -> Double {
    let ret = bjs__jsWeirdFunction()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_parseInt")
fileprivate func bjs_parseInt_extern(_ stringBytes: Int32, _ stringLength: Int32) -> Float64
#else
fileprivate func bjs_parseInt_extern(_ stringBytes: Int32, _ stringLength: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_parseInt(_ stringBytes: Int32, _ stringLength: Int32) -> Float64 {
    return bjs_parseInt_extern(stringBytes, stringLength)
}

func _$parseInt(_ string: String) throws(JSException) -> Double {
    let ret0 = string.bridgeJSWithLoweredParameter { (stringBytes, stringLength) in
        let ret = bjs_parseInt(stringBytes, stringLength)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JsGreeter_init")
fileprivate func bjs_JsGreeter_init_extern(_ nameBytes: Int32, _ nameLength: Int32, _ prefixBytes: Int32, _ prefixLength: Int32) -> Int32
#else
fileprivate func bjs_JsGreeter_init_extern(_ nameBytes: Int32, _ nameLength: Int32, _ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JsGreeter_init(_ nameBytes: Int32, _ nameLength: Int32, _ prefixBytes: Int32, _ prefixLength: Int32) -> Int32 {
    return bjs_JsGreeter_init_extern(nameBytes, nameLength, prefixBytes, prefixLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JsGreeter_name_get")
fileprivate func bjs_JsGreeter_name_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_JsGreeter_name_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JsGreeter_name_get(_ self: Int32) -> Int32 {
    return bjs_JsGreeter_name_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JsGreeter_prefix_get")
fileprivate func bjs_JsGreeter_prefix_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_JsGreeter_prefix_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JsGreeter_prefix_get(_ self: Int32) -> Int32 {
    return bjs_JsGreeter_prefix_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JsGreeter_name_set")
fileprivate func bjs_JsGreeter_name_set_extern(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void
#else
fileprivate func bjs_JsGreeter_name_set_extern(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JsGreeter_name_set(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    return bjs_JsGreeter_name_set_extern(self, newValueBytes, newValueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JsGreeter_greet")
fileprivate func bjs_JsGreeter_greet_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_JsGreeter_greet_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JsGreeter_greet(_ self: Int32) -> Int32 {
    return bjs_JsGreeter_greet_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JsGreeter_changeName")
fileprivate func bjs_JsGreeter_changeName_extern(_ self: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void
#else
fileprivate func bjs_JsGreeter_changeName_extern(_ self: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JsGreeter_changeName(_ self: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    return bjs_JsGreeter_changeName_extern(self, nameBytes, nameLength)
}

func _$JsGreeter_init(_ name: String, _ prefix: String) throws(JSException) -> JSObject {
    let ret0 = name.bridgeJSWithLoweredParameter { (nameBytes, nameLength) in
        let ret1 = prefix.bridgeJSWithLoweredParameter { (prefixBytes, prefixLength) in
            let ret = bjs_JsGreeter_init(nameBytes, nameLength, prefixBytes, prefixLength)
            return ret
        }
        return ret1
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$JsGreeter_name_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_JsGreeter_name_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$JsGreeter_prefix_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_JsGreeter_prefix_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$JsGreeter_name_set(_ self: JSObject, _ newValue: String) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    newValue.bridgeJSWithLoweredParameter { (newValueBytes, newValueLength) in
        bjs_JsGreeter_name_set(selfValue, newValueBytes, newValueLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$JsGreeter_greet(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_JsGreeter_greet(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$JsGreeter_changeName(_ self: JSObject, _ name: String) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    name.bridgeJSWithLoweredParameter { (nameBytes, nameLength) in
        bjs_JsGreeter_changeName(selfValue, nameBytes, nameLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_WeatherData_temperature_get")
fileprivate func bjs_WeatherData_temperature_get_extern(_ self: Int32) -> Float64
#else
fileprivate func bjs_WeatherData_temperature_get_extern(_ self: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_WeatherData_temperature_get(_ self: Int32) -> Float64 {
    return bjs_WeatherData_temperature_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_WeatherData_description_get")
fileprivate func bjs_WeatherData_description_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_WeatherData_description_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_WeatherData_description_get(_ self: Int32) -> Int32 {
    return bjs_WeatherData_description_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_WeatherData_humidity_get")
fileprivate func bjs_WeatherData_humidity_get_extern(_ self: Int32) -> Float64
#else
fileprivate func bjs_WeatherData_humidity_get_extern(_ self: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_WeatherData_humidity_get(_ self: Int32) -> Float64 {
    return bjs_WeatherData_humidity_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_WeatherData_temperature_set")
fileprivate func bjs_WeatherData_temperature_set_extern(_ self: Int32, _ newValue: Float64) -> Void
#else
fileprivate func bjs_WeatherData_temperature_set_extern(_ self: Int32, _ newValue: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_WeatherData_temperature_set(_ self: Int32, _ newValue: Float64) -> Void {
    return bjs_WeatherData_temperature_set_extern(self, newValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_WeatherData_description_set")
fileprivate func bjs_WeatherData_description_set_extern(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void
#else
fileprivate func bjs_WeatherData_description_set_extern(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_WeatherData_description_set(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    return bjs_WeatherData_description_set_extern(self, newValueBytes, newValueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_WeatherData_humidity_set")
fileprivate func bjs_WeatherData_humidity_set_extern(_ self: Int32, _ newValue: Float64) -> Void
#else
fileprivate func bjs_WeatherData_humidity_set_extern(_ self: Int32, _ newValue: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_WeatherData_humidity_set(_ self: Int32, _ newValue: Float64) -> Void {
    return bjs_WeatherData_humidity_set_extern(self, newValue)
}

func _$WeatherData_temperature_get(_ self: JSObject) throws(JSException) -> Double {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_WeatherData_temperature_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

func _$WeatherData_description_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_WeatherData_description_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$WeatherData_humidity_get(_ self: JSObject) throws(JSException) -> Double {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_WeatherData_humidity_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

func _$WeatherData_temperature_set(_ self: JSObject, _ newValue: Double) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    let newValueValue = newValue.bridgeJSLowerParameter()
    bjs_WeatherData_temperature_set(selfValue, newValueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$WeatherData_description_set(_ self: JSObject, _ newValue: String) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    newValue.bridgeJSWithLoweredParameter { (newValueBytes, newValueLength) in
        bjs_WeatherData_description_set(selfValue, newValueBytes, newValueLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$WeatherData_humidity_set(_ self: JSObject, _ newValue: Double) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    let newValueValue = newValue.bridgeJSLowerParameter()
    bjs_WeatherData_humidity_set(selfValue, newValueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs__WeirdClass_init")
fileprivate func bjs__WeirdClass_init_extern() -> Int32
#else
fileprivate func bjs__WeirdClass_init_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs__WeirdClass_init() -> Int32 {
    return bjs__WeirdClass_init_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs__WeirdClass_method_with_dashes")
fileprivate func bjs__WeirdClass_method_with_dashes_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs__WeirdClass_method_with_dashes_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs__WeirdClass_method_with_dashes(_ self: Int32) -> Int32 {
    return bjs__WeirdClass_method_with_dashes_extern(self)
}

func _$_WeirdClass_init() throws(JSException) -> JSObject {
    let ret = bjs__WeirdClass_init()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$_WeirdClass_method_with_dashes(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs__WeirdClass_method_with_dashes(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_StaticBox_init")
fileprivate func bjs_StaticBox_init_extern(_ value: Float64) -> Int32
#else
fileprivate func bjs_StaticBox_init_extern(_ value: Float64) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_StaticBox_init(_ value: Float64) -> Int32 {
    return bjs_StaticBox_init_extern(value)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_StaticBox_create_static")
fileprivate func bjs_StaticBox_create_static_extern(_ value: Float64) -> Int32
#else
fileprivate func bjs_StaticBox_create_static_extern(_ value: Float64) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_StaticBox_create_static(_ value: Float64) -> Int32 {
    return bjs_StaticBox_create_static_extern(value)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_StaticBox_value_static")
fileprivate func bjs_StaticBox_value_static_extern() -> Float64
#else
fileprivate func bjs_StaticBox_value_static_extern() -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_StaticBox_value_static() -> Float64 {
    return bjs_StaticBox_value_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_StaticBox_makeDefault_static")
fileprivate func bjs_StaticBox_makeDefault_static_extern() -> Int32
#else
fileprivate func bjs_StaticBox_makeDefault_static_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_StaticBox_makeDefault_static() -> Int32 {
    return bjs_StaticBox_makeDefault_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_StaticBox_with_dashes_static")
fileprivate func bjs_StaticBox_with_dashes_static_extern() -> Int32
#else
fileprivate func bjs_StaticBox_with_dashes_static_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_StaticBox_with_dashes_static() -> Int32 {
    return bjs_StaticBox_with_dashes_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_StaticBox_value")
fileprivate func bjs_StaticBox_value_extern(_ self: Int32) -> Float64
#else
fileprivate func bjs_StaticBox_value_extern(_ self: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_StaticBox_value(_ self: Int32) -> Float64 {
    return bjs_StaticBox_value_extern(self)
}

func _$StaticBox_init(_ value: Double) throws(JSException) -> JSObject {
    let valueValue = value.bridgeJSLowerParameter()
    let ret = bjs_StaticBox_init(valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$StaticBox_create(_ value: Double) throws(JSException) -> StaticBox {
    let valueValue = value.bridgeJSLowerParameter()
    let ret = bjs_StaticBox_create_static(valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return StaticBox.bridgeJSLiftReturn(ret)
}

func _$StaticBox_value() throws(JSException) -> Double {
    let ret = bjs_StaticBox_value_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

func _$StaticBox_makeDefault() throws(JSException) -> StaticBox {
    let ret = bjs_StaticBox_makeDefault_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return StaticBox.bridgeJSLiftReturn(ret)
}

func _$StaticBox_with_dashes() throws(JSException) -> StaticBox {
    let ret = bjs_StaticBox_with_dashes_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return StaticBox.bridgeJSLiftReturn(ret)
}

func _$StaticBox_value(_ self: JSObject) throws(JSException) -> Double {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_StaticBox_value(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_init")
fileprivate func bjs_Animal_init_extern(_ nameBytes: Int32, _ nameLength: Int32, _ age: Float64, _ isCat: Int32) -> Int32
#else
fileprivate func bjs_Animal_init_extern(_ nameBytes: Int32, _ nameLength: Int32, _ age: Float64, _ isCat: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_init(_ nameBytes: Int32, _ nameLength: Int32, _ age: Float64, _ isCat: Int32) -> Int32 {
    return bjs_Animal_init_extern(nameBytes, nameLength, age, isCat)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_name_get")
fileprivate func bjs_Animal_name_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_Animal_name_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_name_get(_ self: Int32) -> Int32 {
    return bjs_Animal_name_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_age_get")
fileprivate func bjs_Animal_age_get_extern(_ self: Int32) -> Float64
#else
fileprivate func bjs_Animal_age_get_extern(_ self: Int32) -> Float64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_age_get(_ self: Int32) -> Float64 {
    return bjs_Animal_age_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_isCat_get")
fileprivate func bjs_Animal_isCat_get_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_Animal_isCat_get_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_isCat_get(_ self: Int32) -> Int32 {
    return bjs_Animal_isCat_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_name_set")
fileprivate func bjs_Animal_name_set_extern(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void
#else
fileprivate func bjs_Animal_name_set_extern(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_name_set(_ self: Int32, _ newValueBytes: Int32, _ newValueLength: Int32) -> Void {
    return bjs_Animal_name_set_extern(self, newValueBytes, newValueLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_age_set")
fileprivate func bjs_Animal_age_set_extern(_ self: Int32, _ newValue: Float64) -> Void
#else
fileprivate func bjs_Animal_age_set_extern(_ self: Int32, _ newValue: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_age_set(_ self: Int32, _ newValue: Float64) -> Void {
    return bjs_Animal_age_set_extern(self, newValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_isCat_set")
fileprivate func bjs_Animal_isCat_set_extern(_ self: Int32, _ newValue: Int32) -> Void
#else
fileprivate func bjs_Animal_isCat_set_extern(_ self: Int32, _ newValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_isCat_set(_ self: Int32, _ newValue: Int32) -> Void {
    return bjs_Animal_isCat_set_extern(self, newValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_bark")
fileprivate func bjs_Animal_bark_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_Animal_bark_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_bark(_ self: Int32) -> Int32 {
    return bjs_Animal_bark_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_Animal_getIsCat")
fileprivate func bjs_Animal_getIsCat_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_Animal_getIsCat_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Animal_getIsCat(_ self: Int32) -> Int32 {
    return bjs_Animal_getIsCat_extern(self)
}

func _$Animal_init(_ name: String, _ age: Double, _ isCat: Bool) throws(JSException) -> JSObject {
    let ret0 = name.bridgeJSWithLoweredParameter { (nameBytes, nameLength) in
        let ageValue = age.bridgeJSLowerParameter()
        let isCatValue = isCat.bridgeJSLowerParameter()
        let ret = bjs_Animal_init(nameBytes, nameLength, ageValue, isCatValue)
        return ret
    }
    let ret = ret0
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$Animal_name_get(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Animal_name_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$Animal_age_get(_ self: JSObject) throws(JSException) -> Double {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Animal_age_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Double.bridgeJSLiftReturn(ret)
}

func _$Animal_isCat_get(_ self: JSObject) throws(JSException) -> Bool {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Animal_isCat_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Bool.bridgeJSLiftReturn(ret)
}

func _$Animal_name_set(_ self: JSObject, _ newValue: String) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    newValue.bridgeJSWithLoweredParameter { (newValueBytes, newValueLength) in
        bjs_Animal_name_set(selfValue, newValueBytes, newValueLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$Animal_age_set(_ self: JSObject, _ newValue: Double) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    let newValueValue = newValue.bridgeJSLowerParameter()
    bjs_Animal_age_set(selfValue, newValueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$Animal_isCat_set(_ self: JSObject, _ newValue: Bool) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    let newValueValue = newValue.bridgeJSLowerParameter()
    bjs_Animal_isCat_set(selfValue, newValueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$Animal_bark(_ self: JSObject) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Animal_bark(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

func _$Animal_getIsCat(_ self: JSObject) throws(JSException) -> Bool {
    let selfValue = self.bridgeJSLowerParameter()
    let ret = bjs_Animal_getIsCat(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Bool.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripLightColor")
fileprivate func bjs_jsRoundTripLightColor_extern(_ value: Int32) -> Int32
#else
fileprivate func bjs_jsRoundTripLightColor_extern(_ value: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripLightColor(_ value: Int32) -> Int32 {
    return bjs_jsRoundTripLightColor_extern(value)
}

func _$jsRoundTripLightColor(_ value: BridgeJSRuntimeTests.LightColor) throws(JSException) -> BridgeJSRuntimeTests.LightColor {
    let valueValue = value.bridgeJSLowerParameter()
    let ret = bjs_jsRoundTripLightColor(valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.LightColor.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripImportedPayloadSignal")
fileprivate func bjs_jsRoundTripImportedPayloadSignal_extern(_ value: Int32) -> Int32
#else
fileprivate func bjs_jsRoundTripImportedPayloadSignal_extern(_ value: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripImportedPayloadSignal(_ value: Int32) -> Int32 {
    return bjs_jsRoundTripImportedPayloadSignal_extern(value)
}

func _$jsRoundTripImportedPayloadSignal(_ value: BridgeJSRuntimeTests.ImportedPayloadSignal) throws(JSException) -> BridgeJSRuntimeTests.ImportedPayloadSignal {
    let valueCaseId = value.bridgeJSLowerParameter()
    let ret = bjs_jsRoundTripImportedPayloadSignal(valueCaseId)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.ImportedPayloadSignal.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripOptionalImportedPayloadSignal")
fileprivate func bjs_jsRoundTripOptionalImportedPayloadSignal_extern(_ valueIsSome: Int32, _ valueCaseId: Int32) -> Int32
#else
fileprivate func bjs_jsRoundTripOptionalImportedPayloadSignal_extern(_ valueIsSome: Int32, _ valueCaseId: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripOptionalImportedPayloadSignal(_ valueIsSome: Int32, _ valueCaseId: Int32) -> Int32 {
    return bjs_jsRoundTripOptionalImportedPayloadSignal_extern(valueIsSome, valueCaseId)
}

func _$jsRoundTripOptionalImportedPayloadSignal(_ value: Optional<BridgeJSRuntimeTests.ImportedPayloadSignal>) throws(JSException) -> Optional<BridgeJSRuntimeTests.ImportedPayloadSignal> {
    let (valueIsSome, valueCaseId) = value.bridgeJSLowerParameter()
    let ret = bjs_jsRoundTripOptionalImportedPayloadSignal(valueIsSome, valueCaseId)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<BridgeJSRuntimeTests.ImportedPayloadSignal>.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsTranslatePoint")
fileprivate func bjs_jsTranslatePoint_extern(_ point: Int32, _ dx: Int32, _ dy: Int32) -> Int32
#else
fileprivate func bjs_jsTranslatePoint_extern(_ point: Int32, _ dx: Int32, _ dy: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsTranslatePoint(_ point: Int32, _ dx: Int32, _ dy: Int32) -> Int32 {
    return bjs_jsTranslatePoint_extern(point, dx, dy)
}

func _$jsTranslatePoint(_ point: BridgeJSRuntimeTests.Point, _ dx: Int, _ dy: Int) throws(JSException) -> BridgeJSRuntimeTests.Point {
    let pointObjectId = point.bridgeJSLowerParameter()
    let dxValue = dx.bridgeJSLowerParameter()
    let dyValue = dy.bridgeJSLowerParameter()
    let ret = bjs_jsTranslatePoint(pointObjectId, dxValue, dyValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.Point.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsRoundTripOptionalPoint")
fileprivate func bjs_jsRoundTripOptionalPoint_extern(_ point: Int32) -> Void
#else
fileprivate func bjs_jsRoundTripOptionalPoint_extern(_ point: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsRoundTripOptionalPoint(_ point: Int32) -> Void {
    return bjs_jsRoundTripOptionalPoint_extern(point)
}

func _$jsRoundTripOptionalPoint(_ point: Optional<BridgeJSRuntimeTests.Point>) throws(JSException) -> Optional<BridgeJSRuntimeTests.Point> {
    let pointIsSome = point.bridgeJSLowerParameter()
    bjs_jsRoundTripOptionalPoint(pointIsSome)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<BridgeJSRuntimeTests.Point>.bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripInt_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripInt_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripUInt_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripUInt_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripInt8_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt8_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt8_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt8_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripInt8_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripUInt8_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt8_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt8_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt8_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripUInt8_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripInt16_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt16_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt16_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt16_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripInt16_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripUInt16_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt16_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt16_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt16_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripUInt16_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripInt32_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt32_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt32_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt32_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripInt32_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripUInt32_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt32_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt32_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt32_static(_ v: Int32) -> Int32 {
    return bjs_IntegerTypesSupportImports_jsRoundTripUInt32_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripInt64_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt64_static_extern(_ v: Int64) -> Int64
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt64_static_extern(_ v: Int64) -> Int64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripInt64_static(_ v: Int64) -> Int64 {
    return bjs_IntegerTypesSupportImports_jsRoundTripInt64_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_jsRoundTripUInt64_static")
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt64_static_extern(_ v: Int64) -> Int64
#else
fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt64_static_extern(_ v: Int64) -> Int64 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_jsRoundTripUInt64_static(_ v: Int64) -> Int64 {
    return bjs_IntegerTypesSupportImports_jsRoundTripUInt64_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_IntegerTypesSupportImports_runJsIntegerTypesSupportTests_static")
fileprivate func bjs_IntegerTypesSupportImports_runJsIntegerTypesSupportTests_static_extern() -> Void
#else
fileprivate func bjs_IntegerTypesSupportImports_runJsIntegerTypesSupportTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IntegerTypesSupportImports_runJsIntegerTypesSupportTests_static() -> Void {
    return bjs_IntegerTypesSupportImports_runJsIntegerTypesSupportTests_static_extern()
}

func _$IntegerTypesSupportImports_jsRoundTripInt(_ v: Int) throws(JSException) -> Int {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripInt_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripUInt(_ v: UInt) throws(JSException) -> UInt {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripUInt_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return UInt.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripInt8(_ v: Int8) throws(JSException) -> Int8 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripInt8_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int8.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripUInt8(_ v: UInt8) throws(JSException) -> UInt8 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripUInt8_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return UInt8.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripInt16(_ v: Int16) throws(JSException) -> Int16 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripInt16_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int16.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripUInt16(_ v: UInt16) throws(JSException) -> UInt16 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripUInt16_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return UInt16.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripInt32(_ v: Int32) throws(JSException) -> Int32 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripInt32_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int32.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripUInt32(_ v: UInt32) throws(JSException) -> UInt32 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripUInt32_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return UInt32.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripInt64(_ v: Int64) throws(JSException) -> Int64 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripInt64_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Int64.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_jsRoundTripUInt64(_ v: UInt64) throws(JSException) -> UInt64 {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_IntegerTypesSupportImports_jsRoundTripUInt64_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return UInt64.bridgeJSLiftReturn(ret)
}

func _$IntegerTypesSupportImports_runJsIntegerTypesSupportTests() throws(JSException) -> Void {
    bjs_IntegerTypesSupportImports_runJsIntegerTypesSupportTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_init")
fileprivate func bjs_JSClassWithArrayMembers_init_extern() -> Int32
#else
fileprivate func bjs_JSClassWithArrayMembers_init_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_init() -> Int32 {
    return bjs_JSClassWithArrayMembers_init_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_numbers_get")
fileprivate func bjs_JSClassWithArrayMembers_numbers_get_extern(_ self: Int32) -> Void
#else
fileprivate func bjs_JSClassWithArrayMembers_numbers_get_extern(_ self: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_numbers_get(_ self: Int32) -> Void {
    return bjs_JSClassWithArrayMembers_numbers_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_labels_get")
fileprivate func bjs_JSClassWithArrayMembers_labels_get_extern(_ self: Int32) -> Void
#else
fileprivate func bjs_JSClassWithArrayMembers_labels_get_extern(_ self: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_labels_get(_ self: Int32) -> Void {
    return bjs_JSClassWithArrayMembers_labels_get_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_numbers_set")
fileprivate func bjs_JSClassWithArrayMembers_numbers_set_extern(_ self: Int32) -> Void
#else
fileprivate func bjs_JSClassWithArrayMembers_numbers_set_extern(_ self: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_numbers_set(_ self: Int32) -> Void {
    return bjs_JSClassWithArrayMembers_numbers_set_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_labels_set")
fileprivate func bjs_JSClassWithArrayMembers_labels_set_extern(_ self: Int32) -> Void
#else
fileprivate func bjs_JSClassWithArrayMembers_labels_set_extern(_ self: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_labels_set(_ self: Int32) -> Void {
    return bjs_JSClassWithArrayMembers_labels_set_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_concatNumbers")
fileprivate func bjs_JSClassWithArrayMembers_concatNumbers_extern(_ self: Int32) -> Void
#else
fileprivate func bjs_JSClassWithArrayMembers_concatNumbers_extern(_ self: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_concatNumbers(_ self: Int32) -> Void {
    return bjs_JSClassWithArrayMembers_concatNumbers_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_concatLabels")
fileprivate func bjs_JSClassWithArrayMembers_concatLabels_extern(_ self: Int32) -> Void
#else
fileprivate func bjs_JSClassWithArrayMembers_concatLabels_extern(_ self: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_concatLabels(_ self: Int32) -> Void {
    return bjs_JSClassWithArrayMembers_concatLabels_extern(self)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassWithArrayMembers_firstLabel")
fileprivate func bjs_JSClassWithArrayMembers_firstLabel_extern(_ self: Int32) -> Int32
#else
fileprivate func bjs_JSClassWithArrayMembers_firstLabel_extern(_ self: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassWithArrayMembers_firstLabel(_ self: Int32) -> Int32 {
    return bjs_JSClassWithArrayMembers_firstLabel_extern(self)
}

func _$JSClassWithArrayMembers_init(_ numbers: [Int], _ labels: [String]) throws(JSException) -> JSObject {
    let _ = labels.bridgeJSLowerParameter()
    let _ = numbers.bridgeJSLowerParameter()
    let ret = bjs_JSClassWithArrayMembers_init()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

func _$JSClassWithArrayMembers_numbers_get(_ self: JSObject) throws(JSException) -> [Int] {
    let selfValue = self.bridgeJSLowerParameter()
    bjs_JSClassWithArrayMembers_numbers_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Int].bridgeJSLiftReturn()
}

func _$JSClassWithArrayMembers_labels_get(_ self: JSObject) throws(JSException) -> [String] {
    let selfValue = self.bridgeJSLowerParameter()
    bjs_JSClassWithArrayMembers_labels_get(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String].bridgeJSLiftReturn()
}

func _$JSClassWithArrayMembers_numbers_set(_ self: JSObject, _ newValue: [Int]) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    let _ = newValue.bridgeJSLowerParameter()
    bjs_JSClassWithArrayMembers_numbers_set(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$JSClassWithArrayMembers_labels_set(_ self: JSObject, _ newValue: [String]) throws(JSException) -> Void {
    let selfValue = self.bridgeJSLowerParameter()
    let _ = newValue.bridgeJSLowerParameter()
    bjs_JSClassWithArrayMembers_labels_set(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$JSClassWithArrayMembers_concatNumbers(_ self: JSObject, _ values: [Int]) throws(JSException) -> [Int] {
    let selfValue = self.bridgeJSLowerParameter()
    let _ = values.bridgeJSLowerParameter()
    bjs_JSClassWithArrayMembers_concatNumbers(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Int].bridgeJSLiftReturn()
}

func _$JSClassWithArrayMembers_concatLabels(_ self: JSObject, _ values: [String]) throws(JSException) -> [String] {
    let selfValue = self.bridgeJSLowerParameter()
    let _ = values.bridgeJSLowerParameter()
    bjs_JSClassWithArrayMembers_concatLabels(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String].bridgeJSLiftReturn()
}

func _$JSClassWithArrayMembers_firstLabel(_ self: JSObject, _ values: [String]) throws(JSException) -> String {
    let selfValue = self.bridgeJSLowerParameter()
    let _ = values.bridgeJSLowerParameter()
    let ret = bjs_JSClassWithArrayMembers_firstLabel(selfValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return String.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSClassSupportImports_makeJSClassWithArrayMembers_static")
fileprivate func bjs_JSClassSupportImports_makeJSClassWithArrayMembers_static_extern() -> Int32
#else
fileprivate func bjs_JSClassSupportImports_makeJSClassWithArrayMembers_static_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSClassSupportImports_makeJSClassWithArrayMembers_static() -> Int32 {
    return bjs_JSClassSupportImports_makeJSClassWithArrayMembers_static_extern()
}

func _$JSClassSupportImports_makeJSClassWithArrayMembers(_ numbers: [Int], _ labels: [String]) throws(JSException) -> JSClassWithArrayMembers {
    let _ = labels.bridgeJSLowerParameter()
    let _ = numbers.bridgeJSLowerParameter()
    let ret = bjs_JSClassSupportImports_makeJSClassWithArrayMembers_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSClassWithArrayMembers.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSTypedArrayImports_jsCreateUint8Array_static")
fileprivate func bjs_JSTypedArrayImports_jsCreateUint8Array_static_extern() -> Int32
#else
fileprivate func bjs_JSTypedArrayImports_jsCreateUint8Array_static_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSTypedArrayImports_jsCreateUint8Array_static() -> Int32 {
    return bjs_JSTypedArrayImports_jsCreateUint8Array_static_extern()
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSTypedArrayImports_jsRoundTripUint8Array_static")
fileprivate func bjs_JSTypedArrayImports_jsRoundTripUint8Array_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_JSTypedArrayImports_jsRoundTripUint8Array_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSTypedArrayImports_jsRoundTripUint8Array_static(_ v: Int32) -> Int32 {
    return bjs_JSTypedArrayImports_jsRoundTripUint8Array_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSTypedArrayImports_jsRoundTripFloat32Array_static")
fileprivate func bjs_JSTypedArrayImports_jsRoundTripFloat32Array_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_JSTypedArrayImports_jsRoundTripFloat32Array_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSTypedArrayImports_jsRoundTripFloat32Array_static(_ v: Int32) -> Int32 {
    return bjs_JSTypedArrayImports_jsRoundTripFloat32Array_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSTypedArrayImports_jsRoundTripFloat64Array_static")
fileprivate func bjs_JSTypedArrayImports_jsRoundTripFloat64Array_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_JSTypedArrayImports_jsRoundTripFloat64Array_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSTypedArrayImports_jsRoundTripFloat64Array_static(_ v: Int32) -> Int32 {
    return bjs_JSTypedArrayImports_jsRoundTripFloat64Array_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSTypedArrayImports_jsRoundTripInt32Array_static")
fileprivate func bjs_JSTypedArrayImports_jsRoundTripInt32Array_static_extern(_ v: Int32) -> Int32
#else
fileprivate func bjs_JSTypedArrayImports_jsRoundTripInt32Array_static_extern(_ v: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSTypedArrayImports_jsRoundTripInt32Array_static(_ v: Int32) -> Int32 {
    return bjs_JSTypedArrayImports_jsRoundTripInt32Array_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_JSTypedArrayImports_runJsTypedArrayTests_static")
fileprivate func bjs_JSTypedArrayImports_runJsTypedArrayTests_static_extern() -> Void
#else
fileprivate func bjs_JSTypedArrayImports_runJsTypedArrayTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_JSTypedArrayImports_runJsTypedArrayTests_static() -> Void {
    return bjs_JSTypedArrayImports_runJsTypedArrayTests_static_extern()
}

func _$JSTypedArrayImports_jsCreateUint8Array() throws(JSException) -> JSUint8Array {
    let ret = bjs_JSTypedArrayImports_jsCreateUint8Array_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSUint8Array.bridgeJSLiftReturn(ret)
}

func _$JSTypedArrayImports_jsRoundTripUint8Array(_ v: JSUint8Array) throws(JSException) -> JSUint8Array {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_JSTypedArrayImports_jsRoundTripUint8Array_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSUint8Array.bridgeJSLiftReturn(ret)
}

func _$JSTypedArrayImports_jsRoundTripFloat32Array(_ v: JSFloat32Array) throws(JSException) -> JSFloat32Array {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_JSTypedArrayImports_jsRoundTripFloat32Array_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSFloat32Array.bridgeJSLiftReturn(ret)
}

func _$JSTypedArrayImports_jsRoundTripFloat64Array(_ v: JSFloat64Array) throws(JSException) -> JSFloat64Array {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_JSTypedArrayImports_jsRoundTripFloat64Array_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSFloat64Array.bridgeJSLiftReturn(ret)
}

func _$JSTypedArrayImports_jsRoundTripInt32Array(_ v: JSInt32Array) throws(JSException) -> JSInt32Array {
    let vValue = v.bridgeJSLowerParameter()
    let ret = bjs_JSTypedArrayImports_jsRoundTripInt32Array_static(vValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSInt32Array.bridgeJSLiftReturn(ret)
}

func _$JSTypedArrayImports_runJsTypedArrayTests() throws(JSException) -> Void {
    bjs_JSTypedArrayImports_runJsTypedArrayTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_MyJSClassInternal_init")
fileprivate func bjs_MyJSClassInternal_init_extern() -> Int32
#else
fileprivate func bjs_MyJSClassInternal_init_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_MyJSClassInternal_init() -> Int32 {
    return bjs_MyJSClassInternal_init_extern()
}

func _$MyJSClassInternal_init() throws(JSException) -> JSObject {
    let ret = bjs_MyJSClassInternal_init()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_MyJSClassPublic_init")
fileprivate func bjs_MyJSClassPublic_init_extern() -> Int32
#else
fileprivate func bjs_MyJSClassPublic_init_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_MyJSClassPublic_init() -> Int32 {
    return bjs_MyJSClassPublic_init_extern()
}

func _$MyJSClassPublic_init() throws(JSException) -> JSObject {
    let ret = bjs_MyJSClassPublic_init()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_MyJSClassPackage_init")
fileprivate func bjs_MyJSClassPackage_init_extern() -> Int32
#else
fileprivate func bjs_MyJSClassPackage_init_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_MyJSClassPackage_init() -> Int32 {
    return bjs_MyJSClassPackage_init_extern()
}

func _$MyJSClassPackage_init() throws(JSException) -> JSObject {
    let ret = bjs_MyJSClassPackage_init()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSObject.bridgeJSLiftReturn(ret)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsFunctionWithPackageAccess")
fileprivate func bjs_jsFunctionWithPackageAccess_extern() -> Void
#else
fileprivate func bjs_jsFunctionWithPackageAccess_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsFunctionWithPackageAccess() -> Void {
    return bjs_jsFunctionWithPackageAccess_extern()
}

func _$jsFunctionWithPackageAccess() throws(JSException) -> Void {
    bjs_jsFunctionWithPackageAccess()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsFunctionWithPublicAccess")
fileprivate func bjs_jsFunctionWithPublicAccess_extern() -> Void
#else
fileprivate func bjs_jsFunctionWithPublicAccess_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsFunctionWithPublicAccess() -> Void {
    return bjs_jsFunctionWithPublicAccess_extern()
}

func _$jsFunctionWithPublicAccess() throws(JSException) -> Void {
    bjs_jsFunctionWithPublicAccess()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsFunctionWithInternalAccess")
fileprivate func bjs_jsFunctionWithInternalAccess_extern() -> Void
#else
fileprivate func bjs_jsFunctionWithInternalAccess_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsFunctionWithInternalAccess() -> Void {
    return bjs_jsFunctionWithInternalAccess_extern()
}

func _$jsFunctionWithInternalAccess() throws(JSException) -> Void {
    bjs_jsFunctionWithInternalAccess()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsFunctionWithFilePrivateAccess")
fileprivate func bjs_jsFunctionWithFilePrivateAccess_extern() -> Void
#else
fileprivate func bjs_jsFunctionWithFilePrivateAccess_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsFunctionWithFilePrivateAccess() -> Void {
    return bjs_jsFunctionWithFilePrivateAccess_extern()
}

func _$jsFunctionWithFilePrivateAccess() throws(JSException) -> Void {
    bjs_jsFunctionWithFilePrivateAccess()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_jsFunctionWithPrivateAccess")
fileprivate func bjs_jsFunctionWithPrivateAccess_extern() -> Void
#else
fileprivate func bjs_jsFunctionWithPrivateAccess_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_jsFunctionWithPrivateAccess() -> Void {
    return bjs_jsFunctionWithPrivateAccess_extern()
}

func _$jsFunctionWithPrivateAccess() throws(JSException) -> Void {
    bjs_jsFunctionWithPrivateAccess()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalNumberNull_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalNumberNull_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalNumberNull_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalNumberNull_static(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalNumberNull_static_extern(valueIsSome, valueValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalNumberUndefined_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalNumberUndefined_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalNumberUndefined_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalNumberUndefined_static(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalNumberUndefined_static_extern(valueIsSome, valueValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalStringNull_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringNull_static_extern(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringNull_static_extern(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringNull_static(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalStringNull_static_extern(nameIsSome, nameBytes, nameLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalStringUndefined_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringUndefined_static_extern(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringUndefined_static_extern(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringUndefined_static(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalStringUndefined_static_extern(nameIsSome, nameBytes, nameLength)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull_static_extern(_ v: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull_static_extern(_ v: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull_static(_ v: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined_static_extern(_ v: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined_static_extern(_ v: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined_static(_ v: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull_static_extern(_ v: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull_static_extern(_ v: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull_static(_ v: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined_static_extern(_ v: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined_static_extern(_ v: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined_static(_ v: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined_static_extern(v)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_jsRoundTripOptionalJSObjectNull_static")
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSObjectNull_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void
#else
fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSObjectNull_static_extern(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_jsRoundTripOptionalJSObjectNull_static(_ valueIsSome: Int32, _ valueValue: Int32) -> Void {
    return bjs_OptionalSupportImports_jsRoundTripOptionalJSObjectNull_static_extern(valueIsSome, valueValue)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_OptionalSupportImports_runJsOptionalSupportTests_static")
fileprivate func bjs_OptionalSupportImports_runJsOptionalSupportTests_static_extern() -> Void
#else
fileprivate func bjs_OptionalSupportImports_runJsOptionalSupportTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_OptionalSupportImports_runJsOptionalSupportTests_static() -> Void {
    return bjs_OptionalSupportImports_runJsOptionalSupportTests_static_extern()
}

func _$OptionalSupportImports_jsRoundTripOptionalNumberNull(_ value: Optional<Int>) throws(JSException) -> Optional<Int> {
    let (valueIsSome, valueValue) = value.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalNumberNull_static(valueIsSome, valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<Int>.bridgeJSLiftReturnFromSideChannel()
}

func _$OptionalSupportImports_jsRoundTripOptionalNumberUndefined(_ value: JSUndefinedOr<Int>) throws(JSException) -> JSUndefinedOr<Int> {
    let (valueIsSome, valueValue) = value.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalNumberUndefined_static(valueIsSome, valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSUndefinedOr<Int>.bridgeJSLiftReturnFromSideChannel()
}

func _$OptionalSupportImports_jsRoundTripOptionalStringNull(_ name: Optional<String>) throws(JSException) -> Optional<String> {
    name.bridgeJSWithLoweredParameter { (nameIsSome, nameBytes, nameLength) in
        bjs_OptionalSupportImports_jsRoundTripOptionalStringNull_static(nameIsSome, nameBytes, nameLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<String>.bridgeJSLiftReturnFromSideChannel()
}

func _$OptionalSupportImports_jsRoundTripOptionalStringUndefined(_ name: JSUndefinedOr<String>) throws(JSException) -> JSUndefinedOr<String> {
    name.bridgeJSWithLoweredParameter { (nameIsSome, nameBytes, nameLength) in
        bjs_OptionalSupportImports_jsRoundTripOptionalStringUndefined_static(nameIsSome, nameBytes, nameLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSUndefinedOr<String>.bridgeJSLiftReturnFromSideChannel()
}

func _$OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull(_ v: Optional<[JSValue]>) throws(JSException) -> Optional<[JSValue]> {
    let vIsSome = v.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayNull_static(vIsSome)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<[JSValue]>.bridgeJSLiftReturn()
}

func _$OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined(_ v: JSUndefinedOr<[JSValue]>) throws(JSException) -> JSUndefinedOr<[JSValue]> {
    let vIsSome = v.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalJSValueArrayUndefined_static(vIsSome)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSUndefinedOr<[JSValue]>.bridgeJSLiftReturn()
}

func _$OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull(_ v: Optional<[String: String]>) throws(JSException) -> Optional<[String: String]> {
    let vIsSome = v.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryNull_static(vIsSome)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<[String: String]>.bridgeJSLiftReturn()
}

func _$OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined(_ v: JSUndefinedOr<[String: String]>) throws(JSException) -> JSUndefinedOr<[String: String]> {
    let vIsSome = v.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalStringToStringDictionaryUndefined_static(vIsSome)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return JSUndefinedOr<[String: String]>.bridgeJSLiftReturn()
}

func _$OptionalSupportImports_jsRoundTripOptionalJSObjectNull(_ value: Optional<JSObject>) throws(JSException) -> Optional<JSObject> {
    let (valueIsSome, valueValue) = value.bridgeJSLowerParameter()
    bjs_OptionalSupportImports_jsRoundTripOptionalJSObjectNull_static(valueIsSome, valueValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<JSObject>.bridgeJSLiftReturn()
}

func _$OptionalSupportImports_runJsOptionalSupportTests() throws(JSException) -> Void {
    bjs_OptionalSupportImports_runJsOptionalSupportTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_gc")
fileprivate func bjs_gc_extern() -> Void
#else
fileprivate func bjs_gc_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_gc() -> Void {
    return bjs_gc_extern()
}

func _$gc() throws(JSException) -> Void {
    bjs_gc()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_SwiftClassSupportImports_jsRoundTripGreeter_static")
fileprivate func bjs_SwiftClassSupportImports_jsRoundTripGreeter_static_extern(_ greeter: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer
#else
fileprivate func bjs_SwiftClassSupportImports_jsRoundTripGreeter_static_extern(_ greeter: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_SwiftClassSupportImports_jsRoundTripGreeter_static(_ greeter: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    return bjs_SwiftClassSupportImports_jsRoundTripGreeter_static_extern(greeter)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_SwiftClassSupportImports_jsRoundTripUUID_static")
fileprivate func bjs_SwiftClassSupportImports_jsRoundTripUUID_static_extern(_ uuid: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer
#else
fileprivate func bjs_SwiftClassSupportImports_jsRoundTripUUID_static_extern(_ uuid: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_SwiftClassSupportImports_jsRoundTripUUID_static(_ uuid: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    return bjs_SwiftClassSupportImports_jsRoundTripUUID_static_extern(uuid)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_SwiftClassSupportImports_jsRoundTripOptionalGreeter_static")
fileprivate func bjs_SwiftClassSupportImports_jsRoundTripOptionalGreeter_static_extern(_ greeterIsSome: Int32, _ greeterPointer: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer
#else
fileprivate func bjs_SwiftClassSupportImports_jsRoundTripOptionalGreeter_static_extern(_ greeterIsSome: Int32, _ greeterPointer: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_SwiftClassSupportImports_jsRoundTripOptionalGreeter_static(_ greeterIsSome: Int32, _ greeterPointer: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    return bjs_SwiftClassSupportImports_jsRoundTripOptionalGreeter_static_extern(greeterIsSome, greeterPointer)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_SwiftClassSupportImports_jsConsumeLeakCheck_static")
fileprivate func bjs_SwiftClassSupportImports_jsConsumeLeakCheck_static_extern(_ value: UnsafeMutableRawPointer) -> Void
#else
fileprivate func bjs_SwiftClassSupportImports_jsConsumeLeakCheck_static_extern(_ value: UnsafeMutableRawPointer) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_SwiftClassSupportImports_jsConsumeLeakCheck_static(_ value: UnsafeMutableRawPointer) -> Void {
    return bjs_SwiftClassSupportImports_jsConsumeLeakCheck_static_extern(value)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSRuntimeTests", name: "bjs_SwiftClassSupportImports_jsConsumeOptionalLeakCheck_static")
fileprivate func bjs_SwiftClassSupportImports_jsConsumeOptionalLeakCheck_static_extern(_ valueIsSome: Int32, _ valuePointer: UnsafeMutableRawPointer) -> Void
#else
fileprivate func bjs_SwiftClassSupportImports_jsConsumeOptionalLeakCheck_static_extern(_ valueIsSome: Int32, _ valuePointer: UnsafeMutableRawPointer) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_SwiftClassSupportImports_jsConsumeOptionalLeakCheck_static(_ valueIsSome: Int32, _ valuePointer: UnsafeMutableRawPointer) -> Void {
    return bjs_SwiftClassSupportImports_jsConsumeOptionalLeakCheck_static_extern(valueIsSome, valuePointer)
}

func _$SwiftClassSupportImports_jsRoundTripGreeter(_ greeter: BridgeJSRuntimeTests.Greeter) throws(JSException) -> BridgeJSRuntimeTests.Greeter {
    let greeterPointer = greeter.bridgeJSLowerParameter()
    let ret = bjs_SwiftClassSupportImports_jsRoundTripGreeter_static(greeterPointer)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.Greeter.bridgeJSLiftReturn(ret)
}

func _$SwiftClassSupportImports_jsRoundTripUUID(_ uuid: BridgeJSRuntimeTests.UUID) throws(JSException) -> BridgeJSRuntimeTests.UUID {
    let uuidPointer = uuid.bridgeJSLowerParameter()
    let ret = bjs_SwiftClassSupportImports_jsRoundTripUUID_static(uuidPointer)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return BridgeJSRuntimeTests.UUID.bridgeJSLiftReturn(ret)
}

func _$SwiftClassSupportImports_jsRoundTripOptionalGreeter(_ greeter: Optional<BridgeJSRuntimeTests.Greeter>) throws(JSException) -> Optional<BridgeJSRuntimeTests.Greeter> {
    let (greeterIsSome, greeterPointer) = greeter.bridgeJSLowerParameter()
    let ret = bjs_SwiftClassSupportImports_jsRoundTripOptionalGreeter_static(greeterIsSome, greeterPointer)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return Optional<BridgeJSRuntimeTests.Greeter>.bridgeJSLiftReturn(ret)
}

func _$SwiftClassSupportImports_jsConsumeLeakCheck(_ value: BridgeJSRuntimeTests.LeakCheck) throws(JSException) -> Void {
    let valuePointer = value.bridgeJSLowerParameter()
    bjs_SwiftClassSupportImports_jsConsumeLeakCheck_static(valuePointer)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

func _$SwiftClassSupportImports_jsConsumeOptionalLeakCheck(_ value: Optional<BridgeJSRuntimeTests.LeakCheck>) throws(JSException) -> Void {
    let (valueIsSome, valuePointer) = value.bridgeJSLowerParameter()
    bjs_SwiftClassSupportImports_jsConsumeOptionalLeakCheck_static(valueIsSome, valuePointer)
    if let error = _swift_js_take_exception() {
        throw error
    }
}