// bridge-js: skip
// swift-format-ignore-file
// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

extension Benchmarks.APIResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> Benchmarks.APIResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .failure(Int.bridgeJSStackPop())
        case 2:
            return .flag(Bool.bridgeJSStackPop())
        case 3:
            return .rate(Float.bridgeJSStackPop())
        case 4:
            return .precise(Double.bridgeJSStackPop())
        case 5:
            return .info
        default:
            fatalError("Unknown Benchmarks.APIResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .failure(let param0):
            param0.bridgeJSStackPush()
            return Int32(1)
        case .flag(let param0):
            param0.bridgeJSStackPush()
            return Int32(2)
        case .rate(let param0):
            param0.bridgeJSStackPush()
            return Int32(3)
        case .precise(let param0):
            param0.bridgeJSStackPush()
            return Int32(4)
        case .info:
            return Int32(5)
        }
    }
}

extension Benchmarks.ComplexResult: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> Benchmarks.ComplexResult {
        switch caseId {
        case 0:
            return .success(String.bridgeJSStackPop())
        case 1:
            return .error(String.bridgeJSStackPop(), Int.bridgeJSStackPop())
        case 2:
            return .location(Double.bridgeJSStackPop(), Double.bridgeJSStackPop(), String.bridgeJSStackPop())
        case 3:
            return .status(Bool.bridgeJSStackPop(), Int.bridgeJSStackPop(), String.bridgeJSStackPop())
        case 4:
            return .coordinates(Double.bridgeJSStackPop(), Double.bridgeJSStackPop(), Double.bridgeJSStackPop())
        case 5:
            return .comprehensive(Bool.bridgeJSStackPop(), Bool.bridgeJSStackPop(), Int.bridgeJSStackPop(), Int.bridgeJSStackPop(), Double.bridgeJSStackPop(), Double.bridgeJSStackPop(), String.bridgeJSStackPop(), String.bridgeJSStackPop(), String.bridgeJSStackPop())
        case 6:
            return .info
        default:
            fatalError("Unknown Benchmarks.ComplexResult case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .success(let param0):
            param0.bridgeJSStackPush()
            return Int32(0)
        case .error(let param0, let param1):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            return Int32(1)
        case .location(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(2)
        case .status(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(3)
        case .coordinates(let param0, let param1, let param2):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            return Int32(4)
        case .comprehensive(let param0, let param1, let param2, let param3, let param4, let param5, let param6, let param7, let param8):
            param0.bridgeJSStackPush()
            param1.bridgeJSStackPush()
            param2.bridgeJSStackPush()
            param3.bridgeJSStackPush()
            param4.bridgeJSStackPush()
            param5.bridgeJSStackPush()
            param6.bridgeJSStackPush()
            param7.bridgeJSStackPush()
            param8.bridgeJSStackPush()
            return Int32(5)
        case .info:
            return Int32(6)
        }
    }
}

extension Benchmarks.SimpleStruct: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> Benchmarks.SimpleStruct {
        let precise = Double.bridgeJSStackPop()
        let rate = Float.bridgeJSStackPop()
        let flag = Bool.bridgeJSStackPop()
        let count = Int.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return Benchmarks.SimpleStruct(name: name, count: count, flag: flag, rate: rate, precise: precise)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.count.bridgeJSStackPush()
        self.flag.bridgeJSStackPush()
        self.rate.bridgeJSStackPush()
        self.precise.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_Benchmarks_SimpleStruct(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_Benchmarks_SimpleStruct()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_Benchmarks_SimpleStruct")
fileprivate func _bjs_struct_lower_Benchmarks_SimpleStruct_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_Benchmarks_SimpleStruct_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_Benchmarks_SimpleStruct(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_Benchmarks_SimpleStruct_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_Benchmarks_SimpleStruct")
fileprivate func _bjs_struct_lift_Benchmarks_SimpleStruct_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_Benchmarks_SimpleStruct_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_Benchmarks_SimpleStruct() -> Int32 {
    return _bjs_struct_lift_Benchmarks_SimpleStruct_extern()
}

extension Benchmarks.Address: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> Benchmarks.Address {
        let zipCode = Int.bridgeJSStackPop()
        let city = String.bridgeJSStackPop()
        let street = String.bridgeJSStackPop()
        return Benchmarks.Address(street: street, city: city, zipCode: zipCode)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.street.bridgeJSStackPush()
        self.city.bridgeJSStackPush()
        self.zipCode.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_Benchmarks_Address(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_Benchmarks_Address()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_Benchmarks_Address")
fileprivate func _bjs_struct_lower_Benchmarks_Address_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_Benchmarks_Address_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_Benchmarks_Address(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_Benchmarks_Address_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_Benchmarks_Address")
fileprivate func _bjs_struct_lift_Benchmarks_Address_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_Benchmarks_Address_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_Benchmarks_Address() -> Int32 {
    return _bjs_struct_lift_Benchmarks_Address_extern()
}

extension Benchmarks.Person: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> Benchmarks.Person {
        let email = Optional<String>.bridgeJSStackPop()
        let address = Benchmarks.Address.bridgeJSStackPop()
        let age = Int.bridgeJSStackPop()
        let name = String.bridgeJSStackPop()
        return Benchmarks.Person(name: name, age: age, address: address, email: email)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
        self.age.bridgeJSStackPush()
        self.address.bridgeJSStackPush()
        self.email.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_Benchmarks_Person(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_Benchmarks_Person()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_Benchmarks_Person")
fileprivate func _bjs_struct_lower_Benchmarks_Person_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_Benchmarks_Person_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_Benchmarks_Person(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_Benchmarks_Person_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_Benchmarks_Person")
fileprivate func _bjs_struct_lift_Benchmarks_Person_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_Benchmarks_Person_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_Benchmarks_Person() -> Int32 {
    return _bjs_struct_lift_Benchmarks_Person_extern()
}

extension Benchmarks.ComplexStruct: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> Benchmarks.ComplexStruct {
        let metadata = String.bridgeJSStackPop()
        let tags = String.bridgeJSStackPop()
        let score = Double.bridgeJSStackPop()
        let active = Bool.bridgeJSStackPop()
        let title = String.bridgeJSStackPop()
        let id = Int.bridgeJSStackPop()
        return Benchmarks.ComplexStruct(id: id, title: title, active: active, score: score, tags: tags, metadata: metadata)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.title.bridgeJSStackPush()
        self.active.bridgeJSStackPush()
        self.score.bridgeJSStackPush()
        self.tags.bridgeJSStackPush()
        self.metadata.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_Benchmarks_ComplexStruct(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_Benchmarks_ComplexStruct()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_Benchmarks_ComplexStruct")
fileprivate func _bjs_struct_lower_Benchmarks_ComplexStruct_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_Benchmarks_ComplexStruct_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_Benchmarks_ComplexStruct(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_Benchmarks_ComplexStruct_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_Benchmarks_ComplexStruct")
fileprivate func _bjs_struct_lift_Benchmarks_ComplexStruct_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_Benchmarks_ComplexStruct_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_Benchmarks_ComplexStruct() -> Int32 {
    return _bjs_struct_lift_Benchmarks_ComplexStruct_extern()
}

extension Benchmarks.Point: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> Benchmarks.Point {
        let y = Double.bridgeJSStackPop()
        let x = Double.bridgeJSStackPop()
        return Benchmarks.Point(x: x, y: y)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_Benchmarks_Point(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_Benchmarks_Point()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_Benchmarks_Point")
fileprivate func _bjs_struct_lower_Benchmarks_Point_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_Benchmarks_Point_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_Benchmarks_Point(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_Benchmarks_Point_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_Benchmarks_Point")
fileprivate func _bjs_struct_lift_Benchmarks_Point_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_Benchmarks_Point_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_Benchmarks_Point() -> Int32 {
    return _bjs_struct_lift_Benchmarks_Point_extern()
}

@_expose(wasm, "bjs_Benchmarks_run")
@_cdecl("bjs_Benchmarks_run")
public func _bjs_Benchmarks_run() -> Void {
    #if arch(wasm32)
    run()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_init")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_init")
public func _bjs_Benchmarks_EnumRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_take")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_take")
public func _bjs_Benchmarks_EnumRoundtrip_take(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).take(_: Benchmarks.APIResult.bridgeJSLiftParameter(value))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_makeSuccess")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_makeSuccess")
public func _bjs_Benchmarks_EnumRoundtrip_makeSuccess(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).makeSuccess()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_makeFailure")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_makeFailure")
public func _bjs_Benchmarks_EnumRoundtrip_makeFailure(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).makeFailure()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_makeFlag")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_makeFlag")
public func _bjs_Benchmarks_EnumRoundtrip_makeFlag(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).makeFlag()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_makeRate")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_makeRate")
public func _bjs_Benchmarks_EnumRoundtrip_makeRate(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).makeRate()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_makePrecise")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_makePrecise")
public func _bjs_Benchmarks_EnumRoundtrip_makePrecise(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).makePrecise()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_makeInfo")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_makeInfo")
public func _bjs_Benchmarks_EnumRoundtrip_makeInfo(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).makeInfo()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_roundtrip")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_roundtrip")
public func _bjs_Benchmarks_EnumRoundtrip_roundtrip(_ _self: UnsafeMutableRawPointer, _ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.EnumRoundtrip.bridgeJSLiftParameter(_self).roundtrip(_: Benchmarks.APIResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_EnumRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_EnumRoundtrip_deinit")
public func _bjs_Benchmarks_EnumRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.EnumRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.EnumRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_EnumRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_EnumRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_EnumRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_EnumRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_EnumRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_EnumRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_EnumRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_init")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_init")
public func _bjs_Benchmarks_ComplexResultRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_take")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_take")
public func _bjs_Benchmarks_ComplexResultRoundtrip_take(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).take(_: Benchmarks.ComplexResult.bridgeJSLiftParameter(value))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeSuccess")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeSuccess")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeSuccess(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeSuccess()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeError")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeError")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeError(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeError()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeLocation")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeLocation")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeLocation(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeLocation()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeStatus")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeStatus")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeStatus(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeStatus()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeCoordinates")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeCoordinates")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeCoordinates(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeCoordinates()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeComprehensive")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeComprehensive")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeComprehensive(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeComprehensive()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_makeInfo")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_makeInfo")
public func _bjs_Benchmarks_ComplexResultRoundtrip_makeInfo(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).makeInfo()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_roundtrip")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_roundtrip")
public func _bjs_Benchmarks_ComplexResultRoundtrip_roundtrip(_ _self: UnsafeMutableRawPointer, _ result: Int32) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ComplexResultRoundtrip.bridgeJSLiftParameter(_self).roundtrip(_: Benchmarks.ComplexResult.bridgeJSLiftParameter(result))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ComplexResultRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_ComplexResultRoundtrip_deinit")
public func _bjs_Benchmarks_ComplexResultRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.ComplexResultRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.ComplexResultRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_ComplexResultRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_ComplexResultRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_ComplexResultRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_ComplexResultRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_ComplexResultRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_ComplexResultRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_ComplexResultRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_StringRoundtrip_init")
@_cdecl("bjs_Benchmarks_StringRoundtrip_init")
public func _bjs_Benchmarks_StringRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.StringRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StringRoundtrip_take")
@_cdecl("bjs_Benchmarks_StringRoundtrip_take")
public func _bjs_Benchmarks_StringRoundtrip_take(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.StringRoundtrip.bridgeJSLiftParameter(_self).take(_: String.bridgeJSLiftParameter(valueBytes, valueLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StringRoundtrip_make")
@_cdecl("bjs_Benchmarks_StringRoundtrip_make")
public func _bjs_Benchmarks_StringRoundtrip_make(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StringRoundtrip.bridgeJSLiftParameter(_self).make()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StringRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_StringRoundtrip_deinit")
public func _bjs_Benchmarks_StringRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.StringRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.StringRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_StringRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_StringRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_StringRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_StringRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_StringRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_StringRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_StringRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_init")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_init")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeIntSome")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeIntSome")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeIntSome(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeIntSome()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeIntNone")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeIntNone")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeIntNone(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeIntNone()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeBoolSome")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeBoolSome")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeBoolSome(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeBoolSome()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeBoolNone")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeBoolNone")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeBoolNone(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeBoolNone()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeDoubleSome")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeDoubleSome")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeDoubleSome(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeDoubleSome()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeDoubleNone")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeDoubleNone")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeDoubleNone(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeDoubleNone()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeStringSome")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeStringSome")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeStringSome(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeStringSome()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_makeStringNone")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_makeStringNone")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_makeStringNone(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.OptionalReturnRoundtrip.bridgeJSLiftParameter(_self).makeStringNone()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_OptionalReturnRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_OptionalReturnRoundtrip_deinit")
public func _bjs_Benchmarks_OptionalReturnRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.OptionalReturnRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.OptionalReturnRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_OptionalReturnRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_OptionalReturnRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_OptionalReturnRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_OptionalReturnRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_OptionalReturnRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_OptionalReturnRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_OptionalReturnRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_init")
@_cdecl("bjs_Benchmarks_StructRoundtrip_init")
public func _bjs_Benchmarks_StructRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_takeSimple")
@_cdecl("bjs_Benchmarks_StructRoundtrip_takeSimple")
public func _bjs_Benchmarks_StructRoundtrip_takeSimple(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).takeSimple(_: Benchmarks.SimpleStruct.bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_makeSimple")
@_cdecl("bjs_Benchmarks_StructRoundtrip_makeSimple")
public func _bjs_Benchmarks_StructRoundtrip_makeSimple(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).makeSimple()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_roundtripSimple")
@_cdecl("bjs_Benchmarks_StructRoundtrip_roundtripSimple")
public func _bjs_Benchmarks_StructRoundtrip_roundtripSimple(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).roundtripSimple(_: Benchmarks.SimpleStruct.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_takeAddress")
@_cdecl("bjs_Benchmarks_StructRoundtrip_takeAddress")
public func _bjs_Benchmarks_StructRoundtrip_takeAddress(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).takeAddress(_: Benchmarks.Address.bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_makeAddress")
@_cdecl("bjs_Benchmarks_StructRoundtrip_makeAddress")
public func _bjs_Benchmarks_StructRoundtrip_makeAddress(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).makeAddress()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_roundtripAddress")
@_cdecl("bjs_Benchmarks_StructRoundtrip_roundtripAddress")
public func _bjs_Benchmarks_StructRoundtrip_roundtripAddress(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).roundtripAddress(_: Benchmarks.Address.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_takePerson")
@_cdecl("bjs_Benchmarks_StructRoundtrip_takePerson")
public func _bjs_Benchmarks_StructRoundtrip_takePerson(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).takePerson(_: Benchmarks.Person.bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_makePerson")
@_cdecl("bjs_Benchmarks_StructRoundtrip_makePerson")
public func _bjs_Benchmarks_StructRoundtrip_makePerson(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).makePerson()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_roundtripPerson")
@_cdecl("bjs_Benchmarks_StructRoundtrip_roundtripPerson")
public func _bjs_Benchmarks_StructRoundtrip_roundtripPerson(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).roundtripPerson(_: Benchmarks.Person.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_takeComplex")
@_cdecl("bjs_Benchmarks_StructRoundtrip_takeComplex")
public func _bjs_Benchmarks_StructRoundtrip_takeComplex(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).takeComplex(_: Benchmarks.ComplexStruct.bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_makeComplex")
@_cdecl("bjs_Benchmarks_StructRoundtrip_makeComplex")
public func _bjs_Benchmarks_StructRoundtrip_makeComplex(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).makeComplex()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_roundtripComplex")
@_cdecl("bjs_Benchmarks_StructRoundtrip_roundtripComplex")
public func _bjs_Benchmarks_StructRoundtrip_roundtripComplex(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.StructRoundtrip.bridgeJSLiftParameter(_self).roundtripComplex(_: Benchmarks.ComplexStruct.bridgeJSLiftParameter())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_StructRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_StructRoundtrip_deinit")
public func _bjs_Benchmarks_StructRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.StructRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.StructRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_StructRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_StructRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_StructRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_StructRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_StructRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_StructRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_StructRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_init")
@_cdecl("bjs_Benchmarks_SimpleClass_init")
public func _bjs_Benchmarks_SimpleClass_init(_ nameBytes: Int32, _ nameLength: Int32, _ count: Int32, _ flag: Int32, _ rate: Float32, _ precise: Float64) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClass(name: String.bridgeJSLiftParameter(nameBytes, nameLength), count: Int.bridgeJSLiftParameter(count), flag: Bool.bridgeJSLiftParameter(flag), rate: Float.bridgeJSLiftParameter(rate), precise: Double.bridgeJSLiftParameter(precise))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_name_get")
@_cdecl("bjs_Benchmarks_SimpleClass_name_get")
public func _bjs_Benchmarks_SimpleClass_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_name_set")
@_cdecl("bjs_Benchmarks_SimpleClass_name_set")
public func _bjs_Benchmarks_SimpleClass_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_count_get")
@_cdecl("bjs_Benchmarks_SimpleClass_count_get")
public func _bjs_Benchmarks_SimpleClass_count_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).count
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_count_set")
@_cdecl("bjs_Benchmarks_SimpleClass_count_set")
public func _bjs_Benchmarks_SimpleClass_count_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).count = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_flag_get")
@_cdecl("bjs_Benchmarks_SimpleClass_flag_get")
public func _bjs_Benchmarks_SimpleClass_flag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).flag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_flag_set")
@_cdecl("bjs_Benchmarks_SimpleClass_flag_set")
public func _bjs_Benchmarks_SimpleClass_flag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).flag = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_rate_get")
@_cdecl("bjs_Benchmarks_SimpleClass_rate_get")
public func _bjs_Benchmarks_SimpleClass_rate_get(_ _self: UnsafeMutableRawPointer) -> Float32 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).rate
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_rate_set")
@_cdecl("bjs_Benchmarks_SimpleClass_rate_set")
public func _bjs_Benchmarks_SimpleClass_rate_set(_ _self: UnsafeMutableRawPointer, _ value: Float32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).rate = Float.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_precise_get")
@_cdecl("bjs_Benchmarks_SimpleClass_precise_get")
public func _bjs_Benchmarks_SimpleClass_precise_get(_ _self: UnsafeMutableRawPointer) -> Float64 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).precise
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_precise_set")
@_cdecl("bjs_Benchmarks_SimpleClass_precise_set")
public func _bjs_Benchmarks_SimpleClass_precise_set(_ _self: UnsafeMutableRawPointer, _ value: Float64) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClass.bridgeJSLiftParameter(_self).precise = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClass_deinit")
@_cdecl("bjs_Benchmarks_SimpleClass_deinit")
public func _bjs_Benchmarks_SimpleClass_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.SimpleClass>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.SimpleClass: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_SimpleClass_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_SimpleClass_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_SimpleClass_wrap")
fileprivate func _bjs_Benchmarks_SimpleClass_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_SimpleClass_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_SimpleClass_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_SimpleClass_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_init")
@_cdecl("bjs_Benchmarks_AddressClass_init")
public func _bjs_Benchmarks_AddressClass_init(_ streetBytes: Int32, _ streetLength: Int32, _ cityBytes: Int32, _ cityLength: Int32, _ zipCode: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.AddressClass(street: String.bridgeJSLiftParameter(streetBytes, streetLength), city: String.bridgeJSLiftParameter(cityBytes, cityLength), zipCode: Int.bridgeJSLiftParameter(zipCode))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_street_get")
@_cdecl("bjs_Benchmarks_AddressClass_street_get")
public func _bjs_Benchmarks_AddressClass_street_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.AddressClass.bridgeJSLiftParameter(_self).street
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_street_set")
@_cdecl("bjs_Benchmarks_AddressClass_street_set")
public func _bjs_Benchmarks_AddressClass_street_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.AddressClass.bridgeJSLiftParameter(_self).street = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_city_get")
@_cdecl("bjs_Benchmarks_AddressClass_city_get")
public func _bjs_Benchmarks_AddressClass_city_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.AddressClass.bridgeJSLiftParameter(_self).city
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_city_set")
@_cdecl("bjs_Benchmarks_AddressClass_city_set")
public func _bjs_Benchmarks_AddressClass_city_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.AddressClass.bridgeJSLiftParameter(_self).city = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_zipCode_get")
@_cdecl("bjs_Benchmarks_AddressClass_zipCode_get")
public func _bjs_Benchmarks_AddressClass_zipCode_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = Benchmarks.AddressClass.bridgeJSLiftParameter(_self).zipCode
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_zipCode_set")
@_cdecl("bjs_Benchmarks_AddressClass_zipCode_set")
public func _bjs_Benchmarks_AddressClass_zipCode_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.AddressClass.bridgeJSLiftParameter(_self).zipCode = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_AddressClass_deinit")
@_cdecl("bjs_Benchmarks_AddressClass_deinit")
public func _bjs_Benchmarks_AddressClass_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.AddressClass>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.AddressClass: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_AddressClass_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_AddressClass_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_AddressClass_wrap")
fileprivate func _bjs_Benchmarks_AddressClass_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_AddressClass_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_AddressClass_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_AddressClass_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_init")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_init")
public func _bjs_Benchmarks_ClassRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_takeSimpleClass")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_takeSimpleClass")
public func _bjs_Benchmarks_ClassRoundtrip_takeSimpleClass(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ClassRoundtrip.bridgeJSLiftParameter(_self).takeSimpleClass(_: Benchmarks.SimpleClass.bridgeJSLiftParameter(value))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_makeSimpleClass")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_makeSimpleClass")
public func _bjs_Benchmarks_ClassRoundtrip_makeSimpleClass(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtrip.bridgeJSLiftParameter(_self).makeSimpleClass()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_roundtripSimpleClass")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_roundtripSimpleClass")
public func _bjs_Benchmarks_ClassRoundtrip_roundtripSimpleClass(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtrip.bridgeJSLiftParameter(_self).roundtripSimpleClass(_: Benchmarks.SimpleClass.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_takeAddressClass")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_takeAddressClass")
public func _bjs_Benchmarks_ClassRoundtrip_takeAddressClass(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ClassRoundtrip.bridgeJSLiftParameter(_self).takeAddressClass(_: Benchmarks.AddressClass.bridgeJSLiftParameter(value))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_makeAddressClass")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_makeAddressClass")
public func _bjs_Benchmarks_ClassRoundtrip_makeAddressClass(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtrip.bridgeJSLiftParameter(_self).makeAddressClass()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_roundtripAddressClass")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_roundtripAddressClass")
public func _bjs_Benchmarks_ClassRoundtrip_roundtripAddressClass(_ _self: UnsafeMutableRawPointer, _ value: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtrip.bridgeJSLiftParameter(_self).roundtripAddressClass(_: Benchmarks.AddressClass.bridgeJSLiftParameter(value))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_ClassRoundtrip_deinit")
public func _bjs_Benchmarks_ClassRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.ClassRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.ClassRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_ClassRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_ClassRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_ClassRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_ClassRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_ClassRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_ClassRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_ClassRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_init")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_init")
public func _bjs_Benchmarks_ClassArrayRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassArrayRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_setupPool")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_setupPool")
public func _bjs_Benchmarks_ClassArrayRoundtrip_setupPool(_ _self: UnsafeMutableRawPointer, _ count: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.ClassArrayRoundtrip.bridgeJSLiftParameter(_self).setupPool(_: Int.bridgeJSLiftParameter(count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_getPool")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_getPool")
public func _bjs_Benchmarks_ClassArrayRoundtrip_getPool(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ClassArrayRoundtrip.bridgeJSLiftParameter(_self).getPool()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_makeClassArray")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_makeClassArray")
public func _bjs_Benchmarks_ClassArrayRoundtrip_makeClassArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ClassArrayRoundtrip.bridgeJSLiftParameter(_self).makeClassArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_takeClassArray")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_takeClassArray")
public func _bjs_Benchmarks_ClassArrayRoundtrip_takeClassArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ClassArrayRoundtrip.bridgeJSLiftParameter(_self).takeClassArray(_: [Benchmarks.SimpleClass].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_roundtripClassArray")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_roundtripClassArray")
public func _bjs_Benchmarks_ClassArrayRoundtrip_roundtripClassArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ClassArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripClassArray(_: [Benchmarks.SimpleClass].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassArrayRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_ClassArrayRoundtrip_deinit")
public func _bjs_Benchmarks_ClassArrayRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.ClassArrayRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.ClassArrayRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_ClassArrayRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_ClassArrayRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_ClassArrayRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_ClassArrayRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_ClassArrayRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_ClassArrayRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_ClassArrayRoundtrip_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmark_init")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmark_init")
public func _bjs_Benchmarks_IdentityCacheBenchmark_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.IdentityCacheBenchmark()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmark_setupPool")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmark_setupPool")
public func _bjs_Benchmarks_IdentityCacheBenchmark_setupPool(_ _self: UnsafeMutableRawPointer, _ count: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.IdentityCacheBenchmark.bridgeJSLiftParameter(_self).setupPool(_: Int.bridgeJSLiftParameter(count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmark_getPoolRepeated")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmark_getPoolRepeated")
public func _bjs_Benchmarks_IdentityCacheBenchmark_getPoolRepeated(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.IdentityCacheBenchmark.bridgeJSLiftParameter(_self).getPoolRepeated()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmark_deinit")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmark_deinit")
public func _bjs_Benchmarks_IdentityCacheBenchmark_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.IdentityCacheBenchmark>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.IdentityCacheBenchmark: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_IdentityCacheBenchmark_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_IdentityCacheBenchmark_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_IdentityCacheBenchmark_wrap")
fileprivate func _bjs_Benchmarks_IdentityCacheBenchmark_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_IdentityCacheBenchmark_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_IdentityCacheBenchmark_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_IdentityCacheBenchmark_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_init")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_init")
public func _bjs_Benchmarks_SimpleClassIdentity_init(_ nameBytes: Int32, _ nameLength: Int32, _ count: Int32, _ flag: Int32, _ rate: Float32, _ precise: Float64) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClassIdentity(name: String.bridgeJSLiftParameter(nameBytes, nameLength), count: Int.bridgeJSLiftParameter(count), flag: Bool.bridgeJSLiftParameter(flag), rate: Float.bridgeJSLiftParameter(rate), precise: Double.bridgeJSLiftParameter(precise))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_name_get")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_name_get")
public func _bjs_Benchmarks_SimpleClassIdentity_name_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).name
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_name_set")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_name_set")
public func _bjs_Benchmarks_SimpleClassIdentity_name_set(_ _self: UnsafeMutableRawPointer, _ valueBytes: Int32, _ valueLength: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).name = String.bridgeJSLiftParameter(valueBytes, valueLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_count_get")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_count_get")
public func _bjs_Benchmarks_SimpleClassIdentity_count_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).count
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_count_set")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_count_set")
public func _bjs_Benchmarks_SimpleClassIdentity_count_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).count = Int.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_flag_get")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_flag_get")
public func _bjs_Benchmarks_SimpleClassIdentity_flag_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).flag
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_flag_set")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_flag_set")
public func _bjs_Benchmarks_SimpleClassIdentity_flag_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).flag = Bool.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_rate_get")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_rate_get")
public func _bjs_Benchmarks_SimpleClassIdentity_rate_get(_ _self: UnsafeMutableRawPointer) -> Float32 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).rate
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_rate_set")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_rate_set")
public func _bjs_Benchmarks_SimpleClassIdentity_rate_set(_ _self: UnsafeMutableRawPointer, _ value: Float32) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).rate = Float.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_precise_get")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_precise_get")
public func _bjs_Benchmarks_SimpleClassIdentity_precise_get(_ _self: UnsafeMutableRawPointer) -> Float64 {
    #if arch(wasm32)
    let ret = Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).precise
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_precise_set")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_precise_set")
public func _bjs_Benchmarks_SimpleClassIdentity_precise_set(_ _self: UnsafeMutableRawPointer, _ value: Float64) -> Void {
    #if arch(wasm32)
    Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(_self).precise = Double.bridgeJSLiftParameter(value)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_SimpleClassIdentity_deinit")
@_cdecl("bjs_Benchmarks_SimpleClassIdentity_deinit")
public func _bjs_Benchmarks_SimpleClassIdentity_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.SimpleClassIdentity>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.SimpleClassIdentity: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_SimpleClassIdentity_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_SimpleClassIdentity_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_SimpleClassIdentity_wrap")
fileprivate func _bjs_Benchmarks_SimpleClassIdentity_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_SimpleClassIdentity_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_SimpleClassIdentity_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_SimpleClassIdentity_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtripIdentity_init")
@_cdecl("bjs_Benchmarks_ClassRoundtripIdentity_init")
public func _bjs_Benchmarks_ClassRoundtripIdentity_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtripIdentity()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtripIdentity_roundtripSimpleClassIdentity")
@_cdecl("bjs_Benchmarks_ClassRoundtripIdentity_roundtripSimpleClassIdentity")
public func _bjs_Benchmarks_ClassRoundtripIdentity_roundtripSimpleClassIdentity(_ _self: UnsafeMutableRawPointer, _ obj: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtripIdentity.bridgeJSLiftParameter(_self).roundtripSimpleClassIdentity(_: Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(obj))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtripIdentity_makeSimpleClassIdentity")
@_cdecl("bjs_Benchmarks_ClassRoundtripIdentity_makeSimpleClassIdentity")
public func _bjs_Benchmarks_ClassRoundtripIdentity_makeSimpleClassIdentity(_ _self: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ClassRoundtripIdentity.bridgeJSLiftParameter(_self).makeSimpleClassIdentity()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtripIdentity_takeSimpleClassIdentity")
@_cdecl("bjs_Benchmarks_ClassRoundtripIdentity_takeSimpleClassIdentity")
public func _bjs_Benchmarks_ClassRoundtripIdentity_takeSimpleClassIdentity(_ _self: UnsafeMutableRawPointer, _ obj: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ClassRoundtripIdentity.bridgeJSLiftParameter(_self).takeSimpleClassIdentity(_: Benchmarks.SimpleClassIdentity.bridgeJSLiftParameter(obj))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ClassRoundtripIdentity_deinit")
@_cdecl("bjs_Benchmarks_ClassRoundtripIdentity_deinit")
public func _bjs_Benchmarks_ClassRoundtripIdentity_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.ClassRoundtripIdentity>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.ClassRoundtripIdentity: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_ClassRoundtripIdentity_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_ClassRoundtripIdentity_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_ClassRoundtripIdentity_wrap")
fileprivate func _bjs_Benchmarks_ClassRoundtripIdentity_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_ClassRoundtripIdentity_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_ClassRoundtripIdentity_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_ClassRoundtripIdentity_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmarkIdentity_init")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmarkIdentity_init")
public func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.IdentityCacheBenchmarkIdentity()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmarkIdentity_setupPool")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmarkIdentity_setupPool")
public func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_setupPool(_ _self: UnsafeMutableRawPointer, _ count: Int32) -> Void {
    #if arch(wasm32)
    Benchmarks.IdentityCacheBenchmarkIdentity.bridgeJSLiftParameter(_self).setupPool(_: Int.bridgeJSLiftParameter(count))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmarkIdentity_getPoolRepeated")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmarkIdentity_getPoolRepeated")
public func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_getPoolRepeated(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.IdentityCacheBenchmarkIdentity.bridgeJSLiftParameter(_self).getPoolRepeated()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_IdentityCacheBenchmarkIdentity_deinit")
@_cdecl("bjs_Benchmarks_IdentityCacheBenchmarkIdentity_deinit")
public func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.IdentityCacheBenchmarkIdentity>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.IdentityCacheBenchmarkIdentity: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap")
fileprivate func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_IdentityCacheBenchmarkIdentity_wrap_extern(pointer)
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_init")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_init")
public func _bjs_Benchmarks_ArrayRoundtrip_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeIntArray(_: [Int].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeIntArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripIntArray(_: [Int].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeIntArrayLarge")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeIntArrayLarge")
public func _bjs_Benchmarks_ArrayRoundtrip_makeIntArrayLarge(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeIntArrayLarge()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeDoubleArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeDoubleArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeDoubleArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeDoubleArray(_: [Double].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeDoubleArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeDoubleArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeDoubleArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeDoubleArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripDoubleArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripDoubleArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripDoubleArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripDoubleArray(_: [Double].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeStringArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeStringArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeStringArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeStringArray(_: [String].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeStringArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeStringArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeStringArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeStringArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripStringArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripStringArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripStringArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripStringArray(_: [String].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takePointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takePointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takePointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takePointArray(_: [Benchmarks.Point].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makePointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makePointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makePointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makePointArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripPointArray(_: [Benchmarks.Point].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makePointArrayLarge")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makePointArrayLarge")
public func _bjs_Benchmarks_ArrayRoundtrip_makePointArrayLarge(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makePointArrayLarge()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeNestedIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeNestedIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeNestedIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeNestedIntArray(_: [[Int]].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeNestedIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeNestedIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeNestedIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeNestedIntArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripNestedIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripNestedIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripNestedIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripNestedIntArray(_: [[Int]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeNestedPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeNestedPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeNestedPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeNestedPointArray(_: [[Benchmarks.Point]].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeNestedPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeNestedPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeNestedPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeNestedPointArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripNestedPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripNestedPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripNestedPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripNestedPointArray(_: [[Benchmarks.Point]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeOptionalIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeOptionalIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeOptionalIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeOptionalIntArray(_: [Optional<Int>].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeOptionalIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeOptionalIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeOptionalIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeOptionalIntArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalIntArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalIntArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalIntArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripOptionalIntArray(_: [Optional<Int>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeOptionalPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeOptionalPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeOptionalPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeOptionalPointArray(_: [Optional<Benchmarks.Point>].bridgeJSStackPop())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeOptionalPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeOptionalPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_makeOptionalPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeOptionalPointArray()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalPointArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalPointArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalPointArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripOptionalPointArray(_: [Optional<Benchmarks.Point>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_takeOptionalArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_takeOptionalArray")
public func _bjs_Benchmarks_ArrayRoundtrip_takeOptionalArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).takeOptionalArray(_: Optional<[Int]>.bridgeJSLiftParameter())
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeOptionalArraySome")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeOptionalArraySome")
public func _bjs_Benchmarks_ArrayRoundtrip_makeOptionalArraySome(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeOptionalArraySome()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_makeOptionalArrayNone")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_makeOptionalArrayNone")
public func _bjs_Benchmarks_ArrayRoundtrip_makeOptionalArrayNone(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).makeOptionalArrayNone()
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalArray")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalArray")
public func _bjs_Benchmarks_ArrayRoundtrip_roundtripOptionalArray(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = Benchmarks.ArrayRoundtrip.bridgeJSLiftParameter(_self).roundtripOptionalArray(_: Optional<[Int]>.bridgeJSLiftParameter())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Benchmarks_ArrayRoundtrip_deinit")
@_cdecl("bjs_Benchmarks_ArrayRoundtrip_deinit")
public func _bjs_Benchmarks_ArrayRoundtrip_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<Benchmarks.ArrayRoundtrip>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension Benchmarks.ArrayRoundtrip: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_Benchmarks_ArrayRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_Benchmarks_ArrayRoundtrip_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_Benchmarks_ArrayRoundtrip_wrap")
fileprivate func _bjs_Benchmarks_ArrayRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_Benchmarks_ArrayRoundtrip_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_Benchmarks_ArrayRoundtrip_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_Benchmarks_ArrayRoundtrip_wrap_extern(pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_benchmarkHelperNoop")
fileprivate func bjs_benchmarkHelperNoop_extern() -> Void
#else
fileprivate func bjs_benchmarkHelperNoop_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_benchmarkHelperNoop() -> Void {
    return bjs_benchmarkHelperNoop_extern()
}

func _$benchmarkHelperNoop() throws(JSException) -> Void {
    bjs_benchmarkHelperNoop()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_benchmarkHelperNoopWithNumber")
fileprivate func bjs_benchmarkHelperNoopWithNumber_extern(_ n: Float64) -> Void
#else
fileprivate func bjs_benchmarkHelperNoopWithNumber_extern(_ n: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_benchmarkHelperNoopWithNumber(_ n: Float64) -> Void {
    return bjs_benchmarkHelperNoopWithNumber_extern(n)
}

func _$benchmarkHelperNoopWithNumber(_ n: Double) throws(JSException) -> Void {
    let nValue = n.bridgeJSLowerParameter()
    bjs_benchmarkHelperNoopWithNumber(nValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "Benchmarks", name: "bjs_benchmarkRunner")
fileprivate func bjs_benchmarkRunner_extern(_ nameBytes: Int32, _ nameLength: Int32, _ body: Int32) -> Void
#else
fileprivate func bjs_benchmarkRunner_extern(_ nameBytes: Int32, _ nameLength: Int32, _ body: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_benchmarkRunner(_ nameBytes: Int32, _ nameLength: Int32, _ body: Int32) -> Void {
    return bjs_benchmarkRunner_extern(nameBytes, nameLength, body)
}

func _$benchmarkRunner(_ name: String, _ body: JSObject) throws(JSException) -> Void {
    name.bridgeJSWithLoweredParameter { (nameBytes, nameLength) in
        let bodyValue = body.bridgeJSLowerParameter()
        bjs_benchmarkRunner(nameBytes, nameLength, bodyValue)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
}