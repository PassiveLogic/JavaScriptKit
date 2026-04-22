nonisolated(unsafe) var _SwiftCached_identityTable: Set<UnsafeMutableRawPointer> = []

@_expose(wasm, "bjs_SwiftCached_init")
@_cdecl("bjs_SwiftCached_init")
public func _bjs_SwiftCached_init(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftCached(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _SwiftCached_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _SwiftCached_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftCached_name_get")
@_cdecl("bjs_SwiftCached_name_get")
public func _bjs_SwiftCached_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = SwiftCached.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftCached_name_set")
@_cdecl("bjs_SwiftCached_name_set")
public func _bjs_SwiftCached_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    SwiftCached.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftCached_deinit")
@_cdecl("bjs_SwiftCached_deinit")
public func _bjs_SwiftCached_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<SwiftCached>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftCached_release_wrapper")
@_cdecl("bjs_SwiftCached_release_wrapper")
public func _bjs_SwiftCached_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard _SwiftCached_identityTable.remove(pointer) != nil else { return }
    Unmanaged<SwiftCached>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension SwiftCached {
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftCached_identityTable.contains(ptr) {
                _swift_js_push_i32(0)
                return ptr
            }
            _ = Unmanaged.passRetained(self)
            _SwiftCached_identityTable.insert(ptr)
            _swift_js_push_i32(1)
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension SwiftCached: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_SwiftCached_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_SwiftCached_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_SwiftCached_wrap")
fileprivate func _bjs_SwiftCached_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_SwiftCached_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_SwiftCached_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_SwiftCached_wrap_extern(pointer)
}

@_expose(wasm, "bjs_WeakCached_init")
@_cdecl("bjs_WeakCached_init")
public func _bjs_WeakCached_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = WeakCached(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_WeakCached_value_get")
@_cdecl("bjs_WeakCached_value_get")
public func _bjs_WeakCached_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = WeakCached.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_WeakCached_value_set")
@_cdecl("bjs_WeakCached_value_set")
public func _bjs_WeakCached_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    WeakCached.bridgeJSLiftParameter(_self).value = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_WeakCached_deinit")
@_cdecl("bjs_WeakCached_deinit")
public func _bjs_WeakCached_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<WeakCached>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension WeakCached: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_WeakCached_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_WeakCached_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_WeakCached_wrap")
fileprivate func _bjs_WeakCached_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_WeakCached_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_WeakCached_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_WeakCached_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Untouched_init")
@_cdecl("bjs_Untouched_init")
public func _bjs_Untouched_init(_ v: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Untouched(v: Int.bridgeJSLiftParameter(v))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Untouched_v_get")
@_cdecl("bjs_Untouched_v_get")
public func _bjs_Untouched_v_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = Untouched.bridgeJSLiftParameter(_self).v
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Untouched_v_set")
@_cdecl("bjs_Untouched_v_set")
public func _bjs_Untouched_v_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Untouched.bridgeJSLiftParameter(_self).v = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Untouched_deinit")
@_cdecl("bjs_Untouched_deinit")
public func _bjs_Untouched_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Untouched>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Untouched: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Untouched_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Untouched_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_Untouched_wrap")
fileprivate func _bjs_Untouched_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Untouched_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Untouched_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Untouched_wrap_extern(pointer)
}