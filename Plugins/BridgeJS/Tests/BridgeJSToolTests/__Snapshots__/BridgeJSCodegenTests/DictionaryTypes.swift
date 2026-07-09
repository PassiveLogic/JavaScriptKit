extension TestModule.Counters: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Counters {
        let counts = [String: Optional<Int>].bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return TestModule.Counters(name: name, counts: counts)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        for __bjs_kv_counts in self.counts {
            let __bjs_key_counts = __bjs_kv_counts.key
            let __bjs_value_counts = __bjs_kv_counts.value
            __bjs_key_counts.bridgeJSStackPush()
            __bjs_value_counts.bridgeJSStackPush()
        }
        _swift_js_push_i32(Int32(self.counts.count))
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Counters(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Counters()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Counters")
fileprivate func _bjs_struct_lower_TestModule_Counters_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Counters_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Counters(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Counters_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Counters")
fileprivate func _bjs_struct_lift_TestModule_Counters_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Counters_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Counters() -> Int32 {
    return _bjs_struct_lift_TestModule_Counters_extern()
}

@_expose(wasm, "bjs_TestModule_mirrorDictionary")
@_cdecl("bjs_TestModule_mirrorDictionary")
public func _bjs_TestModule_mirrorDictionary() -> Void {
    #if arch(wasm32)
    let ret = mirrorDictionary(_: [String: Int].bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_optionalDictionary")
@_cdecl("bjs_TestModule_optionalDictionary")
public func _bjs_TestModule_optionalDictionary() -> Void {
    #if arch(wasm32)
    let ret = optionalDictionary(_: Optional<[String: String]>.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_nestedDictionary")
@_cdecl("bjs_TestModule_nestedDictionary")
public func _bjs_TestModule_nestedDictionary() -> Void {
    #if arch(wasm32)
    let ret = nestedDictionary(_: [String: [Int]].bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_boxDictionary")
@_cdecl("bjs_TestModule_boxDictionary")
public func _bjs_TestModule_boxDictionary() -> Void {
    #if arch(wasm32)
    let ret = boxDictionary(_: [String: TestModule.Box].bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_optionalBoxDictionary")
@_cdecl("bjs_TestModule_optionalBoxDictionary")
public func _bjs_TestModule_optionalBoxDictionary() -> Void {
    #if arch(wasm32)
    let ret = optionalBoxDictionary(_: [String: Optional<TestModule.Box>].bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundtripCounters")
@_cdecl("bjs_TestModule_roundtripCounters")
public func _bjs_TestModule_roundtripCounters() -> Void {
    #if arch(wasm32)
    let ret = roundtripCounters(_: TestModule.Counters.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Box_deinit")
@_cdecl("bjs_TestModule_Box_deinit")
public func _bjs_TestModule_Box_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Box>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Box: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Box_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Box_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Box_wrap")
fileprivate func _bjs_TestModule_Box_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Box_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Box_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Box_wrap_extern(pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_importMirrorDictionary")
fileprivate func bjs_importMirrorDictionary_extern() -> Void
#else
fileprivate func bjs_importMirrorDictionary_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_importMirrorDictionary() -> Void {
    return bjs_importMirrorDictionary_extern()
}

func _$importMirrorDictionary(_ values: [String: Double]) throws(JSException) -> [String: Double] {
    let _ = values.bridgeJSLowerParameter()
    bjs_importMirrorDictionary()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String: Double].bridgeJSLiftReturn()
}