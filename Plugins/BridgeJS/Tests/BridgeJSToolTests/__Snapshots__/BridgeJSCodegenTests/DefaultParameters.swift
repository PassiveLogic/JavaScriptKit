extension TestModule.Status: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> TestModule.Status {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> TestModule.Status {
        return TestModule.Status(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .active
        case 1:
            self = .inactive
        case 2:
            self = .pending
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .active:
            return 0
        case .inactive:
            return 1
        case .pending:
            return 2
        }
    }
}

extension TestModule.Config: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Config {
        let enabled = Bool.bridgeJSStackPop()
        let value = Int.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return TestModule.Config(name: name, value: value, enabled: enabled)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.value.bridgeJSStackPush()
        self.enabled.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Config(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Config()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Config")
fileprivate func _bjs_struct_lower_TestModule_Config_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Config_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Config(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Config_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Config")
fileprivate func _bjs_struct_lift_TestModule_Config_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Config_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Config() -> Int32 {
    return _bjs_struct_lift_TestModule_Config_extern()
}

extension TestModule.MathOperations: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.MathOperations {
        let baseValue = Double.bridgeJSStackPop()
        return TestModule.MathOperations(baseValue: baseValue)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.baseValue.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_MathOperations(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_MathOperations()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_MathOperations")
fileprivate func _bjs_struct_lower_TestModule_MathOperations_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_MathOperations_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_MathOperations(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_MathOperations_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_MathOperations")
fileprivate func _bjs_struct_lift_TestModule_MathOperations_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_MathOperations_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_MathOperations() -> Int32 {
    return _bjs_struct_lift_TestModule_MathOperations_extern()
}

@_expose(wasm, "bjs_TestModule_MathOperations_init")
@_cdecl("bjs_TestModule_MathOperations_init")
public func _bjs_TestModule_MathOperations_init(_ baseValue: Float64) -> Void {
    #if arch(wasm32)
    let ret = TestModule.MathOperations(baseValue: Double.bridgeJSLiftParameter(baseValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MathOperations_add")
@_cdecl("bjs_TestModule_MathOperations_add")
public func _bjs_TestModule_MathOperations_add(_ a: Float64, _ b: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = TestModule.MathOperations.bridgeJSLiftParameter().add(a: Double.bridgeJSLiftParameter(a), b: Double.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MathOperations_multiply")
@_cdecl("bjs_TestModule_MathOperations_multiply")
public func _bjs_TestModule_MathOperations_multiply(_ a: Float64, _ b: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = TestModule.MathOperations.bridgeJSLiftParameter().multiply(a: Double.bridgeJSLiftParameter(a), b: Double.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MathOperations_static_subtract")
@_cdecl("bjs_TestModule_MathOperations_static_subtract")
public func _bjs_TestModule_MathOperations_static_subtract(_ a: Float64, _ b: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = TestModule.MathOperations.subtract(a: Double.bridgeJSLiftParameter(a), b: Double.bridgeJSLiftParameter(b))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testStringDefault")
@_cdecl("bjs_TestModule_testStringDefault")
public func _bjs_TestModule_testStringDefault(_ messageBytes: Int32, _ messageLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = testStringDefault(message: String.bridgeJSLiftParameter(messageBytes, messageLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testNegativeIntDefault")
@_cdecl("bjs_TestModule_testNegativeIntDefault")
public func _bjs_TestModule_testNegativeIntDefault(_ value: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = testNegativeIntDefault(value: Int.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testBoolDefault")
@_cdecl("bjs_TestModule_testBoolDefault")
public func _bjs_TestModule_testBoolDefault(_ flag: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = testBoolDefault(flag: Bool.bridgeJSLiftParameter(flag))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testNegativeFloatDefault")
@_cdecl("bjs_TestModule_testNegativeFloatDefault")
public func _bjs_TestModule_testNegativeFloatDefault(_ temp: Float32) -> Float32 {
    #if arch(wasm32)
    let ret = testNegativeFloatDefault(temp: Float.bridgeJSLiftParameter(temp))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testDoubleDefault")
@_cdecl("bjs_TestModule_testDoubleDefault")
public func _bjs_TestModule_testDoubleDefault(_ precision: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = testDoubleDefault(precision: Double.bridgeJSLiftParameter(precision))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testOptionalDefault")
@_cdecl("bjs_TestModule_testOptionalDefault")
public func _bjs_TestModule_testOptionalDefault(_ nameIsSome: Int32, _ nameBytes: Int32, _ nameLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = testOptionalDefault(name: Optional<String>.bridgeJSLiftParameter(nameIsSome, nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testOptionalStringDefault")
@_cdecl("bjs_TestModule_testOptionalStringDefault")
public func _bjs_TestModule_testOptionalStringDefault(_ greetingIsSome: Int32, _ greetingBytes: Int32, _ greetingLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = testOptionalStringDefault(greeting: Optional<String>.bridgeJSLiftParameter(greetingIsSome, greetingBytes, greetingLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testMultipleDefaults")
@_cdecl("bjs_TestModule_testMultipleDefaults")
public func _bjs_TestModule_testMultipleDefaults(_ titleBytes: Int32, _ titleLength: Int32, _ count: Int32, _ enabled: Int32) -> Void {
    #if arch(wasm32)
    let ret = testMultipleDefaults(title: String.bridgeJSLiftParameter(titleBytes, titleLength), count: Int.bridgeJSLiftParameter(count), enabled: Bool.bridgeJSLiftParameter(enabled))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testEnumDefault")
@_cdecl("bjs_TestModule_testEnumDefault")
public func _bjs_TestModule_testEnumDefault(_ status: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = testEnumDefault(status: TestModule.Status.bridgeJSLiftParameter(status))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testComplexInit")
@_cdecl("bjs_TestModule_testComplexInit")
public func _bjs_TestModule_testComplexInit(_ greeter: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = testComplexInit(greeter: TestModule.DefaultGreeter.bridgeJSLiftParameter(greeter))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testEmptyInit")
@_cdecl("bjs_TestModule_testEmptyInit")
public func _bjs_TestModule_testEmptyInit(_ greeter: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = testEmptyInit(greeter: TestModule.EmptyGreeter.bridgeJSLiftParameter(greeter))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testOptionalStructDefault")
@_cdecl("bjs_TestModule_testOptionalStructDefault")
public func _bjs_TestModule_testOptionalStructDefault() -> Void {
    #if arch(wasm32)
    let ret = testOptionalStructDefault(point: Optional<TestModule.Config>.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testOptionalStructWithValueDefault")
@_cdecl("bjs_TestModule_testOptionalStructWithValueDefault")
public func _bjs_TestModule_testOptionalStructWithValueDefault() -> Void {
    #if arch(wasm32)
    let ret = testOptionalStructWithValueDefault(point: Optional<TestModule.Config>.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testIntArrayDefault")
@_cdecl("bjs_TestModule_testIntArrayDefault")
public func _bjs_TestModule_testIntArrayDefault() -> Void {
    #if arch(wasm32)
    let ret = testIntArrayDefault(values: [Int].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testStringArrayDefault")
@_cdecl("bjs_TestModule_testStringArrayDefault")
public func _bjs_TestModule_testStringArrayDefault() -> Void {
    #if arch(wasm32)
    let ret = testStringArrayDefault(names: [String].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testDoubleArrayDefault")
@_cdecl("bjs_TestModule_testDoubleArrayDefault")
public func _bjs_TestModule_testDoubleArrayDefault() -> Void {
    #if arch(wasm32)
    let ret = testDoubleArrayDefault(values: [Double].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testBoolArrayDefault")
@_cdecl("bjs_TestModule_testBoolArrayDefault")
public func _bjs_TestModule_testBoolArrayDefault() -> Void {
    #if arch(wasm32)
    let ret = testBoolArrayDefault(flags: [Bool].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testEmptyArrayDefault")
@_cdecl("bjs_TestModule_testEmptyArrayDefault")
public func _bjs_TestModule_testEmptyArrayDefault() -> Void {
    #if arch(wasm32)
    let ret = testEmptyArrayDefault(items: [Int].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_testMixedWithArrayDefault")
@_cdecl("bjs_TestModule_testMixedWithArrayDefault")
public func _bjs_TestModule_testMixedWithArrayDefault(_ nameBytes: Int32, _ nameLength: Int32, _ enabled: Int32) -> Void {
    #if arch(wasm32)
    let ret = testMixedWithArrayDefault(name: String.bridgeJSLiftParameter(nameBytes, nameLength), values: [Int].bridgeJSStackPop(), enabled: Bool.bridgeJSLiftParameter(enabled))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_DefaultGreeter_init")
@_cdecl("bjs_TestModule_DefaultGreeter_init")
public func _bjs_TestModule_DefaultGreeter_init(_ nameBytes: Int32, _ nameLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.DefaultGreeter(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_DefaultGreeter_name_get")
@_cdecl("bjs_TestModule_DefaultGreeter_name_get")
public func _bjs_TestModule_DefaultGreeter_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.DefaultGreeter.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_DefaultGreeter_name_set")
@_cdecl("bjs_TestModule_DefaultGreeter_name_set")
public func _bjs_TestModule_DefaultGreeter_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    TestModule.DefaultGreeter.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_DefaultGreeter_deinit")
@_cdecl("bjs_TestModule_DefaultGreeter_deinit")
public func _bjs_TestModule_DefaultGreeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.DefaultGreeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.DefaultGreeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_DefaultGreeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_DefaultGreeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_DefaultGreeter_wrap")
fileprivate func _bjs_TestModule_DefaultGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_DefaultGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_DefaultGreeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_DefaultGreeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_EmptyGreeter_init")
@_cdecl("bjs_TestModule_EmptyGreeter_init")
public func _bjs_TestModule_EmptyGreeter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.EmptyGreeter()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_EmptyGreeter_deinit")
@_cdecl("bjs_TestModule_EmptyGreeter_deinit")
public func _bjs_TestModule_EmptyGreeter_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.EmptyGreeter>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.EmptyGreeter: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_EmptyGreeter_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_EmptyGreeter_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_EmptyGreeter_wrap")
fileprivate func _bjs_TestModule_EmptyGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_EmptyGreeter_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_EmptyGreeter_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_EmptyGreeter_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_init")
@_cdecl("bjs_TestModule_ConstructorDefaults_init")
public func _bjs_TestModule_ConstructorDefaults_init(_ nameBytes: Int32, _ nameLength: Int32, _ count: Int32, _ enabled: Int32, _ status: Int32, _ tagIsSome: Int32, _ tagBytes: Int32, _ tagLength: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = TestModule.ConstructorDefaults(name: String.bridgeJSLiftParameter(nameBytes, nameLength), count: Int.bridgeJSLiftParameter(count), enabled: Bool.bridgeJSLiftParameter(enabled), status: TestModule.Status.bridgeJSLiftParameter(status), tag: Optional<String>.bridgeJSLiftParameter(tagIsSome, tagBytes, tagLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_name_get")
@_cdecl("bjs_TestModule_ConstructorDefaults_name_get")
public func _bjs_TestModule_ConstructorDefaults_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_name_set")
@_cdecl("bjs_TestModule_ConstructorDefaults_name_set")
public func _bjs_TestModule_ConstructorDefaults_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_count_get")
@_cdecl("bjs_TestModule_ConstructorDefaults_count_get")
public func _bjs_TestModule_ConstructorDefaults_count_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).count
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_count_set")
@_cdecl("bjs_TestModule_ConstructorDefaults_count_set")
public func _bjs_TestModule_ConstructorDefaults_count_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).count = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_enabled_get")
@_cdecl("bjs_TestModule_ConstructorDefaults_enabled_get")
public func _bjs_TestModule_ConstructorDefaults_enabled_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).enabled
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_enabled_set")
@_cdecl("bjs_TestModule_ConstructorDefaults_enabled_set")
public func _bjs_TestModule_ConstructorDefaults_enabled_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).enabled = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_status_get")
@_cdecl("bjs_TestModule_ConstructorDefaults_status_get")
public func _bjs_TestModule_ConstructorDefaults_status_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).status
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_status_set")
@_cdecl("bjs_TestModule_ConstructorDefaults_status_set")
public func _bjs_TestModule_ConstructorDefaults_status_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).status = TestModule.Status.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_tag_get")
@_cdecl("bjs_TestModule_ConstructorDefaults_tag_get")
public func _bjs_TestModule_ConstructorDefaults_tag_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).tag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_tag_set")
@_cdecl("bjs_TestModule_ConstructorDefaults_tag_set")
public func _bjs_TestModule_ConstructorDefaults_tag_set(_ _self: UnsafeMutableRawPointer, _ valueIsSome: Int32, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    TestModule.ConstructorDefaults.bridgeJSLiftParameter(_self).tag = Optional<String>.bridgeJSLiftParameter(valueIsSome, valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConstructorDefaults_deinit")
@_cdecl("bjs_TestModule_ConstructorDefaults_deinit")
public func _bjs_TestModule_ConstructorDefaults_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.ConstructorDefaults>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.ConstructorDefaults: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_ConstructorDefaults_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_ConstructorDefaults_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_ConstructorDefaults_wrap")
fileprivate func _bjs_TestModule_ConstructorDefaults_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_ConstructorDefaults_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_ConstructorDefaults_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_ConstructorDefaults_wrap_extern(pointer)
}