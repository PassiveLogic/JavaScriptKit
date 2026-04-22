// bridge-js: skip
// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

@_expose(wasm, "bjs_getSharedSubject")
@_cdecl("bjs_getSharedSubject")
public func _bjs_getSharedSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getSharedSubject()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetSharedSubject")
@_cdecl("bjs_resetSharedSubject")
public func _bjs_resetSharedSubject() -> Void {
    #if arch(wasm32)
    resetSharedSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getRetainLeakSubject")
@_cdecl("bjs_getRetainLeakSubject")
public func _bjs_getRetainLeakSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getRetainLeakSubject()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetRetainLeakSubject")
@_cdecl("bjs_resetRetainLeakSubject")
public func _bjs_resetRetainLeakSubject() -> Void {
    #if arch(wasm32)
    resetRetainLeakSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getRetainLeakDeinits")
@_cdecl("bjs_getRetainLeakDeinits")
public func _bjs_getRetainLeakDeinits() -> Int32 {
    #if arch(wasm32)
    let ret = getRetainLeakDeinits()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetRetainLeakDeinits")
@_cdecl("bjs_resetRetainLeakDeinits")
public func _bjs_resetRetainLeakDeinits() -> Void {
    #if arch(wasm32)
    resetRetainLeakDeinits()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_setupArrayPool")
@_cdecl("bjs_setupArrayPool")
public func _bjs_setupArrayPool(_ count: Int32) -> Void {
    #if arch(wasm32)
    setupArrayPool(_: Int.bridgeJSLiftParameter(count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getArrayPool")
@_cdecl("bjs_getArrayPool")
public func _bjs_getArrayPool() -> Void {
    #if arch(wasm32)
    let ret = getArrayPool()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getArrayPoolElement")
@_cdecl("bjs_getArrayPoolElement")
public func _bjs_getArrayPoolElement(_ index: Int32) -> Void {
    #if arch(wasm32)
    let ret = getArrayPoolElement(_: Int.bridgeJSLiftParameter(index))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getArrayPoolDeinits")
@_cdecl("bjs_getArrayPoolDeinits")
public func _bjs_getArrayPoolDeinits() -> Int32 {
    #if arch(wasm32)
    let ret = getArrayPoolDeinits()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetArrayPoolDeinits")
@_cdecl("bjs_resetArrayPoolDeinits")
public func _bjs_resetArrayPoolDeinits() -> Void {
    #if arch(wasm32)
    resetArrayPoolDeinits()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_clearArrayPool")
@_cdecl("bjs_clearArrayPool")
public func _bjs_clearArrayPool() -> Void {
    #if arch(wasm32)
    clearArrayPool()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getSharedSwiftSubject")
@_cdecl("bjs_getSharedSwiftSubject")
public func _bjs_getSharedSwiftSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getSharedSwiftSubject()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetSharedSwiftSubject")
@_cdecl("bjs_resetSharedSwiftSubject")
public func _bjs_resetSharedSwiftSubject() -> Void {
    #if arch(wasm32)
    resetSharedSwiftSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getRetainLeakSubjectSwift")
@_cdecl("bjs_getRetainLeakSubjectSwift")
public func _bjs_getRetainLeakSubjectSwift() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getRetainLeakSubjectSwift()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetRetainLeakSubjectSwift")
@_cdecl("bjs_resetRetainLeakSubjectSwift")
public func _bjs_resetRetainLeakSubjectSwift() -> Void {
    #if arch(wasm32)
    resetRetainLeakSubjectSwift()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getRetainLeakDeinitsSwift")
@_cdecl("bjs_getRetainLeakDeinitsSwift")
public func _bjs_getRetainLeakDeinitsSwift() -> Int32 {
    #if arch(wasm32)
    let ret = getRetainLeakDeinitsSwift()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_resetRetainLeakDeinitsSwift")
@_cdecl("bjs_resetRetainLeakDeinitsSwift")
public func _bjs_resetRetainLeakDeinitsSwift() -> Void {
    #if arch(wasm32)
    resetRetainLeakDeinitsSwift()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getSwiftIdentityTableSizeForSharedSubject")
@_cdecl("bjs_getSwiftIdentityTableSizeForSharedSubject")
public func _bjs_getSwiftIdentityTableSizeForSharedSubject() -> Int32 {
    #if arch(wasm32)
    let ret = getSwiftIdentityTableSizeForSharedSubject()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_makeSwiftIdentityArray")
@_cdecl("bjs_makeSwiftIdentityArray")
public func _bjs_makeSwiftIdentityArray(_ a: UnsafeMutableRawPointer, _ b: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = makeSwiftIdentityArray(_: SwiftIdentityTestSubject.bridgeJSLiftParameter(a), _: SwiftIdentityTestSubject.bridgeJSLiftParameter(b))
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_maybeSwiftSubject")
@_cdecl("bjs_maybeSwiftSubject")
public func _bjs_maybeSwiftSubject(_ present: Int32) -> Void {
    #if arch(wasm32)
    let ret = maybeSwiftSubject(_: Bool.bridgeJSLiftParameter(present))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_getSwiftIdentityTableSizeForChurn")
@_cdecl("bjs_getSwiftIdentityTableSizeForChurn")
public func _bjs_getSwiftIdentityTableSizeForChurn() -> Int32 {
    #if arch(wasm32)
    let ret = getSwiftIdentityTableSizeForChurn()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_IdentityTestSubject_init")
@_cdecl("bjs_IdentityTestSubject_init")
public func _bjs_IdentityTestSubject_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = IdentityTestSubject(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_IdentityTestSubject_value_get")
@_cdecl("bjs_IdentityTestSubject_value_get")
public func _bjs_IdentityTestSubject_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = IdentityTestSubject.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_IdentityTestSubject_value_set")
@_cdecl("bjs_IdentityTestSubject_value_set")
public func _bjs_IdentityTestSubject_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    IdentityTestSubject.bridgeJSLiftParameter(_self).value = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_IdentityTestSubject_currentValue_get")
@_cdecl("bjs_IdentityTestSubject_currentValue_get")
public func _bjs_IdentityTestSubject_currentValue_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = IdentityTestSubject.bridgeJSLiftParameter(_self).currentValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_IdentityTestSubject_deinit")
@_cdecl("bjs_IdentityTestSubject_deinit")
public func _bjs_IdentityTestSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<IdentityTestSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension IdentityTestSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_IdentityTestSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_IdentityTestSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_IdentityTestSubject_wrap")
fileprivate func _bjs_IdentityTestSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_IdentityTestSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_IdentityTestSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_IdentityTestSubject_wrap_extern(pointer)
}

@_expose(wasm, "bjs_RetainLeakSubject_init")
@_cdecl("bjs_RetainLeakSubject_init")
public func _bjs_RetainLeakSubject_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = RetainLeakSubject(tag: Int.bridgeJSLiftParameter(tag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_RetainLeakSubject_tag_get")
@_cdecl("bjs_RetainLeakSubject_tag_get")
public func _bjs_RetainLeakSubject_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = RetainLeakSubject.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_RetainLeakSubject_tag_set")
@_cdecl("bjs_RetainLeakSubject_tag_set")
public func _bjs_RetainLeakSubject_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    RetainLeakSubject.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_RetainLeakSubject_deinit")
@_cdecl("bjs_RetainLeakSubject_deinit")
public func _bjs_RetainLeakSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<RetainLeakSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension RetainLeakSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_RetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_RetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_RetainLeakSubject_wrap")
fileprivate func _bjs_RetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_RetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_RetainLeakSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_RetainLeakSubject_wrap_extern(pointer)
}

@_expose(wasm, "bjs_ArrayIdentityElement_init")
@_cdecl("bjs_ArrayIdentityElement_init")
public func _bjs_ArrayIdentityElement_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = ArrayIdentityElement(tag: Int.bridgeJSLiftParameter(tag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ArrayIdentityElement_tag_get")
@_cdecl("bjs_ArrayIdentityElement_tag_get")
public func _bjs_ArrayIdentityElement_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = ArrayIdentityElement.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ArrayIdentityElement_tag_set")
@_cdecl("bjs_ArrayIdentityElement_tag_set")
public func _bjs_ArrayIdentityElement_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    ArrayIdentityElement.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ArrayIdentityElement_deinit")
@_cdecl("bjs_ArrayIdentityElement_deinit")
public func _bjs_ArrayIdentityElement_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<ArrayIdentityElement>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension ArrayIdentityElement: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_ArrayIdentityElement_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_ArrayIdentityElement_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_ArrayIdentityElement_wrap")
fileprivate func _bjs_ArrayIdentityElement_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_ArrayIdentityElement_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_ArrayIdentityElement_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_ArrayIdentityElement_wrap_extern(pointer)
}

nonisolated(unsafe) var _SwiftIdentityTestSubject_identityTable: Set<UnsafeMutableRawPointer> = []

@_expose(wasm, "bjs_SwiftIdentityTestSubject_init")
@_cdecl("bjs_SwiftIdentityTestSubject_init")
public func _bjs_SwiftIdentityTestSubject_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftIdentityTestSubject(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftIdentityTestSubject_self_")
@_cdecl("bjs_SwiftIdentityTestSubject_self_")
public func _bjs_SwiftIdentityTestSubject_self_(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftIdentityTestSubject.bridgeJSLiftParameter(_self).self_()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftIdentityTestSubject_value_get")
@_cdecl("bjs_SwiftIdentityTestSubject_value_get")
public func _bjs_SwiftIdentityTestSubject_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = SwiftIdentityTestSubject.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftIdentityTestSubject_value_set")
@_cdecl("bjs_SwiftIdentityTestSubject_value_set")
public func _bjs_SwiftIdentityTestSubject_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    SwiftIdentityTestSubject.bridgeJSLiftParameter(_self).value = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftIdentityTestSubject_currentValue_get")
@_cdecl("bjs_SwiftIdentityTestSubject_currentValue_get")
public func _bjs_SwiftIdentityTestSubject_currentValue_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = SwiftIdentityTestSubject.bridgeJSLiftParameter(_self).currentValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftIdentityTestSubject_deinit")
@_cdecl("bjs_SwiftIdentityTestSubject_deinit")
public func _bjs_SwiftIdentityTestSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<SwiftIdentityTestSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftIdentityTestSubject_release_wrapper")
@_cdecl("bjs_SwiftIdentityTestSubject_release_wrapper")
public func _bjs_SwiftIdentityTestSubject_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard _SwiftIdentityTestSubject_identityTable.remove(pointer) != nil else { return }
    Unmanaged<SwiftIdentityTestSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension SwiftIdentityTestSubject {
    @_spi(BridgeJS) @_transparent
    public consuming func bridgeJSLowerReturn() -> UnsafeMutableRawPointer {
        return withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftIdentityTestSubject_identityTable.insert(ptr).inserted {
                _ = Unmanaged.passRetained(self)
            }
            return ptr
        }
    }
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftIdentityTestSubject_identityTable.insert(ptr).inserted {
                _ = Unmanaged.passRetained(self)
            }
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension SwiftIdentityTestSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_SwiftIdentityTestSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_SwiftIdentityTestSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_SwiftIdentityTestSubject_wrap")
fileprivate func _bjs_SwiftIdentityTestSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_SwiftIdentityTestSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_SwiftIdentityTestSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_SwiftIdentityTestSubject_wrap_extern(pointer)
}

nonisolated(unsafe) var _SwiftRetainLeakSubject_identityTable: Set<UnsafeMutableRawPointer> = []

@_expose(wasm, "bjs_SwiftRetainLeakSubject_init")
@_cdecl("bjs_SwiftRetainLeakSubject_init")
public func _bjs_SwiftRetainLeakSubject_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftRetainLeakSubject(tag: Int.bridgeJSLiftParameter(tag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftRetainLeakSubject_tag_get")
@_cdecl("bjs_SwiftRetainLeakSubject_tag_get")
public func _bjs_SwiftRetainLeakSubject_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = SwiftRetainLeakSubject.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftRetainLeakSubject_tag_set")
@_cdecl("bjs_SwiftRetainLeakSubject_tag_set")
public func _bjs_SwiftRetainLeakSubject_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    SwiftRetainLeakSubject.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftRetainLeakSubject_deinit")
@_cdecl("bjs_SwiftRetainLeakSubject_deinit")
public func _bjs_SwiftRetainLeakSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<SwiftRetainLeakSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftRetainLeakSubject_release_wrapper")
@_cdecl("bjs_SwiftRetainLeakSubject_release_wrapper")
public func _bjs_SwiftRetainLeakSubject_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard _SwiftRetainLeakSubject_identityTable.remove(pointer) != nil else { return }
    Unmanaged<SwiftRetainLeakSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension SwiftRetainLeakSubject {
    @_spi(BridgeJS) @_transparent
    public consuming func bridgeJSLowerReturn() -> UnsafeMutableRawPointer {
        return withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftRetainLeakSubject_identityTable.insert(ptr).inserted {
                _ = Unmanaged.passRetained(self)
            }
            return ptr
        }
    }
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftRetainLeakSubject_identityTable.insert(ptr).inserted {
                _ = Unmanaged.passRetained(self)
            }
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension SwiftRetainLeakSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_SwiftRetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_SwiftRetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_SwiftRetainLeakSubject_wrap")
fileprivate func _bjs_SwiftRetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_SwiftRetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_SwiftRetainLeakSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_SwiftRetainLeakSubject_wrap_extern(pointer)
}

nonisolated(unsafe) var _SwiftChurnSubject_identityTable: Set<UnsafeMutableRawPointer> = []

@_expose(wasm, "bjs_SwiftChurnSubject_init")
@_cdecl("bjs_SwiftChurnSubject_init")
public func _bjs_SwiftChurnSubject_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = SwiftChurnSubject(tag: Int.bridgeJSLiftParameter(tag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftChurnSubject_tag_get")
@_cdecl("bjs_SwiftChurnSubject_tag_get")
public func _bjs_SwiftChurnSubject_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = SwiftChurnSubject.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftChurnSubject_tag_set")
@_cdecl("bjs_SwiftChurnSubject_tag_set")
public func _bjs_SwiftChurnSubject_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    SwiftChurnSubject.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftChurnSubject_deinit")
@_cdecl("bjs_SwiftChurnSubject_deinit")
public func _bjs_SwiftChurnSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<SwiftChurnSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_SwiftChurnSubject_release_wrapper")
@_cdecl("bjs_SwiftChurnSubject_release_wrapper")
public func _bjs_SwiftChurnSubject_release_wrapper(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    guard _SwiftChurnSubject_identityTable.remove(pointer) != nil else { return }
    Unmanaged<SwiftChurnSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension SwiftChurnSubject {
    @_spi(BridgeJS) @_transparent
    public consuming func bridgeJSLowerReturn() -> UnsafeMutableRawPointer {
        return withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftChurnSubject_identityTable.insert(ptr).inserted {
                _ = Unmanaged.passRetained(self)
            }
            return ptr
        }
    }
    @_spi(BridgeJS) public consuming func bridgeJSStackPush() {
        let ptr: UnsafeMutableRawPointer = withExtendedLifetime(self) {
            let ptr = Unmanaged.passUnretained(self).toOpaque()
            if _SwiftChurnSubject_identityTable.insert(ptr).inserted {
                _ = Unmanaged.passRetained(self)
            }
            return ptr
        }
        _swift_js_push_pointer(ptr)
    }
}

extension SwiftChurnSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_SwiftChurnSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_SwiftChurnSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_SwiftChurnSubject_wrap")
fileprivate func _bjs_SwiftChurnSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_SwiftChurnSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_SwiftChurnSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_SwiftChurnSubject_wrap_extern(pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_IdentityModeTestImports_runJsIdentityModeTests_static")
fileprivate func bjs_IdentityModeTestImports_runJsIdentityModeTests_static_extern() -> Void
#else
fileprivate func bjs_IdentityModeTestImports_runJsIdentityModeTests_static_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_IdentityModeTestImports_runJsIdentityModeTests_static() -> Void {
    return bjs_IdentityModeTestImports_runJsIdentityModeTests_static_extern()
}

func _$IdentityModeTestImports_runJsIdentityModeTests() throws(JSException) -> Void {
    bjs_IdentityModeTestImports_runJsIdentityModeTests_static()
    if let error = _swift_js_take_exception() {
        throw error
    }
}