extension TestModule.Direction: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> TestModule.Direction {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> TestModule.Direction {
        return TestModule.Direction(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .north
        case 1:
            self = .south
        case 2:
            self = .east
        case 3:
            self = .west
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .north:
            return 0
        case .south:
            return 1
        case .east:
            return 2
        case .west:
            return 3
        }
    }
}

extension TestModule.Status: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
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

@_expose(wasm, "bjs_TestModule_processIntArray")
@_cdecl("bjs_TestModule_processIntArray")
public func _bjs_TestModule_processIntArray() -> Void {
    #if arch(wasm32)
    let ret = processIntArray(_: [Int].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processStringArray")
@_cdecl("bjs_TestModule_processStringArray")
public func _bjs_TestModule_processStringArray() -> Void {
    #if arch(wasm32)
    let ret = processStringArray(_: [String].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processDoubleArray")
@_cdecl("bjs_TestModule_processDoubleArray")
public func _bjs_TestModule_processDoubleArray() -> Void {
    #if arch(wasm32)
    let ret = processDoubleArray(_: [Double].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processBoolArray")
@_cdecl("bjs_TestModule_processBoolArray")
public func _bjs_TestModule_processBoolArray() -> Void {
    #if arch(wasm32)
    let ret = processBoolArray(_: [Bool].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processPointArray")
@_cdecl("bjs_TestModule_processPointArray")
public func _bjs_TestModule_processPointArray() -> Void {
    #if arch(wasm32)
    let ret = processPointArray(_: [TestModule.Point].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processDirectionArray")
@_cdecl("bjs_TestModule_processDirectionArray")
public func _bjs_TestModule_processDirectionArray() -> Void {
    #if arch(wasm32)
    let ret = processDirectionArray(_: [TestModule.Direction].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processStatusArray")
@_cdecl("bjs_TestModule_processStatusArray")
public func _bjs_TestModule_processStatusArray() -> Void {
    #if arch(wasm32)
    let ret = processStatusArray(_: [TestModule.Status].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_sumIntArray")
@_cdecl("bjs_TestModule_sumIntArray")
public func _bjs_TestModule_sumIntArray() -> Int32 {
    #if arch(wasm32)
    let ret = sumIntArray(_: [Int].bridgeJSStackPop())
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_findFirstPoint")
@_cdecl("bjs_TestModule_findFirstPoint")
public func _bjs_TestModule_findFirstPoint(_ matchingBytes: Int32, _ matchingLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = findFirstPoint(_: [TestModule.Point].bridgeJSStackPop(), matching: String.bridgeJSLiftParameter(matchingBytes, matchingLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processUnsafeRawPointerArray")
@_cdecl("bjs_TestModule_processUnsafeRawPointerArray")
public func _bjs_TestModule_processUnsafeRawPointerArray() -> Void {
    #if arch(wasm32)
    let ret = processUnsafeRawPointerArray(_: [UnsafeRawPointer].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processUnsafeMutableRawPointerArray")
@_cdecl("bjs_TestModule_processUnsafeMutableRawPointerArray")
public func _bjs_TestModule_processUnsafeMutableRawPointerArray() -> Void {
    #if arch(wasm32)
    let ret = processUnsafeMutableRawPointerArray(_: [UnsafeMutableRawPointer].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOpaquePointerArray")
@_cdecl("bjs_TestModule_processOpaquePointerArray")
public func _bjs_TestModule_processOpaquePointerArray() -> Void {
    #if arch(wasm32)
    let ret = processOpaquePointerArray(_: [OpaquePointer].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalIntArray")
@_cdecl("bjs_TestModule_processOptionalIntArray")
public func _bjs_TestModule_processOptionalIntArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalIntArray(_: [Optional<Int>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalStringArray")
@_cdecl("bjs_TestModule_processOptionalStringArray")
public func _bjs_TestModule_processOptionalStringArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalStringArray(_: [Optional<String>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalArray")
@_cdecl("bjs_TestModule_processOptionalArray")
public func _bjs_TestModule_processOptionalArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalArray(_: Optional<[Int]>.bridgeJSLiftParameter())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalPointArray")
@_cdecl("bjs_TestModule_processOptionalPointArray")
public func _bjs_TestModule_processOptionalPointArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalPointArray(_: [Optional<TestModule.Point>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalDirectionArray")
@_cdecl("bjs_TestModule_processOptionalDirectionArray")
public func _bjs_TestModule_processOptionalDirectionArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalDirectionArray(_: [Optional<TestModule.Direction>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalStatusArray")
@_cdecl("bjs_TestModule_processOptionalStatusArray")
public func _bjs_TestModule_processOptionalStatusArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalStatusArray(_: [Optional<TestModule.Status>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processNestedIntArray")
@_cdecl("bjs_TestModule_processNestedIntArray")
public func _bjs_TestModule_processNestedIntArray() -> Void {
    #if arch(wasm32)
    let ret = processNestedIntArray(_: [[Int]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processNestedStringArray")
@_cdecl("bjs_TestModule_processNestedStringArray")
public func _bjs_TestModule_processNestedStringArray() -> Void {
    #if arch(wasm32)
    let ret = processNestedStringArray(_: [[String]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processNestedPointArray")
@_cdecl("bjs_TestModule_processNestedPointArray")
public func _bjs_TestModule_processNestedPointArray() -> Void {
    #if arch(wasm32)
    let ret = processNestedPointArray(_: [[TestModule.Point]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processItemArray")
@_cdecl("bjs_TestModule_processItemArray")
public func _bjs_TestModule_processItemArray() -> Void {
    #if arch(wasm32)
    let ret = processItemArray(_: [TestModule.Item].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processNestedItemArray")
@_cdecl("bjs_TestModule_processNestedItemArray")
public func _bjs_TestModule_processNestedItemArray() -> Void {
    #if arch(wasm32)
    let ret = processNestedItemArray(_: [[TestModule.Item]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processJSObjectArray")
@_cdecl("bjs_TestModule_processJSObjectArray")
public func _bjs_TestModule_processJSObjectArray() -> Void {
    #if arch(wasm32)
    let ret = processJSObjectArray(_: [JSObject].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processOptionalJSObjectArray")
@_cdecl("bjs_TestModule_processOptionalJSObjectArray")
public func _bjs_TestModule_processOptionalJSObjectArray() -> Void {
    #if arch(wasm32)
    let ret = processOptionalJSObjectArray(_: [Optional<JSObject>].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processNestedJSObjectArray")
@_cdecl("bjs_TestModule_processNestedJSObjectArray")
public func _bjs_TestModule_processNestedJSObjectArray() -> Void {
    #if arch(wasm32)
    let ret = processNestedJSObjectArray(_: [[JSObject]].bridgeJSStackPop())
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_multiArrayParams")
@_cdecl("bjs_TestModule_multiArrayParams")
public func _bjs_TestModule_multiArrayParams() -> Int32 {
    #if arch(wasm32)
    let _tmp_strs = [String].bridgeJSStackPop()
    let _tmp_nums = [Int].bridgeJSStackPop()
    let ret = multiArrayParams(nums: _tmp_nums, strs: _tmp_strs)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_multiOptionalArrayParams")
@_cdecl("bjs_TestModule_multiOptionalArrayParams")
public func _bjs_TestModule_multiOptionalArrayParams() -> Int32 {
    #if arch(wasm32)
    let _tmp_b = Optional<[String]>.bridgeJSLiftParameter()
    let _tmp_a = Optional<[Int]>.bridgeJSLiftParameter()
    let ret = multiOptionalArrayParams(a: _tmp_a, b: _tmp_b)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Item_deinit")
@_cdecl("bjs_TestModule_Item_deinit")
public func _bjs_TestModule_Item_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.Item>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Item: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_Item_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_Item_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_Item_wrap")
fileprivate func _bjs_TestModule_Item_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_Item_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_Item_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_Item_wrap_extern(pointer)
}

@_expose(wasm, "bjs_TestModule_MultiArrayContainer_init")
@_cdecl("bjs_TestModule_MultiArrayContainer_init")
public func _bjs_TestModule_MultiArrayContainer_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let _tmp_strs = [String].bridgeJSStackPop()
    let _tmp_nums = [Int].bridgeJSStackPop()
    let ret = TestModule.MultiArrayContainer(nums: _tmp_nums, strs: _tmp_strs)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MultiArrayContainer_numbers_get")
@_cdecl("bjs_TestModule_MultiArrayContainer_numbers_get")
public func _bjs_TestModule_MultiArrayContainer_numbers_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.MultiArrayContainer.bridgeJSLiftParameter(_self).numbers
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MultiArrayContainer_strings_get")
@_cdecl("bjs_TestModule_MultiArrayContainer_strings_get")
public func _bjs_TestModule_MultiArrayContainer_strings_get(_ _self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    let ret = TestModule.MultiArrayContainer.bridgeJSLiftParameter(_self).strings
    ret.bridgeJSStackPush()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_MultiArrayContainer_deinit")
@_cdecl("bjs_TestModule_MultiArrayContainer_deinit")
public func _bjs_TestModule_MultiArrayContainer_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<TestModule.MultiArrayContainer>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.MultiArrayContainer: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_TestModule_MultiArrayContainer_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_TestModule_MultiArrayContainer_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_TestModule_MultiArrayContainer_wrap")
fileprivate func _bjs_TestModule_MultiArrayContainer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_TestModule_MultiArrayContainer_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_TestModule_MultiArrayContainer_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_TestModule_MultiArrayContainer_wrap_extern(pointer)
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_checkArray")
fileprivate func bjs_checkArray_extern(_ a: Int32) -> Void
#else
fileprivate func bjs_checkArray_extern(_ a: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_checkArray(_ a: Int32) -> Void {
    return bjs_checkArray_extern(a)
}

func _$checkArray(_ a: JSObject) throws(JSException) -> Void {
    let aValue = a.bridgeJSLowerParameter()
    bjs_checkArray(aValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_checkArrayWithLength")
fileprivate func bjs_checkArrayWithLength_extern(_ a: Int32, _ b: Float64) -> Void
#else
fileprivate func bjs_checkArrayWithLength_extern(_ a: Int32, _ b: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_checkArrayWithLength(_ a: Int32, _ b: Float64) -> Void {
    return bjs_checkArrayWithLength_extern(a, b)
}

func _$checkArrayWithLength(_ a: JSObject, _ b: Double) throws(JSException) -> Void {
    let aValue = a.bridgeJSLowerParameter()
    let bValue = b.bridgeJSLowerParameter()
    bjs_checkArrayWithLength(aValue, bValue)
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_importProcessNumbers")
fileprivate func bjs_importProcessNumbers_extern() -> Void
#else
fileprivate func bjs_importProcessNumbers_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_importProcessNumbers() -> Void {
    return bjs_importProcessNumbers_extern()
}

func _$importProcessNumbers(_ values: [Double]) throws(JSException) -> Void {
    let _ = values.bridgeJSLowerParameter()
    bjs_importProcessNumbers()
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_importGetNumbers")
fileprivate func bjs_importGetNumbers_extern() -> Void
#else
fileprivate func bjs_importGetNumbers_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_importGetNumbers() -> Void {
    return bjs_importGetNumbers_extern()
}

func _$importGetNumbers() throws(JSException) -> [Double] {
    bjs_importGetNumbers()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Double].bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_importTransformNumbers")
fileprivate func bjs_importTransformNumbers_extern() -> Void
#else
fileprivate func bjs_importTransformNumbers_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_importTransformNumbers() -> Void {
    return bjs_importTransformNumbers_extern()
}

func _$importTransformNumbers(_ values: [Double]) throws(JSException) -> [Double] {
    let _ = values.bridgeJSLowerParameter()
    bjs_importTransformNumbers()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Double].bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_importProcessStrings")
fileprivate func bjs_importProcessStrings_extern() -> Void
#else
fileprivate func bjs_importProcessStrings_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_importProcessStrings() -> Void {
    return bjs_importProcessStrings_extern()
}

func _$importProcessStrings(_ values: [String]) throws(JSException) -> [String] {
    let _ = values.bridgeJSLowerParameter()
    bjs_importProcessStrings()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [String].bridgeJSLiftReturn()
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_importProcessBooleans")
fileprivate func bjs_importProcessBooleans_extern() -> Void
#else
fileprivate func bjs_importProcessBooleans_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_importProcessBooleans() -> Void {
    return bjs_importProcessBooleans_extern()
}

func _$importProcessBooleans(_ values: [Bool]) throws(JSException) -> [Bool] {
    let _ = values.bridgeJSLowerParameter()
    bjs_importProcessBooleans()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return [Bool].bridgeJSLiftReturn()
}