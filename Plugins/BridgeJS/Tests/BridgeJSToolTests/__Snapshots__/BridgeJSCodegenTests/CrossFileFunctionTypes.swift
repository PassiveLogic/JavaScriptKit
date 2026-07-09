@_expose(wasm, "bjs_TestModule_standaloneFunction")
@_cdecl("bjs_TestModule_standaloneFunction")
public func _bjs_TestModule_standaloneFunction(_ b: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = standaloneFunction(b: TestModule.FunctionB.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionB_init")
@_cdecl("bjs_TestModule_FunctionB_init")
public func _bjs_TestModule_FunctionB_init(_ valueBytes: Int32, _ valueLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.FunctionB(value: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionB_value_get")
@_cdecl("bjs_TestModule_FunctionB_value_get")
public func _bjs_TestModule_FunctionB_value_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.FunctionB.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionB_value_set")
@_cdecl("bjs_TestModule_FunctionB_value_set")
public func _bjs_TestModule_FunctionB_value_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    TestModule.FunctionB.bridgeJSLiftParameter(_self).value = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionB_deinit")
@_cdecl("bjs_TestModule_FunctionB_deinit")
public func _bjs_TestModule_FunctionB_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.FunctionB>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.FunctionB: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_FunctionB_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_FunctionB_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_FunctionB_wrap")
fileprivate func _bjs_TestModule_FunctionB_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_FunctionB_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_FunctionB_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_FunctionB_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_FunctionA_init")
@_cdecl("bjs_TestModule_FunctionA_init")
public func _bjs_TestModule_FunctionA_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.FunctionA()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionA_processB")
@_cdecl("bjs_TestModule_FunctionA_processB")
public func _bjs_TestModule_FunctionA_processB(_ _self: UnsafeMutableRawPointer, _ b: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.FunctionA.bridgeJSLiftParameter(_self).processB(b: TestModule.FunctionB.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionA_createB")
@_cdecl("bjs_TestModule_FunctionA_createB")
public func _bjs_TestModule_FunctionA_createB(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.FunctionA.bridgeJSLiftParameter(_self).createB(value: String.bridgeJSLiftParameter(valueBytes, valueLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_FunctionA_deinit")
@_cdecl("bjs_TestModule_FunctionA_deinit")
public func _bjs_TestModule_FunctionA_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.FunctionA>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.FunctionA: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_FunctionA_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_FunctionA_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_FunctionA_wrap")
fileprivate func _bjs_TestModule_FunctionA_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_FunctionA_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_FunctionA_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_FunctionA_wrap_extern(pointer)
}