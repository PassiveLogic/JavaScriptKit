extension TestModule.Networking.API.Method: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> TestModule.Networking.API.Method {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> TestModule.Networking.API.Method {
        return TestModule.Networking.API.Method(bridgeJSRawValue: value)!
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

extension TestModule.Configuration.LogLevel: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Configuration.Port: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Internal.SupportedMethod: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> TestModule.Internal.SupportedMethod {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> TestModule.Internal.SupportedMethod {
        return TestModule.Internal.SupportedMethod(bridgeJSRawValue: value)!
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

@_expose(wasm, "bjs_TestModule_GraphOperations_static_createGraph")
@_cdecl("bjs_TestModule_GraphOperations_static_createGraph")
public func _bjs_TestModule_GraphOperations_static_createGraph(_ rootId: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.GraphOperations.createGraph(rootId: Int.bridgeJSLiftParameter(rootId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_GraphOperations_static_nodeCount")
@_cdecl("bjs_TestModule_GraphOperations_static_nodeCount")
public func _bjs_TestModule_GraphOperations_static_nodeCount(_ graphId: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.GraphOperations.nodeCount(graphId: Int.bridgeJSLiftParameter(graphId))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_GraphOperations_static_validate")
@_cdecl("bjs_TestModule_GraphOperations_static_validate")
public func _bjs_TestModule_GraphOperations_static_validate(_ graphId: Int32) -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try TestModule.GraphOperations.validate(graphId: Int.bridgeJSLiftParameter(graphId))
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

@_expose(wasm, "bjs_TestModule_Utils_Converter_init")
@_cdecl("bjs_TestModule_Utils_Converter_init")
public func _bjs_TestModule_Utils_Converter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Utils.Converter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Utils_Converter_toString")
@_cdecl("bjs_TestModule_Utils_Converter_toString")
public func _bjs_TestModule_Utils_Converter_toString(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Utils.Converter.bridgeJSLiftParameter(_self).toString(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Utils_Converter_precision_get")
@_cdecl("bjs_TestModule_Utils_Converter_precision_get")
public func _bjs_TestModule_Utils_Converter_precision_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.Utils.Converter.bridgeJSLiftParameter(_self).precision
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Utils_Converter_precision_set")
@_cdecl("bjs_TestModule_Utils_Converter_precision_set")
public func _bjs_TestModule_Utils_Converter_precision_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    TestModule.Utils.Converter.bridgeJSLiftParameter(_self).precision = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Utils_Converter_deinit")
@_cdecl("bjs_TestModule_Utils_Converter_deinit")
public func _bjs_TestModule_Utils_Converter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Utils.Converter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Utils.Converter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Utils_Converter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Utils_Converter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Utils_Converter_wrap")
fileprivate func _bjs_TestModule_Utils_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Utils_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Utils_Converter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Utils_Converter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_Networking_API_HTTPServer_init")
@_cdecl("bjs_TestModule_Networking_API_HTTPServer_init")
public func _bjs_TestModule_Networking_API_HTTPServer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Networking.API.HTTPServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Networking_API_HTTPServer_call")
@_cdecl("bjs_TestModule_Networking_API_HTTPServer_call")
public func _bjs_TestModule_Networking_API_HTTPServer_call(_ _self: UnsafeMutableRawPointer, _ method: Int32) -> Void {
    #if arch(wasm32)
    TestModule.Networking.API.HTTPServer.bridgeJSLiftParameter(_self).call(_: TestModule.Networking.API.Method.bridgeJSLiftParameter(method))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Networking_API_HTTPServer_deinit")
@_cdecl("bjs_TestModule_Networking_API_HTTPServer_deinit")
public func _bjs_TestModule_Networking_API_HTTPServer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Networking.API.HTTPServer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Networking.API.HTTPServer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Networking_API_HTTPServer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Networking_API_HTTPServer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Networking_API_HTTPServer_wrap")
fileprivate func _bjs_TestModule_Networking_API_HTTPServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Networking_API_HTTPServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Networking_API_HTTPServer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Networking_API_HTTPServer_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_Internal_TestServer_init")
@_cdecl("bjs_TestModule_Internal_TestServer_init")
public func _bjs_TestModule_Internal_TestServer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Internal.TestServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Internal_TestServer_call")
@_cdecl("bjs_TestModule_Internal_TestServer_call")
public func _bjs_TestModule_Internal_TestServer_call(_ _self: UnsafeMutableRawPointer, _ method: Int32) -> Void {
    #if arch(wasm32)
    TestModule.Internal.TestServer.bridgeJSLiftParameter(_self).call(_: TestModule.Internal.SupportedMethod.bridgeJSLiftParameter(method))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Internal_TestServer_deinit")
@_cdecl("bjs_TestModule_Internal_TestServer_deinit")
public func _bjs_TestModule_Internal_TestServer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Internal.TestServer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Internal.TestServer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Internal_TestServer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Internal_TestServer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Internal_TestServer_wrap")
fileprivate func _bjs_TestModule_Internal_TestServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Internal_TestServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Internal_TestServer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Internal_TestServer_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_Formatting_Converter_init")
@_cdecl("bjs_TestModule_Formatting_Converter_init")
public func _bjs_TestModule_Formatting_Converter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Formatting.Converter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Formatting_Converter_format")
@_cdecl("bjs_TestModule_Formatting_Converter_format")
public func _bjs_TestModule_Formatting_Converter_format(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Formatting.Converter.bridgeJSLiftParameter(_self).format(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Formatting_Converter_deinit")
@_cdecl("bjs_TestModule_Formatting_Converter_deinit")
public func _bjs_TestModule_Formatting_Converter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Formatting.Converter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Formatting.Converter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Formatting_Converter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Formatting_Converter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Formatting_Converter_wrap")
fileprivate func _bjs_TestModule_Formatting_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Formatting_Converter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Formatting_Converter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Formatting_Converter_wrap_extern(pointer)
}