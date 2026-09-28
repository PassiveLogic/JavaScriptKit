extension ExportNamespace.Level: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension ExportMode: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension ExportColor: _BridgedSwiftCaseEnum {
    @_spi(BridgeJS) @_transparent public consuming func bridgeJSLowerParameter() -> Int32 {
        return bridgeJSRawValue
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftReturn(_ value: Int32) -> ExportColor {
        return bridgeJSLiftParameter(value)
    }
    @_spi(BridgeJS) @_transparent public static func bridgeJSLiftParameter(_ value: Int32) -> ExportColor {
        return ExportColor(bridgeJSRawValue: value)!
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
        }
    }
}

extension ExportTagged: _BridgedSwiftAssociatedValueEnum {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPopPayload(_ caseId: Int32) -> ExportTagged {
        switch caseId {
        case 0:
            return .number(value: Int.bridgeJSStackPop())
        case 1:
            return .text(value: String.bridgeJSStackPop())
        default:
            fatalError("Unknown ExportTagged case ID: \(caseId)")
        }
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPushPayload() -> Int32 {
        switch self {
        case .number(let value):
            value.bridgeJSStackPush()
            return Int32(0)
        case .text(let value):
            value.bridgeJSStackPush()
            return Int32(1)
        }
    }
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

extension ExportNamespace.Metadata: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> ExportNamespace.Metadata {
        let count = Int.bridgeJSStackPop()
        let label = String.bridgeJSStackPop()
        return ExportNamespace.Metadata(label: label, count: count)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.label.bridgeJSStackPush()
        self.count.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_ExportNamespace_Metadata(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_ExportNamespace_Metadata()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_ExportNamespace_Metadata")
fileprivate func _bjs_struct_lower_ExportNamespace_Metadata_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_ExportNamespace_Metadata_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_ExportNamespace_Metadata(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_ExportNamespace_Metadata_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_ExportNamespace_Metadata")
fileprivate func _bjs_struct_lift_ExportNamespace_Metadata_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_ExportNamespace_Metadata_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_ExportNamespace_Metadata() -> Int32 {
    return _bjs_struct_lift_ExportNamespace_Metadata_extern()
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
@_expose(wasm, "bjs_GenericPair_first")
@_cdecl("bjs_GenericPair_first")
public func _bjs_GenericPair_first(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_first")
@_cdecl("bjs_GenericPair_first")
public func _bjs_GenericPair_first(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericPair_first_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_first_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let _self = GenericPair.bridgeJSLiftParameter()
    let ret: T = _self.first(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericPair_combine")
@_cdecl("bjs_GenericPair_combine")
public func _bjs_GenericPair_combine(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_combine")
@_cdecl("bjs_GenericPair_combine")
public func _bjs_GenericPair_combine(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_GenericPair_combine_open1(_generic0Type, _generic1Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_combine_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type) {
    _bjs_GenericPair_combine_open2(_generic1Type, asT: T.self)
}
private func _bjs_GenericPair_combine_open2<t: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: t.Type, asT _generic0Type: T.Type) {
    let b = t.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let _self = GenericPair.bridgeJSLiftParameter()
    let ret: T = _self.combine(_: a, _: b)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericPair_maybe")
@_cdecl("bjs_GenericPair_maybe")
public func _bjs_GenericPair_maybe(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_maybe")
@_cdecl("bjs_GenericPair_maybe")
public func _bjs_GenericPair_maybe(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericPair_maybe_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_maybe_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let _self = GenericPair.bridgeJSLiftParameter()
    let ret: Optional<T> = _self.maybe(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericPair_dict")
@_cdecl("bjs_GenericPair_dict")
public func _bjs_GenericPair_dict(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericPair_dict")
@_cdecl("bjs_GenericPair_dict")
public func _bjs_GenericPair_dict(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericPair_dict_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericPair_dict_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let _self = GenericPair.bridgeJSLiftParameter()
    let ret: [String: T] = _self.dict(_: value)
    ret.bridgeJSStackPush()
}
#endif

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
@_expose(wasm, "bjs_genericExportArray")
@_cdecl("bjs_genericExportArray")
public func _bjs_genericExportArray(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportArray")
@_cdecl("bjs_genericExportArray")
public func _bjs_genericExportArray(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportArray_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportArray_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let values = Array<T>.bridgeJSStackPop()
    let ret: [T] = genericExportArray(_: values)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportOptional")
@_cdecl("bjs_genericExportOptional")
public func _bjs_genericExportOptional(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportOptional")
@_cdecl("bjs_genericExportOptional")
public func _bjs_genericExportOptional(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportOptional_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportOptional_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = Optional<T>.bridgeJSStackPop()
    let ret: Optional<T> = genericExportOptional(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportDictionary")
@_cdecl("bjs_genericExportDictionary")
public func _bjs_genericExportDictionary(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportDictionary")
@_cdecl("bjs_genericExportDictionary")
public func _bjs_genericExportDictionary(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportDictionary_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportDictionary_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let values = Dictionary<String, T>.bridgeJSStackPop()
    let ret: [String: T] = genericExportDictionary(_: values)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportEcho")
@_cdecl("bjs_genericExportEcho")
public func _bjs_genericExportEcho(_ tag: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportEcho")
@_cdecl("bjs_genericExportEcho")
public func _bjs_genericExportEcho(_ tag: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportEcho_open1(_generic0Type, tag)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportEcho_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ tag: Int32) {
    let tag = Int.bridgeJSLiftParameter(tag)
    let value = T.bridgeJSStackPop()
    let ret: T = genericExportEcho(_: value, tag: tag)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportStore")
@_cdecl("bjs_genericExportStore")
public func _bjs_genericExportStore(_ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportStore")
@_cdecl("bjs_genericExportStore")
public func _bjs_genericExportStore(_ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportStore_open1(_generic0Type, keyBytes, keyLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportStore_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ keyBytes: Int32, _ keyLength: Int32) {
    let value = T.bridgeJSStackPop()
    let key = String.bridgeJSLiftParameter(keyBytes, keyLength)
    genericExportStore(_: key, _: value)
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
@_expose(wasm, "bjs_genericExportStructConcreteLeading")
@_cdecl("bjs_genericExportStructConcreteLeading")
public func _bjs_genericExportStructConcreteLeading(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportStructConcreteLeading")
@_cdecl("bjs_genericExportStructConcreteLeading")
public func _bjs_genericExportStructConcreteLeading(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportStructConcreteLeading_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportStructConcreteLeading_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let p = ExportPoint.bridgeJSLiftParameter()
    let v = T.bridgeJSStackPop()
    let ret: T = genericExportStructConcreteLeading(_: v, _: p)
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
@_expose(wasm, "bjs_genericExportPair")
@_cdecl("bjs_genericExportPair")
public func _bjs_genericExportPair(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportPair")
@_cdecl("bjs_genericExportPair")
public func _bjs_genericExportPair(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportPair_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportPair_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let b = T.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let ret: T = genericExportPair(_: a, _: b)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportCombine")
@_cdecl("bjs_genericExportCombine")
public func _bjs_genericExportCombine(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportCombine")
@_cdecl("bjs_genericExportCombine")
public func _bjs_genericExportCombine(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportCombine_open1(_generic0Type, _generic1Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportCombine_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type) {
    _bjs_genericExportCombine_open2(_generic1Type, asT: T.self)
}
private func _bjs_genericExportCombine_open2<U: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: U.Type, asT _generic0Type: T.Type) {
    let b = U.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let ret: T = genericExportCombine(_: a, _: b)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_genericExportCombineReturnU")
@_cdecl("bjs_genericExportCombineReturnU")
public func _bjs_genericExportCombineReturnU(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_genericExportCombineReturnU")
@_cdecl("bjs_genericExportCombineReturnU")
public func _bjs_genericExportCombineReturnU(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_genericExportCombineReturnU_open1(_generic0Type, _generic1Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_genericExportCombineReturnU_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type) {
    _bjs_genericExportCombineReturnU_open2(_generic1Type, asT: T.self)
}
private func _bjs_genericExportCombineReturnU_open2<U: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: U.Type, asT _generic0Type: T.Type) {
    let b = U.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let ret: U = genericExportCombineReturnU(_: a, _: b)
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

@_expose(wasm, "bjs_ExportBox_init")
@_cdecl("bjs_ExportBox_init")
public func _bjs_ExportBox_init(_ value: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let value = Int.bridgeJSLiftParameter(value)
    let ret = ExportBox(value: value)
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ExportBox_get")
@_cdecl("bjs_ExportBox_get")
public func _bjs_ExportBox_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let _self = ExportBox.bridgeJSLiftParameter(_self)
    let ret = _self.get()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ExportBox_value_get")
@_cdecl("bjs_ExportBox_value_get")
public func _bjs_ExportBox_value_get(_ _self: UnsafeMutableRawPointer) -> Int32 {
    #if arch(wasm32)
    let _self = ExportBox.bridgeJSLiftParameter(_self)
    let ret = _self.value
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ExportBox_value_set")
@_cdecl("bjs_ExportBox_value_set")
public func _bjs_ExportBox_value_set(_ _self: UnsafeMutableRawPointer, _ value: Int32) -> Void {
    #if arch(wasm32)
    let value = Int.bridgeJSLiftParameter(value)
    let _self = ExportBox.bridgeJSLiftParameter(_self)
    _self.value = value
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ExportBox_deinit")
@_cdecl("bjs_ExportBox_deinit")
public func _bjs_ExportBox_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<ExportBox>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension ExportBox: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_ExportBox_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_ExportBox_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_ExportBox_wrap")
fileprivate func _bjs_ExportBox_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_ExportBox_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_ExportBox_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_ExportBox_wrap_extern(pointer)
}

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
@_expose(wasm, "bjs_GenericBox_combine")
@_cdecl("bjs_GenericBox_combine")
public func _bjs_GenericBox_combine(_ _self: UnsafeMutableRawPointer, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericBox_combine")
@_cdecl("bjs_GenericBox_combine")
public func _bjs_GenericBox_combine(_ _self: UnsafeMutableRawPointer, _ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_GenericBox_combine_open1(_generic0Type, _generic1Type, _self)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericBox_combine_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type, _ _self: UnsafeMutableRawPointer) {
    _bjs_GenericBox_combine_open2(_generic1Type, asT: T.self, _self)
}
private func _bjs_GenericBox_combine_open2<t: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable>(_ _generic1Type: t.Type, asT _generic0Type: T.Type, _ _self: UnsafeMutableRawPointer) {
    let b = t.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let _self = GenericBox.bridgeJSLiftParameter(_self)
    let ret: T = _self.combine(_: a, _: b)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericBox_static_makeArray")
@_cdecl("bjs_GenericBox_static_makeArray")
public func _bjs_GenericBox_static_makeArray(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericBox_static_makeArray")
@_cdecl("bjs_GenericBox_static_makeArray")
public func _bjs_GenericBox_static_makeArray(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericBox_static_makeArray_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericBox_static_makeArray_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type) {
    let value = T.bridgeJSStackPop()
    let ret: [T] = GenericBox.makeArray(_: value)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GenericBox_load")
@_cdecl("bjs_GenericBox_load")
public func _bjs_GenericBox_load(_ _self: UnsafeMutableRawPointer, _ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GenericBox_load")
@_cdecl("bjs_GenericBox_load")
public func _bjs_GenericBox_load(_ _self: UnsafeMutableRawPointer, _ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    _bjs_GenericBox_load_open1(_generic0Type, _self, keyBytes, keyLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GenericBox_load_open1<T: BridgedSwiftGenericBridgeable>(_ _generic0Type: T.Type, _ _self: UnsafeMutableRawPointer, _ keyBytes: Int32, _ keyLength: Int32) {
    let key = String.bridgeJSLiftParameter(keyBytes, keyLength)
    let _self = GenericBox.bridgeJSLiftParameter(_self)
    let ret: Optional<T> = _self.load(_: key)
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

@_expose(wasm, "bjs_ExportGenericNamespace_Handle_init")
@_cdecl("bjs_ExportGenericNamespace_Handle_init")
public func _bjs_ExportGenericNamespace_Handle_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = ExportGenericNamespace.Handle()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_ExportGenericNamespace_Handle_deinit")
@_cdecl("bjs_ExportGenericNamespace_Handle_deinit")
public func _bjs_ExportGenericNamespace_Handle_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<ExportGenericNamespace.Handle>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension ExportGenericNamespace.Handle: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_ExportGenericNamespace_Handle_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_ExportGenericNamespace_Handle_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_ExportGenericNamespace_Handle_wrap")
fileprivate func _bjs_ExportGenericNamespace_Handle_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_ExportGenericNamespace_Handle_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_ExportGenericNamespace_Handle_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_ExportGenericNamespace_Handle_wrap_extern(pointer)
}

extension ExportPoint: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportPoint.bridgeJSMakeTypeHandle()
}

extension ExportNamespace.Metadata: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportNamespace.Metadata.bridgeJSMakeTypeHandle()
}

extension GenericPair: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GenericPair.bridgeJSMakeTypeHandle()
}

extension ExportBox: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportBox.bridgeJSMakeTypeHandle()
}

extension GenericBox: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GenericBox.bridgeJSMakeTypeHandle()
}

extension ExportGenericNamespace.Handle: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportGenericNamespace.Handle.bridgeJSMakeTypeHandle()
}

extension ExportNamespace.Level: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportNamespace.Level.bridgeJSMakeTypeHandle()
}

extension ExportMode: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportMode.bridgeJSMakeTypeHandle()
}

extension ExportColor: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportColor.bridgeJSMakeTypeHandle()
}

extension ExportTagged: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportTagged.bridgeJSMakeTypeHandle()
}

extension GenericFactory: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GenericFactory.bridgeJSMakeTypeHandle()
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "bjs_TestModule_register_type_handles")
fileprivate func _bjs_TestModule_register_type_handles_extern(_ base: UnsafePointer<Int32>?, _ count: Int32)

@_expose(wasm, "bjs_TestModule_register_type_handles")
public func _bjs_TestModule_register_type_handles() {
    let typeIds: [Int32] = [
        ExportPoint.bridgeJSTypeID,
        ExportNamespace.Metadata.bridgeJSTypeID,
        GenericPair.bridgeJSTypeID,
        ExportBox.bridgeJSTypeID,
        GenericBox.bridgeJSTypeID,
        ExportGenericNamespace.Handle.bridgeJSTypeID,
        ExportNamespace.Level.bridgeJSTypeID,
        ExportMode.bridgeJSTypeID,
        ExportColor.bridgeJSTypeID,
        ExportTagged.bridgeJSTypeID,
        GenericFactory.bridgeJSTypeID,
    ]
    typeIds.withUnsafeBufferPointer { buffer in
        _bjs_TestModule_register_type_handles_extern(buffer.baseAddress, Int32(buffer.count))
    }
}
#endif