// bridge-js: skip
// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

@_expose(wasm, "bjs_getConfigSwiftSubject")
@_cdecl("bjs_getConfigSwiftSubject")
public func _bjs_getConfigSwiftSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getConfigSwiftSubject()
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _ConfigSwiftSubject_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _ConfigSwiftSubject_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetConfigSwiftSubject")
@_cdecl("bjs_resetConfigSwiftSubject")
public func _bjs_resetConfigSwiftSubject() -> Void {
    #if arch(wasm32)
    resetConfigSwiftSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getConfigSwiftRetainLeakSubject")
@_cdecl("bjs_getConfigSwiftRetainLeakSubject")
public func _bjs_getConfigSwiftRetainLeakSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getConfigSwiftRetainLeakSubject()
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _ConfigSwiftRetainLeakSubject_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _ConfigSwiftRetainLeakSubject_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetConfigSwiftRetainLeakSubject")
@_cdecl("bjs_resetConfigSwiftRetainLeakSubject")
public func _bjs_resetConfigSwiftRetainLeakSubject() -> Void {
    #if arch(wasm32)
    resetConfigSwiftRetainLeakSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getConfigSwiftRetainLeakDeinits")
@_cdecl("bjs_getConfigSwiftRetainLeakDeinits")
public func _bjs_getConfigSwiftRetainLeakDeinits() -> Int32 {
    #if arch(wasm32)
    let ret = getConfigSwiftRetainLeakDeinits()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetConfigSwiftRetainLeakDeinits")
@_cdecl("bjs_resetConfigSwiftRetainLeakDeinits")
public func _bjs_resetConfigSwiftRetainLeakDeinits() -> Void {
    #if arch(wasm32)
    resetConfigSwiftRetainLeakDeinits()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getConfigSwiftIdentityTableSizeForChurn")
@_cdecl("bjs_getConfigSwiftIdentityTableSizeForChurn")
public func _bjs_getConfigSwiftIdentityTableSizeForChurn() -> Int32 {
    #if arch(wasm32)
    let ret = getConfigSwiftIdentityTableSizeForChurn()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_makeConfigSwiftArray")
@_cdecl("bjs_makeConfigSwiftArray")
public func _bjs_makeConfigSwiftArray(_ a: UnsafeMutableRawPointer, _ b: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = makeConfigSwiftArray(_: ConfigSwiftSubject.bridgeJSLiftParameter(a), _: ConfigSwiftSubject.bridgeJSLiftParameter(b))
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_maybeConfigSwiftSubject")
@_cdecl("bjs_maybeConfigSwiftSubject")
public func _bjs_maybeConfigSwiftSubject(_ present: Int32) -> Void {
    #if arch(wasm32)
    let ret = maybeConfigSwiftSubject(_: Bool.bridgeJSLiftParameter(present))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

nonisolated(unsafe) var _ConfigSwiftSubject_identityTable: Set<UnsafeMutableRawPointer> = []

nonisolated(unsafe) var _ConfigSwiftSubject_wrapperRefs: [UnsafeMutableRawPointer: Int32] = [:]

@_expose(wasm, "bjs_ConfigSwiftSubject_init")
@_cdecl("bjs_ConfigSwiftSubject_init")
public func _bjs_ConfigSwiftSubject_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = ConfigSwiftSubject(value: Int.bridgeJSLiftParameter(value))
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _ConfigSwiftSubject_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _ConfigSwiftSubject_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_self_")
@_cdecl("bjs_ConfigSwiftSubject_self_")
public func _bjs_ConfigSwiftSubject_self_(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = ConfigSwiftSubject.bridgeJSLiftParameter(_self).self_()
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _ConfigSwiftSubject_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _ConfigSwiftSubject_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_value_get")
@_cdecl("bjs_ConfigSwiftSubject_value_get")
public func _bjs_ConfigSwiftSubject_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = ConfigSwiftSubject.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_value_set")
@_cdecl("bjs_ConfigSwiftSubject_value_set")
public func _bjs_ConfigSwiftSubject_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    ConfigSwiftSubject.bridgeJSLiftParameter(_self).value = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_currentValue_get")
@_cdecl("bjs_ConfigSwiftSubject_currentValue_get")
public func _bjs_ConfigSwiftSubject_currentValue_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = ConfigSwiftSubject.bridgeJSLiftParameter(_self).currentValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_deinit")
@_cdecl("bjs_ConfigSwiftSubject_deinit")
public func _bjs_ConfigSwiftSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<ConfigSwiftSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_register_wrapper")
@_cdecl("bjs_ConfigSwiftSubject_register_wrapper")
public func _bjs_ConfigSwiftSubject_register_wrapper(_ pointer: UnsafeMutableRawPointer, _ jsRef: Int32) -> Void {
    #if arch(wasm32)
    _ConfigSwiftSubject_wrapperRefs[pointer] = jsRef
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftSubject_release_wrapper")
@_cdecl("bjs_ConfigSwiftSubject_release_wrapper")
public func _bjs_ConfigSwiftSubject_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard let jsRef = _ConfigSwiftSubject_wrapperRefs.removeValue(forKey: pointer) else { return }
    _ConfigSwiftSubject_identityTable.remove(pointer)
    Unmanaged<ConfigSwiftSubject>.fromOpaque(pointer).release()
    _swift_js_release_ref(jsRef)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension ConfigSwiftSubject {
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _ConfigSwiftSubject_identityTable.contains(ptr) {
                _swift_js_push_i32(0)
                return ptr
            }
            _ = Unmanaged.passRetained(self)
            _ConfigSwiftSubject_identityTable.insert(ptr)
            _swift_js_push_i32(1)
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension ConfigSwiftSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_ConfigSwiftSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_ConfigSwiftSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSSwiftIdentityTests", name: "bjs_ConfigSwiftSubject_wrap")
fileprivate func _bjs_ConfigSwiftSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_ConfigSwiftSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_ConfigSwiftSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_ConfigSwiftSubject_wrap_extern(pointer)
}

nonisolated(unsafe) var _ConfigSwiftRetainLeakSubject_identityTable: Set<UnsafeMutableRawPointer> = []

nonisolated(unsafe) var _ConfigSwiftRetainLeakSubject_wrapperRefs: [UnsafeMutableRawPointer: Int32] = [:]

@_expose(wasm, "bjs_ConfigSwiftRetainLeakSubject_init")
@_cdecl("bjs_ConfigSwiftRetainLeakSubject_init")
public func _bjs_ConfigSwiftRetainLeakSubject_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = ConfigSwiftRetainLeakSubject(tag: Int.bridgeJSLiftParameter(tag))
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _ConfigSwiftRetainLeakSubject_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _ConfigSwiftRetainLeakSubject_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftRetainLeakSubject_tag_get")
@_cdecl("bjs_ConfigSwiftRetainLeakSubject_tag_get")
public func _bjs_ConfigSwiftRetainLeakSubject_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = ConfigSwiftRetainLeakSubject.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftRetainLeakSubject_tag_set")
@_cdecl("bjs_ConfigSwiftRetainLeakSubject_tag_set")
public func _bjs_ConfigSwiftRetainLeakSubject_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    ConfigSwiftRetainLeakSubject.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftRetainLeakSubject_deinit")
@_cdecl("bjs_ConfigSwiftRetainLeakSubject_deinit")
public func _bjs_ConfigSwiftRetainLeakSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<ConfigSwiftRetainLeakSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftRetainLeakSubject_register_wrapper")
@_cdecl("bjs_ConfigSwiftRetainLeakSubject_register_wrapper")
public func _bjs_ConfigSwiftRetainLeakSubject_register_wrapper(_ pointer: UnsafeMutableRawPointer, _ jsRef: Int32) -> Void {
    #if arch(wasm32)
    _ConfigSwiftRetainLeakSubject_wrapperRefs[pointer] = jsRef
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftRetainLeakSubject_release_wrapper")
@_cdecl("bjs_ConfigSwiftRetainLeakSubject_release_wrapper")
public func _bjs_ConfigSwiftRetainLeakSubject_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard let jsRef = _ConfigSwiftRetainLeakSubject_wrapperRefs.removeValue(forKey: pointer) else { return }
    _ConfigSwiftRetainLeakSubject_identityTable.remove(pointer)
    Unmanaged<ConfigSwiftRetainLeakSubject>.fromOpaque(pointer).release()
    _swift_js_release_ref(jsRef)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension ConfigSwiftRetainLeakSubject {
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _ConfigSwiftRetainLeakSubject_identityTable.contains(ptr) {
                _swift_js_push_i32(0)
                return ptr
            }
            _ = Unmanaged.passRetained(self)
            _ConfigSwiftRetainLeakSubject_identityTable.insert(ptr)
            _swift_js_push_i32(1)
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension ConfigSwiftRetainLeakSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_ConfigSwiftRetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_ConfigSwiftRetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSSwiftIdentityTests", name: "bjs_ConfigSwiftRetainLeakSubject_wrap")
fileprivate func _bjs_ConfigSwiftRetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_ConfigSwiftRetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_ConfigSwiftRetainLeakSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_ConfigSwiftRetainLeakSubject_wrap_extern(pointer)
}

nonisolated(unsafe) var _ConfigSwiftChurnSubject_identityTable: Set<UnsafeMutableRawPointer> = []

nonisolated(unsafe) var _ConfigSwiftChurnSubject_wrapperRefs: [UnsafeMutableRawPointer: Int32] = [:]

@_expose(wasm, "bjs_ConfigSwiftChurnSubject_init")
@_cdecl("bjs_ConfigSwiftChurnSubject_init")
public func _bjs_ConfigSwiftChurnSubject_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = ConfigSwiftChurnSubject(tag: Int.bridgeJSLiftParameter(tag))
    return withExtendedLifetime(ret) {
        let ptr = Unmanaged.passUnretained(ret).toOpaque()
        if _ConfigSwiftChurnSubject_identityTable.contains(ptr) {
            // Cache hit: do NOT retain. JS has the wrapper cached.
            _swift_js_push_i32(0)
            return ptr
        }
        _ = Unmanaged.passRetained(ret)
        _ConfigSwiftChurnSubject_identityTable.insert(ptr)
        _swift_js_push_i32(1)
        return ptr
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftChurnSubject_tag_get")
@_cdecl("bjs_ConfigSwiftChurnSubject_tag_get")
public func _bjs_ConfigSwiftChurnSubject_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = ConfigSwiftChurnSubject.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftChurnSubject_tag_set")
@_cdecl("bjs_ConfigSwiftChurnSubject_tag_set")
public func _bjs_ConfigSwiftChurnSubject_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    ConfigSwiftChurnSubject.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftChurnSubject_deinit")
@_cdecl("bjs_ConfigSwiftChurnSubject_deinit")
public func _bjs_ConfigSwiftChurnSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<ConfigSwiftChurnSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftChurnSubject_register_wrapper")
@_cdecl("bjs_ConfigSwiftChurnSubject_register_wrapper")
public func _bjs_ConfigSwiftChurnSubject_register_wrapper(_ pointer: UnsafeMutableRawPointer, _ jsRef: Int32) -> Void {
    #if arch(wasm32)
    _ConfigSwiftChurnSubject_wrapperRefs[pointer] = jsRef
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ConfigSwiftChurnSubject_release_wrapper")
@_cdecl("bjs_ConfigSwiftChurnSubject_release_wrapper")
public func _bjs_ConfigSwiftChurnSubject_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard let jsRef = _ConfigSwiftChurnSubject_wrapperRefs.removeValue(forKey: pointer) else { return }
    _ConfigSwiftChurnSubject_identityTable.remove(pointer)
    Unmanaged<ConfigSwiftChurnSubject>.fromOpaque(pointer).release()
    _swift_js_release_ref(jsRef)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension ConfigSwiftChurnSubject {
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _ConfigSwiftChurnSubject_identityTable.contains(ptr) {
                _swift_js_push_i32(0)
                return ptr
            }
            _ = Unmanaged.passRetained(self)
            _ConfigSwiftChurnSubject_identityTable.insert(ptr)
            _swift_js_push_i32(1)
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension ConfigSwiftChurnSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_ConfigSwiftChurnSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_ConfigSwiftChurnSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSSwiftIdentityTests", name: "bjs_ConfigSwiftChurnSubject_wrap")
fileprivate func _bjs_ConfigSwiftChurnSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_ConfigSwiftChurnSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_ConfigSwiftChurnSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_ConfigSwiftChurnSubject_wrap_extern(pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSSwiftIdentityTests", name: "bjs_SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests_static")
fileprivate func bjs_SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests_static_extern() -> Void
#else
fileprivate func bjs_SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests_static() -> Void {
    return bjs_SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests_static_extern()
}

func _$SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests() throws(JSException) -> Void {
    bjs_SwiftIdentityModeTestImports_runJsSwiftIdentityModeTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}