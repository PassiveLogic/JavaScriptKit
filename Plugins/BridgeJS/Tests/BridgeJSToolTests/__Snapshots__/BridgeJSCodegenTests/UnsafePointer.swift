extension TestModule.PointerFields: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.PointerFields {
        let mutPtr = UnsafeMutablePointer<UInt8>.bridgeJSStackPop()
        let ptr = UnsafePointer<UInt8>.bridgeJSStackPop()
        let opaque = OpaquePointer.bridgeJSStackPop()
        let mutRaw = UnsafeMutableRawPointer.bridgeJSStackPop()
        let raw = UnsafeRawPointer.bridgeJSStackPop()
        return TestModule.PointerFields(raw: raw, mutRaw: mutRaw, opaque: opaque, ptr: ptr, mutPtr: mutPtr)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.raw.bridgeJSStackPush()
        self.mutRaw.bridgeJSStackPush()
        self.opaque.bridgeJSStackPush()
        self.ptr.bridgeJSStackPush()
        self.mutPtr.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_PointerFields(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_PointerFields()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_PointerFields")
fileprivate func _bjs_struct_lower_TestModule_PointerFields_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_PointerFields_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_PointerFields(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_PointerFields_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_PointerFields")
fileprivate func _bjs_struct_lift_TestModule_PointerFields_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_PointerFields_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_PointerFields() -> Int32 {
    return _bjs_struct_lift_TestModule_PointerFields_extern()
}

@_expose(wasm, "bjs_TestModule_PointerFields_init")
@_cdecl("bjs_TestModule_PointerFields_init")
public func _bjs_TestModule_PointerFields_init(_ raw: UnsafeMutableRawPointer, _ mutRaw: UnsafeMutableRawPointer, _ opaque: UnsafeMutableRawPointer, _ ptr: UnsafeMutableRawPointer, _ mutPtr: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.PointerFields(raw: UnsafeRawPointer.bridgeJSLiftParameter(raw), mutRaw: UnsafeMutableRawPointer.bridgeJSLiftParameter(mutRaw), opaque: OpaquePointer.bridgeJSLiftParameter(opaque), ptr: UnsafePointer<UInt8>.bridgeJSLiftParameter(ptr), mutPtr: UnsafeMutablePointer<UInt8>.bridgeJSLiftParameter(mutPtr))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_takeUnsafeRawPointer")
@_cdecl("bjs_TestModule_takeUnsafeRawPointer")
public func _bjs_TestModule_takeUnsafeRawPointer(_ p: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    takeUnsafeRawPointer(_: UnsafeRawPointer.bridgeJSLiftParameter(p))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_takeUnsafeMutableRawPointer")
@_cdecl("bjs_TestModule_takeUnsafeMutableRawPointer")
public func _bjs_TestModule_takeUnsafeMutableRawPointer(_ p: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    takeUnsafeMutableRawPointer(_: UnsafeMutableRawPointer.bridgeJSLiftParameter(p))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_takeOpaquePointer")
@_cdecl("bjs_TestModule_takeOpaquePointer")
public func _bjs_TestModule_takeOpaquePointer(_ p: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    takeOpaquePointer(_: OpaquePointer.bridgeJSLiftParameter(p))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_takeUnsafePointer")
@_cdecl("bjs_TestModule_takeUnsafePointer")
public func _bjs_TestModule_takeUnsafePointer(_ p: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    takeUnsafePointer(_: UnsafePointer<UInt8>.bridgeJSLiftParameter(p))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_takeUnsafeMutablePointer")
@_cdecl("bjs_TestModule_takeUnsafeMutablePointer")
public func _bjs_TestModule_takeUnsafeMutablePointer(_ p: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    takeUnsafeMutablePointer(_: UnsafeMutablePointer<UInt8>.bridgeJSLiftParameter(p))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_returnUnsafeRawPointer")
@_cdecl("bjs_TestModule_returnUnsafeRawPointer")
public func _bjs_TestModule_returnUnsafeRawPointer() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = returnUnsafeRawPointer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_returnUnsafeMutableRawPointer")
@_cdecl("bjs_TestModule_returnUnsafeMutableRawPointer")
public func _bjs_TestModule_returnUnsafeMutableRawPointer() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = returnUnsafeMutableRawPointer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_returnOpaquePointer")
@_cdecl("bjs_TestModule_returnOpaquePointer")
public func _bjs_TestModule_returnOpaquePointer() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = returnOpaquePointer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_returnUnsafePointer")
@_cdecl("bjs_TestModule_returnUnsafePointer")
public func _bjs_TestModule_returnUnsafePointer() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = returnUnsafePointer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_returnUnsafeMutablePointer")
@_cdecl("bjs_TestModule_returnUnsafeMutablePointer")
public func _bjs_TestModule_returnUnsafeMutablePointer() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = returnUnsafeMutablePointer()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripPointerFields")
@_cdecl("bjs_TestModule_roundTripPointerFields")
public func _bjs_TestModule_roundTripPointerFields() -> Void {
    #if arch(wasm32)
    let ret = roundTripPointerFields(_: TestModule.PointerFields.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}