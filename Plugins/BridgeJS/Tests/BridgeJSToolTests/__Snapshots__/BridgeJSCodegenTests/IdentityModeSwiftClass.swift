nonisolated(unsafe) var _SwiftCached_identityTable: [UnsafeMutableRawPointer: Int32] = [:]

nonisolated(unsafe) var _SwiftCached_idToPointer: [Int32: UnsafeMutableRawPointer] = [:]

nonisolated(unsafe) var _SwiftCached_wrapperRefs: [Int32] = []

nonisolated(unsafe) var _SwiftCached_freeIds: [Int32] = []

nonisolated(unsafe) var _SwiftCached_nextId: Int32 = 0

@_expose(wasm, "bjs_SwiftCached_init")
@_cdecl("bjs_SwiftCached_init")
public func _bjs_SwiftCached_init(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftCached(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if let id = _SwiftCached_identityTable[ptr] {
            // Cache hit: do NOT retain. JS keeps the wrapper alive via _wrapperRefs[id].
            _swift_js_push_i32(id)
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        let id: Int32
        if let recycled = _SwiftCached_freeIds.popLast() {
            id = recycled
        } else {
            id = _SwiftCached_nextId
            _SwiftCached_nextId += 1
            _SwiftCached_wrapperRefs.append(0)
        }
        _SwiftCached_identityTable[ptr] = id
        _SwiftCached_idToPointer[id] = ptr
        _swift_js_push_i32(id)
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

@_expose(wasm, "bjs_SwiftCached_register_wrapper")
@_cdecl("bjs_SwiftCached_register_wrapper")
public func _bjs_SwiftCached_register_wrapper(_ id: Int32, _ jsRef: Int32) -> Void {
    #if arch(wasm32)
    _SwiftCached_wrapperRefs[Int(id)] = jsRef
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftCached_release_wrapper")
@_cdecl("bjs_SwiftCached_release_wrapper")
public func _bjs_SwiftCached_release_wrapper(_ id: Int32) -> Void {
    #if arch(wasm32)
    let slot = Int(id)
    let jsRef = _SwiftCached_wrapperRefs[slot]
    guard jsRef != 0 else { return }
    _SwiftCached_wrapperRefs[slot] = 0
    if let ptr = _SwiftCached_idToPointer.removeValue(forKey: id) {
        _SwiftCached_identityTable.removeValue(forKey: ptr)
        Unmanaged<SwiftCached>.fromOpaque(ptr).release()
    }
    _SwiftCached_freeIds.append(id)
    _swift_js_release_ref(jsRef)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension SwiftCached {
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if let id = _SwiftCached_identityTable[ptr] {
                _swift_js_push_i32(id)
                _swift_js_push_i32(0)
                return ptr
            }
            _ = Unmanaged.passRetained(self)
            let id: Int32
            if let recycled = _SwiftCached_freeIds.popLast() {
                id = recycled
            } else {
                id = _SwiftCached_nextId
                _SwiftCached_nextId += 1
                _SwiftCached_wrapperRefs.append(0)
            }
            _SwiftCached_identityTable[ptr] = id
            _SwiftCached_idToPointer[id] = ptr
            _swift_js_push_i32(id)
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