// bridge-js: skip
// swift-format-ignore-file
// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

extension BridgeJSGlobalTests.GlobalNetworking.API.CallMethod: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSGlobalTests.GlobalNetworking.API.CallMethod {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSGlobalTests.GlobalNetworking.API.CallMethod {
        return BridgeJSGlobalTests.GlobalNetworking.API.CallMethod(bridgeJSRawValue: value)!
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

extension BridgeJSGlobalTests.GlobalConfiguration.PublicLogLevel: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSGlobalTests.GlobalConfiguration.AvailablePort: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension BridgeJSGlobalTests.Internal.SupportedServerMethod: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> BridgeJSGlobalTests.Internal.SupportedServerMethod {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> BridgeJSGlobalTests.Internal.SupportedServerMethod {
        return BridgeJSGlobalTests.Internal.SupportedServerMethod(bridgeJSRawValue: value)!
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

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceProperty_get")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceProperty_get")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceProperty_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalStaticPropertyNamespace.namespaceProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceProperty_set")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceProperty_set")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceProperty_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSGlobalTests.GlobalStaticPropertyNamespace.namespaceProperty = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceConstant_get")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceConstant_get")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_static_namespaceConstant_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalStaticPropertyNamespace.namespaceConstant
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedProperty_get")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedProperty_get")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedProperty_get() -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalStaticPropertyNamespace.NestedProperties.nestedProperty
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedProperty_set")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedProperty_set")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedProperty_set(_ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSGlobalTests.GlobalStaticPropertyNamespace.NestedProperties.nestedProperty = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedConstant_get")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedConstant_get")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedConstant_get() -> Void {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalStaticPropertyNamespace.NestedProperties.nestedConstant
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedDouble_get")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedDouble_get")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedDouble_get() -> Float64 {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalStaticPropertyNamespace.NestedProperties.nestedDouble
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedDouble_set")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedDouble_set")
public func _bjs_BridgeJSGlobalTests_GlobalStaticPropertyNamespace_NestedProperties_static_nestedDouble_set(_ value: Float64) -> Void {
    #if arch(wasm32)
    BridgeJSGlobalTests.GlobalStaticPropertyNamespace.NestedProperties.nestedDouble = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_init")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_init")
public func _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalNetworking.API.TestHTTPServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_call")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_call")
public func _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_call(_ _self: UnsafeMutableRawPointer, _ method: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSGlobalTests.GlobalNetworking.API.TestHTTPServer.bridgeJSLiftParameter(_self).call(_: BridgeJSGlobalTests.GlobalNetworking.API.CallMethod.bridgeJSLiftParameter(method))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_deinit")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_deinit")
public func _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSGlobalTests.GlobalNetworking.API.TestHTTPServer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSGlobalTests.GlobalNetworking.API.TestHTTPServer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSGlobalTests", name: "bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap")
fileprivate func _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSGlobalTests_GlobalNetworking_API_TestHTTPServer_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_Internal_TestInternalServer_init")
@_cdecl("bjs_BridgeJSGlobalTests_Internal_TestInternalServer_init")
public func _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.Internal.TestInternalServer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_Internal_TestInternalServer_call")
@_cdecl("bjs_BridgeJSGlobalTests_Internal_TestInternalServer_call")
public func _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_call(_ _self: UnsafeMutableRawPointer, _ method: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSGlobalTests.Internal.TestInternalServer.bridgeJSLiftParameter(_self).call(_: BridgeJSGlobalTests.Internal.SupportedServerMethod.bridgeJSLiftParameter(method))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_Internal_TestInternalServer_deinit")
@_cdecl("bjs_BridgeJSGlobalTests_Internal_TestInternalServer_deinit")
public func _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSGlobalTests.Internal.TestInternalServer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSGlobalTests.Internal.TestInternalServer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSGlobalTests", name: "bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap")
fileprivate func _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSGlobalTests_Internal_TestInternalServer_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_init")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_init")
public func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalUtils.PublicConverter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_toString")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_toString")
public func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_toString(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalUtils.PublicConverter.bridgeJSLiftParameter(_self).toString(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_precision_get")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_precision_get")
public func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_precision_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSGlobalTests.GlobalUtils.PublicConverter.bridgeJSLiftParameter(_self).precision
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_precision_set")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_precision_set")
public func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_precision_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSGlobalTests.GlobalUtils.PublicConverter.bridgeJSLiftParameter(_self).precision = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_deinit")
@_cdecl("bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_deinit")
public func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSGlobalTests.GlobalUtils.PublicConverter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSGlobalTests.GlobalUtils.PublicConverter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSGlobalTests", name: "bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap")
fileprivate func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSGlobalTests_GlobalUtils_PublicConverter_wrap_extern(pointer)
}