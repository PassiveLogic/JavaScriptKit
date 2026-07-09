// bridge-js: skip
// swift-format-ignore-file
// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

@_expose(wasm, "bjs_BridgeJSIdentityTests_getSharedSubject")
@_cdecl("bjs_BridgeJSIdentityTests_getSharedSubject")
public func _bjs_BridgeJSIdentityTests_getSharedSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getSharedSubject()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_resetSharedSubject")
@_cdecl("bjs_BridgeJSIdentityTests_resetSharedSubject")
public func _bjs_BridgeJSIdentityTests_resetSharedSubject() -> Void {
    #if arch(wasm32)
    resetSharedSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_getRetainLeakSubject")
@_cdecl("bjs_BridgeJSIdentityTests_getRetainLeakSubject")
public func _bjs_BridgeJSIdentityTests_getRetainLeakSubject() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = getRetainLeakSubject()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_resetRetainLeakSubject")
@_cdecl("bjs_BridgeJSIdentityTests_resetRetainLeakSubject")
public func _bjs_BridgeJSIdentityTests_resetRetainLeakSubject() -> Void {
    #if arch(wasm32)
    resetRetainLeakSubject()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_getRetainLeakDeinits")
@_cdecl("bjs_BridgeJSIdentityTests_getRetainLeakDeinits")
public func _bjs_BridgeJSIdentityTests_getRetainLeakDeinits() -> Int32 {
    #if arch(wasm32)
    let ret = getRetainLeakDeinits()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_resetRetainLeakDeinits")
@_cdecl("bjs_BridgeJSIdentityTests_resetRetainLeakDeinits")
public func _bjs_BridgeJSIdentityTests_resetRetainLeakDeinits() -> Void {
    #if arch(wasm32)
    resetRetainLeakDeinits()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_setupArrayPool")
@_cdecl("bjs_BridgeJSIdentityTests_setupArrayPool")
public func _bjs_BridgeJSIdentityTests_setupArrayPool(_ count: Int32) -> Void {
    #if arch(wasm32)
    setupArrayPool(_: Int.bridgeJSLiftParameter(count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_getArrayPool")
@_cdecl("bjs_BridgeJSIdentityTests_getArrayPool")
public func _bjs_BridgeJSIdentityTests_getArrayPool() -> Void {
    #if arch(wasm32)
    let ret = getArrayPool()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_getArrayPoolElement")
@_cdecl("bjs_BridgeJSIdentityTests_getArrayPoolElement")
public func _bjs_BridgeJSIdentityTests_getArrayPoolElement(_ index: Int32) -> Void {
    #if arch(wasm32)
    let ret = getArrayPoolElement(_: Int.bridgeJSLiftParameter(index))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_getArrayPoolDeinits")
@_cdecl("bjs_BridgeJSIdentityTests_getArrayPoolDeinits")
public func _bjs_BridgeJSIdentityTests_getArrayPoolDeinits() -> Int32 {
    #if arch(wasm32)
    let ret = getArrayPoolDeinits()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_resetArrayPoolDeinits")
@_cdecl("bjs_BridgeJSIdentityTests_resetArrayPoolDeinits")
public func _bjs_BridgeJSIdentityTests_resetArrayPoolDeinits() -> Void {
    #if arch(wasm32)
    resetArrayPoolDeinits()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_clearArrayPool")
@_cdecl("bjs_BridgeJSIdentityTests_clearArrayPool")
public func _bjs_BridgeJSIdentityTests_clearArrayPool() -> Void {
    #if arch(wasm32)
    clearArrayPool()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_IdentityTestSubject_init")
@_cdecl("bjs_BridgeJSIdentityTests_IdentityTestSubject_init")
public func _bjs_BridgeJSIdentityTests_IdentityTestSubject_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.IdentityTestSubject(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_IdentityTestSubject_value_get")
@_cdecl("bjs_BridgeJSIdentityTests_IdentityTestSubject_value_get")
public func _bjs_BridgeJSIdentityTests_IdentityTestSubject_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.IdentityTestSubject.bridgeJSLiftParameter(_self).value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_IdentityTestSubject_value_set")
@_cdecl("bjs_BridgeJSIdentityTests_IdentityTestSubject_value_set")
public func _bjs_BridgeJSIdentityTests_IdentityTestSubject_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSIdentityTests.IdentityTestSubject.bridgeJSLiftParameter(_self).value = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_IdentityTestSubject_currentValue_get")
@_cdecl("bjs_BridgeJSIdentityTests_IdentityTestSubject_currentValue_get")
public func _bjs_BridgeJSIdentityTests_IdentityTestSubject_currentValue_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.IdentityTestSubject.bridgeJSLiftParameter(_self).currentValue
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_IdentityTestSubject_deinit")
@_cdecl("bjs_BridgeJSIdentityTests_IdentityTestSubject_deinit")
public func _bjs_BridgeJSIdentityTests_IdentityTestSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSIdentityTests.IdentityTestSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSIdentityTests.IdentityTestSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap")
fileprivate func _bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSIdentityTests_IdentityTestSubject_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_RetainLeakSubject_init")
@_cdecl("bjs_BridgeJSIdentityTests_RetainLeakSubject_init")
public func _bjs_BridgeJSIdentityTests_RetainLeakSubject_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.RetainLeakSubject(tag: Int.bridgeJSLiftParameter(tag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_RetainLeakSubject_tag_get")
@_cdecl("bjs_BridgeJSIdentityTests_RetainLeakSubject_tag_get")
public func _bjs_BridgeJSIdentityTests_RetainLeakSubject_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.RetainLeakSubject.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_RetainLeakSubject_tag_set")
@_cdecl("bjs_BridgeJSIdentityTests_RetainLeakSubject_tag_set")
public func _bjs_BridgeJSIdentityTests_RetainLeakSubject_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSIdentityTests.RetainLeakSubject.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_RetainLeakSubject_deinit")
@_cdecl("bjs_BridgeJSIdentityTests_RetainLeakSubject_deinit")
public func _bjs_BridgeJSIdentityTests_RetainLeakSubject_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSIdentityTests.RetainLeakSubject>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSIdentityTests.RetainLeakSubject: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap")
fileprivate func _bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSIdentityTests_RetainLeakSubject_wrap_extern(pointer)
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_ArrayIdentityElement_init")
@_cdecl("bjs_BridgeJSIdentityTests_ArrayIdentityElement_init")
public func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_init(_ tag: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.ArrayIdentityElement(tag: Int.bridgeJSLiftParameter(tag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_ArrayIdentityElement_tag_get")
@_cdecl("bjs_BridgeJSIdentityTests_ArrayIdentityElement_tag_get")
public func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_tag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = BridgeJSIdentityTests.ArrayIdentityElement.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_ArrayIdentityElement_tag_set")
@_cdecl("bjs_BridgeJSIdentityTests_ArrayIdentityElement_tag_set")
public func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_tag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    BridgeJSIdentityTests.ArrayIdentityElement.bridgeJSLiftParameter(_self).tag = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_BridgeJSIdentityTests_ArrayIdentityElement_deinit")
@_cdecl("bjs_BridgeJSIdentityTests_ArrayIdentityElement_deinit")
public func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<BridgeJSIdentityTests.ArrayIdentityElement>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension BridgeJSIdentityTests.ArrayIdentityElement: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap")
fileprivate func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_BridgeJSIdentityTests_ArrayIdentityElement_wrap_extern(pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "BridgeJSIdentityTests", name: "bjs_gc")
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