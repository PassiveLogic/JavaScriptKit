@_expose(wasm, "bjs_TestModule_plainFunction")
@_cdecl("bjs_TestModule_plainFunction")
public func _bjs_TestModule_plainFunction() -> Void {
    #if arch(wasm32)
    let ret = plainFunction()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MyModule_Utils_namespacedFunction")
@_cdecl("bjs_TestModule_MyModule_Utils_namespacedFunction")
public func _bjs_TestModule_MyModule_Utils_namespacedFunction() -> Void {
    #if arch(wasm32)
    let ret = namespacedFunction()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_init")
@_cdecl("bjs_TestModule_Greeter_init")
public func _bjs_TestModule_Greeter_init(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Greeter(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_greet")
@_cdecl("bjs_TestModule_Greeter_greet")
public func _bjs_TestModule_Greeter_greet(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Greeter.bridgeJSLiftParameter(_self).greet()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_static_makeDefault")
@_cdecl("bjs_TestModule_Greeter_static_makeDefault")
public func _bjs_TestModule_Greeter_static_makeDefault() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Greeter.makeDefault()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_static_defaultGreeting_get")
@_cdecl("bjs_TestModule_Greeter_static_defaultGreeting_get")
public func _bjs_TestModule_Greeter_static_defaultGreeting_get() -> Void {
    #if arch(wasm32)
    let ret = TestModule.Greeter.defaultGreeting
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_deinit")
@_cdecl("bjs_TestModule_Greeter_deinit")
public func _bjs_TestModule_Greeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Greeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Greeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Greeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Greeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Greeter_wrap")
fileprivate func _bjs_TestModule_Greeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Greeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Greeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Greeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_Converter_init")
@_cdecl("bjs_TestModule_Converter_init")
public func _bjs_TestModule_Converter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Converter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Converter_toString")
@_cdecl("bjs_TestModule_Converter_toString")
public func _bjs_TestModule_Converter_toString(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Converter.bridgeJSLiftParameter(_self).toString(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Converter_deinit")
@_cdecl("bjs_TestModule_Converter_deinit")
public func _bjs_TestModule_Converter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Converter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Converter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Converter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Converter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Converter_wrap")
fileprivate func _bjs_TestModule_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Converter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Converter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_UUID_uuidString")
@_cdecl("bjs_TestModule_UUID_uuidString")
public func _bjs_TestModule_UUID_uuidString(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.UUID.bridgeJSLiftParameter(_self).uuidString()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_UUID_deinit")
@_cdecl("bjs_TestModule_UUID_deinit")
public func _bjs_TestModule_UUID_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.UUID>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.UUID: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_UUID_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_UUID_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_UUID_wrap")
fileprivate func _bjs_TestModule_UUID_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_UUID_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_UUID_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_UUID_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_Container_init")
@_cdecl("bjs_TestModule_Container_init")
public func _bjs_TestModule_Container_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Container()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Container_getItems")
@_cdecl("bjs_TestModule_Container_getItems")
public func _bjs_TestModule_Container_getItems(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Container.bridgeJSLiftParameter(_self).getItems()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Container_addItem")
@_cdecl("bjs_TestModule_Container_addItem")
public func _bjs_TestModule_Container_addItem(_ _self: UnsafeMutableRawPointer, _ item: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    TestModule.Container.bridgeJSLiftParameter(_self).addItem(_: TestModule.Greeter.bridgeJSLiftParameter(item))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Container_deinit")
@_cdecl("bjs_TestModule_Container_deinit")
public func _bjs_TestModule_Container_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Container>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Container: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Container_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Container_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Container_wrap")
fileprivate func _bjs_TestModule_Container_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Container_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Container_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Container_wrap_extern(pointer)
}