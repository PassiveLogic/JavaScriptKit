#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_TestModule_10TestModule1TTSi_1UT")
fileprivate func invoke_js_callback_TestModule_10TestModule1TTSi_1UT_extern(_ callback: Int32, _ param1: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void
#else
fileprivate func invoke_js_callback_TestModule_10TestModule1TTSi_1UT_extern(_ callback: Int32, _ param1: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_TestModule_10TestModule1TTSi_1UT(_ callback: Int32, _ param1: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    return invoke_js_callback_TestModule_10TestModule1TTSi_1UT_extern(callback, param1, _generic0TypeId, _generic1TypeId)
}

private enum _BJS_Closure_10TestModule1TTSi_1UT {
    static func bridgeJSLift<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ callbackId: Int32, _: T.Type, _: U.Type) -> (T, Int) -> U {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0, param1) in
            #if arch(wasm32)
            let param1Value = param1.bridgeJSLowerParameter()
            param0.bridgeJSStackPush()
            let callbackValue = callback.bridgeJSLowerParameter()
            invoke_js_callback_TestModule_10TestModule1TTSi_1UT(callbackValue, param1Value, T.bridgeJSTypeID, U.bridgeJSTypeID)
            return U.bridgeJSStackPop()
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_TestModule_10TestModuleK1TT_1UT")
fileprivate func invoke_js_callback_TestModule_10TestModuleK1TT_1UT_extern(_ callback: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void
#else
fileprivate func invoke_js_callback_TestModule_10TestModuleK1TT_1UT_extern(_ callback: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_TestModule_10TestModuleK1TT_1UT(_ callback: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    return invoke_js_callback_TestModule_10TestModuleK1TT_1UT_extern(callback, _generic0TypeId, _generic1TypeId)
}

private enum _BJS_Closure_10TestModuleK1TT_1UT {
    static func bridgeJSLift<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ callbackId: Int32, _: T.Type, _: U.Type) -> (T) throws(JSException) -> U {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: T) throws(JSException) -> U in
            #if arch(wasm32)
            param0.bridgeJSStackPush()
            let callbackValue = callback.bridgeJSLowerParameter()
            invoke_js_callback_TestModule_10TestModuleK1TT_1UT(callbackValue, T.bridgeJSTypeID, U.bridgeJSTypeID)
            if let error = _swift_js_take_exception() {
                throw error
            }
            return U.bridgeJSStackPop()
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_TestModule_10TestModuleYaK1TT_1UT")
fileprivate func invoke_js_callback_TestModule_10TestModuleYaK1TT_1UT_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void
#else
fileprivate func invoke_js_callback_TestModule_10TestModuleYaK1TT_1UT_extern(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_TestModule_10TestModuleYaK1TT_1UT(_ resolveRef: Int32, _ rejectRef: Int32, _ callback: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    return invoke_js_callback_TestModule_10TestModuleYaK1TT_1UT_extern(resolveRef, rejectRef, callback, _generic0TypeId, _generic1TypeId)
}

private enum _BJS_Closure_10TestModuleYaK1TT_1UT {
    static func bridgeJSLift<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ callbackId: Int32, _: T.Type, _: U.Type) -> (T) async throws(JSException) -> U {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] (param0: T) async throws(JSException) -> U in
            #if arch(wasm32)
            let resolved = try await _bjs_awaitPromise(makeResolveClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>.sending($0)
                }, makeRejectClosure: {
                    JSTypedClosure<(sending JSValue) -> Void>.sending($0)
                }) { resolveRef, rejectRef in
                param0.bridgeJSStackPush()
                let callbackValue = callback.bridgeJSLowerParameter()
                invoke_js_callback_TestModule_10TestModuleYaK1TT_1UT(resolveRef, rejectRef, callbackValue, T.bridgeJSTypeID, U.bridgeJSTypeID)
            }
            return try _bjs_async_result_1UT(resolved)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "async_callback_result_TestModule_1UT")
fileprivate func async_callback_result_TestModule_1UT_extern(_ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64, _ _generic0TypeId: Int32) -> Void
#else
fileprivate func async_callback_result_TestModule_1UT_extern(_ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64, _ _generic0TypeId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func async_callback_result_TestModule_1UT(_ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64, _ _generic0TypeId: Int32) -> Void {
    return async_callback_result_TestModule_1UT_extern(valueKind, valuePayload1, valuePayload2, _generic0TypeId)
}

func _bjs_async_result_1UT<U: BridgedSwiftGenericBridgeable>(_ value: JSValue) throws(JSException) -> U {
    let (valueKind, valuePayload1, valuePayload2) = value.bridgeJSLowerParameter()
    async_callback_result_TestModule_1UT(valueKind, valuePayload1, valuePayload2, U.bridgeJSTypeID)
    if let error = _swift_js_take_exception() {
        throw error
    }
    return U.bridgeJSStackPop()
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_TestModule_10TestModules7JSValueV_y")
fileprivate func invoke_js_callback_TestModule_10TestModules7JSValueV_y_extern(_ callback: Int32, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void
#else
fileprivate func invoke_js_callback_TestModule_10TestModules7JSValueV_y_extern(_ callback: Int32, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_TestModule_10TestModules7JSValueV_y(_ callback: Int32, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void {
    return invoke_js_callback_TestModule_10TestModules7JSValueV_y_extern(callback, param0Kind, param0Payload1, param0Payload2)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "make_swift_closure_TestModule_10TestModules7JSValueV_y")
fileprivate func make_swift_closure_TestModule_10TestModules7JSValueV_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32
#else
fileprivate func make_swift_closure_TestModule_10TestModules7JSValueV_y_extern(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func make_swift_closure_TestModule_10TestModules7JSValueV_y(_ boxPtr: UnsafeMutableRawPointer, _ file: UnsafePointer<UInt8>, _ line: UInt32) -> Int32 {
    return make_swift_closure_TestModule_10TestModules7JSValueV_y_extern(boxPtr, file, line)
}

private enum _BJS_Closure_10TestModules7JSValueV_y {
    static func bridgeJSLift(_ callbackId: Int32) -> (sending JSValue) -> Void {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] param0 in
            #if arch(wasm32)
            let (param0Kind, param0Payload1, param0Payload2) = param0.bridgeJSLowerParameter()
            let callbackValue = callback.bridgeJSLowerParameter()
            invoke_js_callback_TestModule_10TestModules7JSValueV_y(callbackValue, param0Kind, param0Payload1, param0Payload2)
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension JSTypedClosure where Signature == (sending JSValue) -> Void {
    static func sending(fileID: StaticString = #fileID, line: UInt32 = #line, _ body: @escaping (sending JSValue) -> Void) -> Self {
        Self(
            makeClosure: make_swift_closure_TestModule_10TestModules7JSValueV_y,
            body: body,
            fileID: fileID,
            line: line
        )
    }
}

@_expose(wasm, "invoke_swift_closure_TestModule_10TestModules7JSValueV_y")
@_cdecl("invoke_swift_closure_TestModule_10TestModules7JSValueV_y")
public func _invoke_swift_closure_TestModule_10TestModules7JSValueV_y(_ boxPtr: UnsafeMutableRawPointer, _ param0Kind: Int32, _ param0Payload1: Int32, _ param0Payload2: Float64) -> Void {
    #if arch(wasm32)
    let param0 = JSValue.bridgeJSLiftParameter(param0Kind, param0Payload1, param0Payload2)
    let closure = Unmanaged<_BridgeJSTypedClosureBox<(sending JSValue) -> Void>>.fromOpaque(boxPtr).takeUnretainedValue().closure
    closure(param0)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "invoke_js_callback_TestModule_10TestModuley_1TT")
fileprivate func invoke_js_callback_TestModule_10TestModuley_1TT_extern(_ callback: Int32, _ _generic0TypeId: Int32) -> Void
#else
fileprivate func invoke_js_callback_TestModule_10TestModuley_1TT_extern(_ callback: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func invoke_js_callback_TestModule_10TestModuley_1TT(_ callback: Int32, _ _generic0TypeId: Int32) -> Void {
    return invoke_js_callback_TestModule_10TestModuley_1TT_extern(callback, _generic0TypeId)
}

private enum _BJS_Closure_10TestModuley_1TT {
    static func bridgeJSLift<T: BridgedSwiftGenericBridgeable>(_ callbackId: Int32, _: T.Type) -> () -> T {
        let callback = JSObject.bridgeJSLiftParameter(callbackId)
        return { [callback] in
            #if arch(wasm32)
            let callbackValue = callback.bridgeJSLowerParameter()
            invoke_js_callback_TestModule_10TestModuley_1TT(callbackValue, T.bridgeJSTypeID)
            return T.bridgeJSStackPop()
            #else
            fatalError("Only available on WebAssembly")
            #endif
        }
    }
}

extension ExportGraphNode where Self: _BridgedSwiftProtocolWrapper {
    var id: String {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_ExportGraphNode_id_get(jsObjectValue)
            return String.bridgeJSLiftReturn(ret)
        }
    }
}

struct AnyExportGraphNode: ExportGraphNode, _BridgedSwiftProtocolWrapper {
    let jsObject: JSObject

    static func bridgeJSLiftParameter(_ value: Int32) -> Self {
        return AnyExportGraphNode(jsObject: JSObject(id: UInt32(bitPattern: value)))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_ExportGraphNode_id_get")
fileprivate func bjs_ExportGraphNode_id_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_ExportGraphNode_id_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ExportGraphNode_id_get(_ jsObject: Int32) -> Int32 {
    return bjs_ExportGraphNode_id_get_extern(jsObject)
}

extension GenericFactory: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> GenericFactory {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> GenericFactory {
        return GenericFactory(bridgeJSRawValue: value)!
    }
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerReturn() -> Int32 {
        return bridgeJSLowerParameter()
    }

    @_spi(BridgeJS) @usableFromInline init?(bridgeJSRawValue: Int32) {
        switch bridgeJSRawValue {
        case 0:
            self = .primary
        default:
            return nil
        }
    }

    @_spi(BridgeJS) @usableFromInline var bridgeJSRawValue: Int32 {
        switch self {
        case .primary:
            return 0
        }
    }
}

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericFactory_static_one")
@_cdecl("bjs_GenericFactory_static_one")
public func _bjs_GenericFactory_static_one(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericFactory_static_one")
@_cdecl("bjs_GenericFactory_static_one")
public func _bjs_GenericFactory_static_one(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericFactory_static_one_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericFactory_static_one_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let ret: T = GenericFactory.one(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericNamespace_static_make")
@_cdecl("bjs_GenericNamespace_static_make")
public func _bjs_GenericNamespace_static_make(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericNamespace_static_make")
@_cdecl("bjs_GenericNamespace_static_make")
public func _bjs_GenericNamespace_static_make(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericNamespace_static_make_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericNamespace_static_make_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let ret: T = GenericNamespace.make(_: value)
    ret.bridgeJSStackPush()
}
#endif

extension ExportPoint: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> ExportPoint {
        let y = Int.bridgeJSStackPop()
        let x = Int.bridgeJSStackPop()
        return ExportPoint(x: x, y: y)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.x.bridgeJSStackPush()
        self.y.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_ExportPoint(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_ExportPoint()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_ExportPoint")
fileprivate func _bjs_struct_lower_ExportPoint_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_ExportPoint_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_ExportPoint(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_ExportPoint_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_ExportPoint")
fileprivate func _bjs_struct_lift_ExportPoint_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_ExportPoint_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_ExportPoint() -> Int32 {
    return _bjs_struct_lift_ExportPoint_extern()
}

extension GenericPair: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> GenericPair {
        return GenericPair()
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_GenericPair(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_GenericPair()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_GenericPair")
fileprivate func _bjs_struct_lower_GenericPair_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_GenericPair_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_GenericPair(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_GenericPair_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_GenericPair")
fileprivate func _bjs_struct_lift_GenericPair_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_GenericPair_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_GenericPair() -> Int32 {
    return _bjs_struct_lift_GenericPair_extern()
}

@_expose(wasm, "bjs_GenericPair_init")
@_cdecl("bjs_GenericPair_init")
public func _bjs_GenericPair_init() -> Void {
    #if arch(wasm32)
    let ret = GenericPair()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericPair_static_wrap")
@_cdecl("bjs_GenericPair_static_wrap")
public func _bjs_GenericPair_static_wrap(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_static_wrap")
@_cdecl("bjs_GenericPair_static_wrap")
public func _bjs_GenericPair_static_wrap(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericPair_static_wrap_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_static_wrap_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let ret: [T] = GenericPair.wrap(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericPair_summarize")
@_cdecl("bjs_GenericPair_summarize")
public func _bjs_GenericPair_summarize(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_summarize")
@_cdecl("bjs_GenericPair_summarize")
public func _bjs_GenericPair_summarize(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    do {
        try _bjs_GenericPair_summarize_open1(_generic0Type)
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
        return
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_summarize_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) throws(JSException) {
    let values = Array<T>.bridgeJSStackPop()
    let _self = GenericPair.bridgeJSLiftParameter()
    let ret = try _self.summary(_: values)
    return ret.bridgeJSLowerReturn()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericPair_map")
@_cdecl("bjs_GenericPair_map")
public func _bjs_GenericPair_map(_ transform: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_map")
@_cdecl("bjs_GenericPair_map")
public func _bjs_GenericPair_map(_ transform: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_GenericPair_map_open1(_generic0Type, _generic1Type, transform)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_map_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type, _ transform: Int32) {
    _bjs_GenericPair_map_open2(_generic1Type, asT: T.self, transform)
}
private func _bjs_GenericPair_map_open2<U: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: U.Type, asT _generic0Type: T.Type, _ transform: Int32) {
    let transform = _BJS_Closure_10TestModule1TTSi_1UT.bridgeJSLift(transform, T.self, U.self)
    let values = Array<T>.bridgeJSStackPop()
    let _self = GenericPair.bridgeJSLiftParameter()
    let ret: [U] = _self.map(_: values, _: transform)
    ret.bridgeJSStackPush()
}
#endif

extension ExportGraphBuilding: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> ExportGraphBuilding {
        let floors = Int.bridgeJSStackPop()
        let id = String.bridgeJSStackPop()
        return ExportGraphBuilding(id: id, floors: floors)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.id.bridgeJSStackPush()
        self.floors.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_ExportGraphBuilding(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_ExportGraphBuilding()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_ExportGraphBuilding")
fileprivate func _bjs_struct_lower_ExportGraphBuilding_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_ExportGraphBuilding_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_ExportGraphBuilding(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_ExportGraphBuilding_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_ExportGraphBuilding")
fileprivate func _bjs_struct_lift_ExportGraphBuilding_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_ExportGraphBuilding_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_ExportGraphBuilding() -> Int32 {
    return _bjs_struct_lift_ExportGraphBuilding_extern()
}

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportIdentity")
@_cdecl("bjs_genericExportIdentity")
public func _bjs_genericExportIdentity(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportIdentity")
@_cdecl("bjs_genericExportIdentity")
public func _bjs_genericExportIdentity(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportIdentity_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportIdentity_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let ret: T = genericExportIdentity(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportContainers")
@_cdecl("bjs_genericExportContainers")
public func _bjs_genericExportContainers(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportContainers")
@_cdecl("bjs_genericExportContainers")
public func _bjs_genericExportContainers(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportContainers_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportContainers_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let dictionary = Dictionary<String, T>.bridgeJSStackPop()
    let optional = Optional<T>.bridgeJSStackPop()
    let values = Array<T>.bridgeJSStackPop()
    let ret: [String: T] = genericExportContainers(_: values, _: optional, _: dictionary)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportTransform")
@_cdecl("bjs_genericExportTransform")
public func _bjs_genericExportTransform(_ transform: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportTransform")
@_cdecl("bjs_genericExportTransform")
public func _bjs_genericExportTransform(_ transform: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    do {
        try _bjs_genericExportTransform_open1(_generic0Type, _generic1Type, transform)
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
        return
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportTransform_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type, _ transform: Int32) throws(JSException) {
    try _bjs_genericExportTransform_open2(_generic1Type, asT: T.self, transform)
}
private func _bjs_genericExportTransform_open2<U: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: U.Type, asT _generic0Type: T.Type, _ transform: Int32) throws(JSException) {
    let transform = _BJS_Closure_10TestModuleK1TT_1UT.bridgeJSLift(transform, T.self, U.self)
    let value = T.bridgeJSStackPop()
    let ret: U = try genericExportTransform(_: value, _: transform)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportTransformAsync")
@_cdecl("bjs_genericExportTransformAsync")
public func _bjs_genericExportTransformAsync(_ transform: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Int32 {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportTransformAsync")
@_cdecl("bjs_genericExportTransformAsync")
public func _bjs_genericExportTransformAsync(_ transform: Int32, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Int32 {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    return _bjs_genericExportTransformAsync_open1(_generic0Type, _generic1Type, transform)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportTransformAsync_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type, _ transform: Int32) -> Int32 {
    return _bjs_genericExportTransformAsync_open2(_generic1Type, asT: T.self, transform)
}
private func _bjs_genericExportTransformAsync_open2<U: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: U.Type, asT _generic0Type: T.Type, _ transform: Int32) -> Int32 {
    let transform = _BJS_Closure_10TestModuleYaK1TT_1UT.bridgeJSLift(transform, T.self, U.self)
    let value = T.bridgeJSStackPop()
    return _bjs_makePromise(resolve: Promise_resolve_1UT, reject: Promise_reject) { () async throws(JSException) -> U in
        return try await genericExportTransformAsync(_: value, _: transform)
    }
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportLoad")
@_cdecl("bjs_genericExportLoad")
public func _bjs_genericExportLoad(_ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportLoad")
@_cdecl("bjs_genericExportLoad")
public func _bjs_genericExportLoad(_ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportLoad_open1(_generic0Type, keyBytes, keyLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportLoad_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ keyBytes: Int32, _ keyLength: Int32) {
    let key = String.bridgeJSLiftParameter(keyBytes, keyLength)
    let ret: Optional<T> = genericExportLoad(_: key)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportStructAndScalar")
@_cdecl("bjs_genericExportStructAndScalar")
public func _bjs_genericExportStructAndScalar(_ tag: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportStructAndScalar")
@_cdecl("bjs_genericExportStructAndScalar")
public func _bjs_genericExportStructAndScalar(_ tag: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportStructAndScalar_open1(_generic0Type, tag)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportStructAndScalar_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ tag: Int32) {
    let v = T.bridgeJSStackPop()
    let tag = Int.bridgeJSLiftParameter(tag)
    let p = ExportPoint.bridgeJSLiftParameter()
    let ret: T = genericExportStructAndScalar(_: p, tag: tag, _: v)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportCaseDistinct")
@_cdecl("bjs_genericExportCaseDistinct")
public func _bjs_genericExportCaseDistinct(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportCaseDistinct")
@_cdecl("bjs_genericExportCaseDistinct")
public func _bjs_genericExportCaseDistinct(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportCaseDistinct_open1(_generic0Type, _generic1Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportCaseDistinct_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type) {
    _bjs_genericExportCaseDistinct_open2(_generic1Type, asT: T.self)
}
private func _bjs_genericExportCaseDistinct_open2<t: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: t.Type, asT _generic0Type: T.Type) {
    let b = t.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let ret: T = genericExportCaseDistinct(_: a, _: b)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_storeGraphNode")
@_cdecl("bjs_storeGraphNode")
public func _bjs_storeGraphNode(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_storeGraphNode")
@_cdecl("bjs_storeGraphNode")
public func _bjs_storeGraphNode(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode")
    }
    _bjs_storeGraphNode_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_storeGraphNode_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic0Type: T.Type) {
    let node = T.bridgeJSStackPop()
    let ret: T = storeGraphNode(_: node)
    ret.bridgeJSStackPush()
}
#endif

@_expose(wasm, "bjs_GenericBox_init")
@_cdecl("bjs_GenericBox_init")
public func _bjs_GenericBox_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = GenericBox()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericBox_wrap")
@_cdecl("bjs_GenericBox_wrap")
public func _bjs_GenericBox_wrap(_ _self: UnsafeMutableRawPointer, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericBox_wrap")
@_cdecl("bjs_GenericBox_wrap")
public func _bjs_GenericBox_wrap(_ _self: UnsafeMutableRawPointer, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericBox_wrap_open1(_generic0Type, _self)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericBox_wrap_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _self: UnsafeMutableRawPointer) {
    let value = T.bridgeJSStackPop()
    let _self = GenericBox.bridgeJSLiftParameter(_self)
    let ret: T = _self.wrap(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericBox_static_produce")
@_cdecl("bjs_GenericBox_static_produce")
public func _bjs_GenericBox_static_produce(_ body: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericBox_static_produce")
@_cdecl("bjs_GenericBox_static_produce")
public func _bjs_GenericBox_static_produce(_ body: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericBox_static_produce_open1(_generic0Type, body)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericBox_static_produce_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ body: Int32) {
    let body = _BJS_Closure_10TestModuley_1TT.bridgeJSLift(body, T.self)
    let ret: T = GenericBox.produce(_: body)
    ret.bridgeJSStackPush()
}
#endif

@_expose(wasm, "bjs_GenericBox_deinit")
@_cdecl("bjs_GenericBox_deinit")
public func _bjs_GenericBox_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<GenericBox>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension GenericBox: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_GenericBox_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_GenericBox_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_GenericBox_wrap")
fileprivate func _bjs_GenericBox_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_GenericBox_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_GenericBox_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_GenericBox_wrap_extern(pointer)
}

extension ExportPoint: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportPoint.bridgeJSMakeTypeHandle()
}

extension GenericPair: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GenericPair.bridgeJSMakeTypeHandle()
}

extension ExportGraphBuilding: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportGraphBuilding.bridgeJSMakeTypeHandle()
}

extension GenericBox: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GenericBox.bridgeJSMakeTypeHandle()
}

extension GenericFactory: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GenericFactory.bridgeJSMakeTypeHandle()
}

extension AnyExportGraphNode: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = AnyExportGraphNode.bridgeJSMakeTypeHandle()
}

@JSFunction func Promise_reject(_ promise: JSObject, _ value: JSValue) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_reject_TestModule")
fileprivate func promise_reject_TestModule_extern(_ promise: Int32, _ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64) -> Void
#else
fileprivate func promise_reject_TestModule_extern(_ promise: Int32, _ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_reject_TestModule(_ promise: Int32, _ valueKind: Int32, _ valuePayload1: Int32, _ valuePayload2: Float64) -> Void {
    return promise_reject_TestModule_extern(promise, valueKind, valuePayload1, valuePayload2)
}

func _$Promise_reject(_ promise: JSObject, _ value: JSValue) throws(JSException) -> Void {
    let (valueKind, valuePayload1, valuePayload2) = value.bridgeJSLowerParameter()
    let promiseValue = promise.bridgeJSLowerParameter()
    promise_reject_TestModule(promiseValue, valueKind, valuePayload1, valuePayload2)
    if let error = _swift_js_take_exception() { throw error }
}

@JSFunction func Promise_resolve_1UT<U: BridgedSwiftGenericBridgeable>(_ promise: JSObject, _ value: U) throws(JSException)

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "promise_resolve_TestModule_1UT")
fileprivate func promise_resolve_TestModule_1UT_extern(_ promise: Int32, _ _generic0TypeId: Int32) -> Void
#else
fileprivate func promise_resolve_TestModule_1UT_extern(_ promise: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func promise_resolve_TestModule_1UT(_ promise: Int32, _ _generic0TypeId: Int32) -> Void {
    return promise_resolve_TestModule_1UT_extern(promise, _generic0TypeId)
}

func _$Promise_resolve_1UT<U: BridgedSwiftGenericBridgeable>(_ promise: JSObject, _ value: U) throws(JSException) -> Void {
    value.bridgeJSStackPush()
    let promiseValue = promise.bridgeJSLowerParameter()
    promise_resolve_TestModule_1UT(promiseValue, U.bridgeJSTypeID)
    if let error = _swift_js_take_exception() { throw error }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "bjs_TestModule_register_type_handles")
fileprivate func _bjs_TestModule_register_type_handles_extern(_ base: UnsafePointer<Int32>?, _ count: Int32)

@_expose(wasm, "bjs_TestModule_register_type_handles")
public func _bjs_TestModule_register_type_handles() {
    let typeIds: [Int32] = [
        ExportPoint.bridgeJSTypeID,
        GenericPair.bridgeJSTypeID,
        ExportGraphBuilding.bridgeJSTypeID,
        GenericBox.bridgeJSTypeID,
        GenericFactory.bridgeJSTypeID,
        AnyExportGraphNode.bridgeJSTypeID,
    ]
    typeIds.withUnsafeBufferPointer { buffer in
        _bjs_TestModule_register_type_handles_extern(buffer.baseAddress, Int32(buffer.count))
    }
}
#endif