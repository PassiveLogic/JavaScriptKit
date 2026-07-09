extension TestModule.Precision: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.DataPoint: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.DataPoint {
        let optFlag = Optional<Bool>.bridgeJSStackPop()
        let optCount = Optional<Int>.bridgeJSStackPop()
        let label = String.bridgeJSStackPop()
        let y = Double.bridgeJSStackPop()
        let x = Double.bridgeJSStackPop()
        return TestModule.DataPoint(x: x, y: y, label: label, optCount: optCount, optFlag: optFlag)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
        self.label.bridgeJSStackPush()
        self.optCount.bridgeJSStackPush()
        self.optFlag.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_DataPoint(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_DataPoint()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_DataPoint")
fileprivate func _bjs_struct_lower_TestModule_DataPoint_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_DataPoint_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_DataPoint(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_DataPoint_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_DataPoint")
fileprivate func _bjs_struct_lift_TestModule_DataPoint_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_DataPoint_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_DataPoint() -> Int32 {
    return _bjs_struct_lift_TestModule_DataPoint_extern()
}

@_expose(wasm, "bjs_TestModule_DataPoint_init")
@_cdecl("bjs_TestModule_DataPoint_init")
public func _bjs_TestModule_DataPoint_init(_ x: Float64, _ y: Float64, _ labelBytes: Int32, _ labelLength: Int32, _ optCountIsSome: Int32, _ optCountValue: Int32, _ optFlagIsSome: Int32, _ optFlagValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.DataPoint(x: Double.bridgeJSLiftParameter(x), y: Double.bridgeJSLiftParameter(y), label: String.bridgeJSLiftParameter(labelBytes, labelLength), optCount: Optional<Int>.bridgeJSLiftParameter(optCountIsSome, optCountValue), optFlag: Optional<Bool>.bridgeJSLiftParameter(optFlagIsSome, optFlagValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_DataPoint_static_dimensions_get")
@_cdecl("bjs_TestModule_DataPoint_static_dimensions_get")
public func _bjs_TestModule_DataPoint_static_dimensions_get() -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.DataPoint.dimensions
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_DataPoint_static_origin")
@_cdecl("bjs_TestModule_DataPoint_static_origin")
public func _bjs_TestModule_DataPoint_static_origin() -> Void {
    #if arch(wasm32)
    let ret = TestModule.DataPoint.origin()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Address: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Address {
        let zipCode = Optional<Int>.bridgeJSStackPop()
        let city = String.bridgeJSStackPop()
        let street = String.bridgeJSStackPop()
        return TestModule.Address(street: street, city: city, zipCode: zipCode)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.street.bridgeJSStackPush()
        self.city.bridgeJSStackPush()
        self.zipCode.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Address(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Address()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Address")
fileprivate func _bjs_struct_lower_TestModule_Address_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Address_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Address(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Address_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Address")
fileprivate func _bjs_struct_lift_TestModule_Address_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Address_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Address() -> Int32 {
    return _bjs_struct_lift_TestModule_Address_extern()
}

extension TestModule.Person: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Person {
        let email = Optional<String>.bridgeJSStackPop()
        let address = TestModule.Address.bridgeJSStackPop()
        let age = Int.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return TestModule.Person(name: name, age: age, address: address, email: email)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.age.bridgeJSStackPush()
        self.address.bridgeJSStackPush()
        self.email.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Person(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Person()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Person")
fileprivate func _bjs_struct_lower_TestModule_Person_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Person_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Person(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Person_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Person")
fileprivate func _bjs_struct_lift_TestModule_Person_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Person_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Person() -> Int32 {
    return _bjs_struct_lift_TestModule_Person_extern()
}

extension TestModule.Session: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Session {
        let owner = TestModule.Greeter.bridgeJSStackPop()
        let id = Int.bridgeJSStackPop()
        return TestModule.Session(id: id, owner: owner)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.owner.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Session(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Session()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Session")
fileprivate func _bjs_struct_lower_TestModule_Session_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Session_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Session(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Session_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Session")
fileprivate func _bjs_struct_lift_TestModule_Session_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Session_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Session() -> Int32 {
    return _bjs_struct_lift_TestModule_Session_extern()
}

extension TestModule.Measurement: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Measurement {
        let optionalPrecision = Optional<TestModule.Precision>.bridgeJSStackPop()
        let precision = TestModule.Precision.bridgeJSStackPop()
        let value = Double.bridgeJSStackPop()
        return TestModule.Measurement(value: value, precision: precision, optionalPrecision: optionalPrecision)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.value.bridgeJSStackPush()
        self.precision.bridgeJSStackPush()
        self.optionalPrecision.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Measurement(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Measurement()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Measurement")
fileprivate func _bjs_struct_lower_TestModule_Measurement_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Measurement_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Measurement(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Measurement_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Measurement")
fileprivate func _bjs_struct_lift_TestModule_Measurement_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Measurement_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Measurement() -> Int32 {
    return _bjs_struct_lift_TestModule_Measurement_extern()
}

extension TestModule.ConfigStruct: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.ConfigStruct {
        return TestModule.ConfigStruct()
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_ConfigStruct(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_ConfigStruct()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_ConfigStruct")
fileprivate func _bjs_struct_lower_TestModule_ConfigStruct_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_ConfigStruct_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_ConfigStruct(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_ConfigStruct_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_ConfigStruct")
fileprivate func _bjs_struct_lift_TestModule_ConfigStruct_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_ConfigStruct_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_ConfigStruct() -> Int32 {
    return _bjs_struct_lift_TestModule_ConfigStruct_extern()
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_maxRetries_get")
@_cdecl("bjs_TestModule_ConfigStruct_static_maxRetries_get")
public func _bjs_TestModule_ConfigStruct_static_maxRetries_get() -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.ConfigStruct.maxRetries
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_defaultConfig_get")
@_cdecl("bjs_TestModule_ConfigStruct_static_defaultConfig_get")
public func _bjs_TestModule_ConfigStruct_static_defaultConfig_get() -> Void {
    #if arch(wasm32)
    let ret = TestModule.ConfigStruct.defaultConfig
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_defaultConfig_set")
@_cdecl("bjs_TestModule_ConfigStruct_static_defaultConfig_set")
public func _bjs_TestModule_ConfigStruct_static_defaultConfig_set(_ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    TestModule.ConfigStruct.defaultConfig = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_timeout_get")
@_cdecl("bjs_TestModule_ConfigStruct_static_timeout_get")
public func _bjs_TestModule_ConfigStruct_static_timeout_get() -> Float64 {
    #if arch(wasm32)
    let ret = TestModule.ConfigStruct.timeout
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_timeout_set")
@_cdecl("bjs_TestModule_ConfigStruct_static_timeout_set")
public func _bjs_TestModule_ConfigStruct_static_timeout_set(_ value: Float64) -> Void {
    #if arch(wasm32)
    TestModule.ConfigStruct.timeout = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_computedSetting_get")
@_cdecl("bjs_TestModule_ConfigStruct_static_computedSetting_get")
public func _bjs_TestModule_ConfigStruct_static_computedSetting_get() -> Void {
    #if arch(wasm32)
    let ret = TestModule.ConfigStruct.computedSetting
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_ConfigStruct_static_update")
@_cdecl("bjs_TestModule_ConfigStruct_static_update")
public func _bjs_TestModule_ConfigStruct_static_update(_ timeout: Float64) -> Float64 {
    #if arch(wasm32)
    let ret = TestModule.ConfigStruct.update(_: Double.bridgeJSLiftParameter(timeout))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Container: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Container {
        let optionalObject = Optional<JSObject>.bridgeJSStackPop()
        let object = JSObject.bridgeJSStackPop()
        return TestModule.Container(object: object, optionalObject: optionalObject)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.object.bridgeJSStackPush()
        self.optionalObject.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Container(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Container()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Container")
fileprivate func _bjs_struct_lower_TestModule_Container_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Container_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Container(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Container_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Container")
fileprivate func _bjs_struct_lift_TestModule_Container_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Container_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Container() -> Int32 {
    return _bjs_struct_lift_TestModule_Container_extern()
}

extension TestModule.Vector2D: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Vector2D {
        let dy = Double.bridgeJSStackPop()
        let dx = Double.bridgeJSStackPop()
        return TestModule.Vector2D(dx: dx, dy: dy)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.dx.bridgeJSStackPush()
        self.dy.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Vector2D(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Vector2D()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Vector2D")
fileprivate func _bjs_struct_lower_TestModule_Vector2D_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Vector2D_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Vector2D(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Vector2D_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Vector2D")
fileprivate func _bjs_struct_lift_TestModule_Vector2D_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Vector2D_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Vector2D() -> Int32 {
    return _bjs_struct_lift_TestModule_Vector2D_extern()
}

@_expose(wasm, "bjs_TestModule_Vector2D_magnitude")
@_cdecl("bjs_TestModule_Vector2D_magnitude")
public func _bjs_TestModule_Vector2D_magnitude() -> Float64 {
    #if arch(wasm32)
    let ret = TestModule.Vector2D.bridgeJSLiftParameter().magnitude()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Vector2D_scaled")
@_cdecl("bjs_TestModule_Vector2D_scaled")
public func _bjs_TestModule_Vector2D_scaled(_ factor: Float64) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Vector2D.bridgeJSLiftParameter().scaled(by: Double.bridgeJSLiftParameter(factor))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundtrip")
@_cdecl("bjs_TestModule_roundtrip")
public func _bjs_TestModule_roundtrip() -> Void {
    #if arch(wasm32)
    let ret = roundtrip(_: TestModule.Person.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundtripContainer")
@_cdecl("bjs_TestModule_roundtripContainer")
public func _bjs_TestModule_roundtripContainer() -> Void {
    #if arch(wasm32)
    let ret = roundtripContainer(_: TestModule.Container.bridgeJSLiftParameter())
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