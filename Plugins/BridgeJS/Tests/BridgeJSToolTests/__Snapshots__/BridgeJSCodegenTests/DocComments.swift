struct AnyListener: Listener, _BridgedSwiftProtocolWrapper {
    let jsObject: JSObject

    func onEvent(id: Int) -> Void {
        let jsObjectValue = jsObject.bridgeJSLowerParameter()
        let idValue = id.bridgeJSLowerParameter()
        _extern_onEvent(jsObjectValue, idValue)
    }

    var name: String {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_Listener_name_get(jsObjectValue)
            return String.bridgeJSLiftReturn(ret)
        }
    }

    static func bridgeJSLiftParameter(_ value: Int32) -> Self {
        return AnyListener(jsObject: JSObject(id: UInt32(bitPattern: value)))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_Listener_onEvent")
fileprivate func _extern_onEvent_extern(_ jsObject: Int32, _ id: Int32) -> Void
#else
fileprivate func _extern_onEvent_extern(_ jsObject: Int32, _ id: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _extern_onEvent(_ jsObject: Int32, _ id: Int32) -> Void {
    return _extern_onEvent_extern(jsObject, id)
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_Listener_name_get")
fileprivate func bjs_Listener_name_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_Listener_name_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_Listener_name_get(_ jsObject: Int32) -> Int32 {
    return bjs_Listener_name_get_extern(jsObject)
}

extension TestModule.Color: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> TestModule.Color {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> TestModule.Color {
        return TestModule.Color(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .red
        case 1:
            self = .green
        case 2:
            self = .blue
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .red:
            return 0
        case .green:
            return 1
        case .blue:
            return 2
        }
    }
}

@_expose(wasm, "bjs_TestModule_Color_static_canonical")
@_cdecl("bjs_TestModule_Color_static_canonical")
public func _bjs_TestModule_Color_static_canonical(_ labelBytes: Int32, _ labelLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Color.canonical(label: String.bridgeJSLiftParameter(labelBytes, labelLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Color_static_fallback_get")
@_cdecl("bjs_TestModule_Color_static_fallback_get")
public func _bjs_TestModule_Color_static_fallback_get() -> Void {
    #if arch(wasm32)
    let ret = TestModule.Color.fallback
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Point: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Point {
        let y = Double.bridgeJSStackPop()
        let x = Double.bridgeJSStackPop()
        return TestModule.Point(x: x, y: y)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Point(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Point()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Point")
fileprivate func _bjs_struct_lower_TestModule_Point_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Point_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Point(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Point_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Point")
fileprivate func _bjs_struct_lift_TestModule_Point_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Point_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Point() -> Int32 {
    return _bjs_struct_lift_TestModule_Point_extern()
}

@_expose(wasm, "bjs_TestModule_greet")
@_cdecl("bjs_TestModule_greet")
public func _bjs_TestModule_greet(_ nameBytes: Int32, _ nameLength: Int32, _ greetingBytes: Int32, _ greetingLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = greet(name: String.bridgeJSLiftParameter(nameBytes, nameLength), greeting: String.bridgeJSLiftParameter(greetingBytes, greetingLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_add")
@_cdecl("bjs_TestModule_add")
public func _bjs_TestModule_add(_ a: Int32, _ b: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = add(a: Int.bridgeJSLiftParameter(a), b: Int.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_trimmed")
@_cdecl("bjs_TestModule_trimmed")
public func _bjs_TestModule_trimmed() -> Void {
    #if arch(wasm32)
    trimmed()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_hello")
@_cdecl("bjs_TestModule_hello")
public func _bjs_TestModule_hello() -> Void {
    #if arch(wasm32)
    hello()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_parseInt")
@_cdecl("bjs_TestModule_parseInt")
public func _bjs_TestModule_parseInt(_ textBytes: Int32, _ textLength: Int32) -> Int32 {
    #if arch(wasm32)
    do {
        let ret = try parseInt(text: String.bridgeJSLiftParameter(textBytes, textLength))
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

@_expose(wasm, "bjs_TestModule_MathUtils_double")
@_cdecl("bjs_TestModule_MathUtils_double")
public func _bjs_TestModule_MathUtils_double(_ value: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = double(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_terminator")
@_cdecl("bjs_TestModule_terminator")
public func _bjs_TestModule_terminator() -> Void {
    #if arch(wasm32)
    let ret = terminator()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_init")
@_cdecl("bjs_TestModule_Greeter_init")
public func _bjs_TestModule_Greeter_init(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.Greeter(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_greet")
@_cdecl("bjs_TestModule_Greeter_greet")
public func _bjs_TestModule_Greeter_greet(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Greeter.bridgeJSLiftParameter(_self).greet()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_name_get")
@_cdecl("bjs_TestModule_Greeter_name_get")
public func _bjs_TestModule_Greeter_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Greeter.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_name_set")
@_cdecl("bjs_TestModule_Greeter_name_set")
public func _bjs_TestModule_Greeter_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    TestModule.Greeter.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Greeter_deinit")
@_cdecl("bjs_TestModule_Greeter_deinit")
public func _bjs_TestModule_Greeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Greeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Greeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Greeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Greeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Greeter_wrap")
fileprivate func _bjs_TestModule_Greeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Greeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Greeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Greeter_wrap_extern(pointer)
}