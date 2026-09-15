extension SwiftChoice: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> SwiftChoice {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> SwiftChoice {
        return SwiftChoice(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .first
        case 1:
            self = .second
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .first:
            return 0
        case .second:
            return 1
        }
    }
}

@_expose(wasm, "bjs_renamedChoice")
@_cdecl("bjs_renamedChoice")
public func _bjs_renamedChoice(_ value: Int32) -> Int32 {
    #if arch(wasm32)
    let value = SwiftChoice.bridgeJSLiftParameter(value)
    let ret = renamedChoice(_: value)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftBox_init")
@_cdecl("bjs_SwiftBox_init")
public func _bjs_SwiftBox_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftBox()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftBox_copy")
@_cdecl("bjs_SwiftBox_copy")
public func _bjs_SwiftBox_copy(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let _self = SwiftBox.bridgeJSLiftParameter(_self)
    let ret = _self.copy()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftBox_deinit")
@_cdecl("bjs_SwiftBox_deinit")
public func _bjs_SwiftBox_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<SwiftBox>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension SwiftBox: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_SwiftBox_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_SwiftBox_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_SwiftBox_wrap")
fileprivate func _bjs_SwiftBox_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_SwiftBox_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_SwiftBox_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_SwiftBox_wrap_extern(pointer)
}

extension SwiftBox: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = SwiftBox.bridgeJSMakeTypeHandle()
}

extension SwiftChoice: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = SwiftChoice.bridgeJSMakeTypeHandle()
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "bjs_TestModule_register_type_handles")
fileprivate func _bjs_TestModule_register_type_handles_extern(_ base: UnsafePointer<Int32>?, _ count: Int32)

@_expose(wasm, "bjs_TestModule_register_type_handles")
public func _bjs_TestModule_register_type_handles() {
    let typeIds: [Int32] = [
        SwiftBox.bridgeJSTypeID,
        SwiftChoice.bridgeJSTypeID,
    ]
    typeIds.withUnsafeBufferPointer { buffer in
        _bjs_TestModule_register_type_handles_extern(buffer.baseAddress, Int32(buffer.count))
    }
}
#endif