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

extension ExportLabeled where Self: _BridgedSwiftProtocolWrapper {
    var label: String {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_ExportLabeled_label_get(jsObjectValue)
            return String.bridgeJSLiftReturn(ret)
        }
    }
}

struct AnyExportLabeled: ExportLabeled, _BridgedSwiftProtocolWrapper {
    let jsObject: JSObject

    static func bridgeJSLiftParameter(_ value: Int32) -> Self {
        return AnyExportLabeled(jsObject: JSObject(id: UInt32(bitPattern: value)))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_ExportLabeled_label_get")
fileprivate func bjs_ExportLabeled_label_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_ExportLabeled_label_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ExportLabeled_label_get(_ jsObject: Int32) -> Int32 {
    return bjs_ExportLabeled_label_get_extern(jsObject)
}

extension ExportLabeledNode where Self: _BridgedSwiftProtocolWrapper {
    var label: String {
        get {
            let jsObjectValue = jsObject.bridgeJSLowerParameter()
            let ret = bjs_ExportLabeledNode_label_get(jsObjectValue)
            return String.bridgeJSLiftReturn(ret)
        }
    }
}

struct AnyExportLabeledNode: ExportLabeledNode, _BridgedSwiftProtocolWrapper {
    let jsObject: JSObject

    static func bridgeJSLiftParameter(_ value: Int32) -> Self {
        return AnyExportLabeledNode(jsObject: JSObject(id: UInt32(bitPattern: value)))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_ExportLabeledNode_label_get")
fileprivate func bjs_ExportLabeledNode_label_get_extern(_ jsObject: Int32) -> Int32
#else
fileprivate func bjs_ExportLabeledNode_label_get_extern(_ jsObject: Int32) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_ExportLabeledNode_label_get(_ jsObject: Int32) -> Int32 {
    return bjs_ExportLabeledNode_label_get_extern(jsObject)
}

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

#if hasFeature(Embedded)
@_expose(wasm, "bjs_storeLabeledGraphNode")
@_cdecl("bjs_storeLabeledGraphNode")
public func _bjs_storeLabeledGraphNode(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_storeLabeledGraphNode")
@_cdecl("bjs_storeLabeledGraphNode")
public func _bjs_storeLabeledGraphNode(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode & ExportLabeled).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode, ExportLabeled")
    }
    _bjs_storeLabeledGraphNode_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_storeLabeledGraphNode_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode & ExportLabeled>(_ _generic0Type: T.Type) {
    let node = T.bridgeJSStackPop()
    let ret: T = storeLabeledGraphNode(_: node)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_pairGraphNodes")
@_cdecl("bjs_pairGraphNodes")
public func _bjs_pairGraphNodes(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_pairGraphNodes")
@_cdecl("bjs_pairGraphNodes")
public func _bjs_pairGraphNodes(_ _generic0TypeId: Int32, _ _generic1TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode")
    }
    let _generic1Type = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic1TypeId)))!).takeUnretainedValue().type
    _bjs_pairGraphNodes_open1(_generic0Type, _generic1Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_pairGraphNodes_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic0Type: T.Type, _ _generic1Type: any BridgedSwiftGenericBridgeable.Type) {
    _bjs_pairGraphNodes_open2(_generic1Type, asT: T.self)
}
private func _bjs_pairGraphNodes_open2<U: BridgedSwiftGenericBridgeable, T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic1Type: U.Type, asT _generic0Type: T.Type) {
    let b = U.bridgeJSStackPop()
    let a = T.bridgeJSStackPop()
    let ret: U = pairGraphNodes(_: a, _: b)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_loadGraphNode")
@_cdecl("bjs_loadGraphNode")
public func _bjs_loadGraphNode(_ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_loadGraphNode")
@_cdecl("bjs_loadGraphNode")
public func _bjs_loadGraphNode(_ keyBytes: Int32, _ keyLength: Int32, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode")
    }
    _bjs_loadGraphNode_open1(_generic0Type, keyBytes, keyLength)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_loadGraphNode_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic0Type: T.Type, _ keyBytes: Int32, _ keyLength: Int32) {
    let key = String.bridgeJSLiftParameter(keyBytes, keyLength)
    let ret: Optional<T> = loadGraphNode(_: key)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_storeAnyLabeled")
@_cdecl("bjs_storeAnyLabeled")
public func _bjs_storeAnyLabeled(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_storeAnyLabeled")
@_cdecl("bjs_storeAnyLabeled")
public func _bjs_storeAnyLabeled(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode")
    }
    _bjs_storeAnyLabeled_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_storeAnyLabeled_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic0Type: T.Type) {
    let node = T.bridgeJSStackPop()
    let ret: T = storeAnyLabeled(_: node)
    ret.bridgeJSStackPush()
}
#endif

@_expose(wasm, "bjs_GraphRegistry_init")
@_cdecl("bjs_GraphRegistry_init")
public func _bjs_GraphRegistry_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = GraphRegistry()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GraphRegistry_register")
@_cdecl("bjs_GraphRegistry_register")
public func _bjs_GraphRegistry_register(_ _self: UnsafeMutableRawPointer, _ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GraphRegistry_register")
@_cdecl("bjs_GraphRegistry_register")
public func _bjs_GraphRegistry_register(_ _self: UnsafeMutableRawPointer, _ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode")
    }
    _bjs_GraphRegistry_register_open1(_generic0Type, _self)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GraphRegistry_register_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic0Type: T.Type, _ _self: UnsafeMutableRawPointer) {
    let node = T.bridgeJSStackPop()
    let _self = GraphRegistry.bridgeJSLiftParameter(_self)
    let ret: T = _self.register(_: node)
    ret.bridgeJSStackPush()
}
#endif

#if hasFeature(Embedded)
@_expose(wasm, "bjs_GraphRegistry_static_pin")
@_cdecl("bjs_GraphRegistry_static_pin")
public func _bjs_GraphRegistry_static_pin(_ _generic0TypeId: Int32) -> Void {
    fatalError("Generic @JS exported functions are not supported in Embedded Swift")
}
#else
@_expose(wasm, "bjs_GraphRegistry_static_pin")
@_cdecl("bjs_GraphRegistry_static_pin")
public func _bjs_GraphRegistry_static_pin(_ _generic0TypeId: Int32) -> Void {
    #if arch(wasm32)
    let _generic0TypeBase = Unmanaged<BridgeJSTypeHandle>.fromOpaque(UnsafeRawPointer(bitPattern: UInt(UInt32(bitPattern: _generic0TypeId)))!).takeUnretainedValue().type
    guard let _generic0Type = _generic0TypeBase as? any (BridgedSwiftGenericBridgeable & ExportGraphNode).Type else {
        fatalError("BridgeJS: type '\(_generic0TypeBase)' does not conform to required protocol(s): ExportGraphNode")
    }
    _bjs_GraphRegistry_static_pin_open1(_generic0Type)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}
private func _bjs_GraphRegistry_static_pin_open1<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ _generic0Type: T.Type) {
    let node = T.bridgeJSStackPop()
    let ret: T = GraphRegistry.pin(_: node)
    ret.bridgeJSStackPush()
}
#endif

@_expose(wasm, "bjs_GraphRegistry_deinit")
@_cdecl("bjs_GraphRegistry_deinit")
public func _bjs_GraphRegistry_deinit(_ pointer: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    Unmanaged<GraphRegistry>.fromOpaque(pointer).release()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension GraphRegistry: ConvertibleToJSValue, _BridgedSwiftHeapObject, _BridgedSwiftProtocolExportable {
    var jsValue: JSValue {
        return .object(JSObject(id: UInt32(bitPattern: _bjs_GraphRegistry_wrap(Unmanaged.passRetained(self).toOpaque()))))
    }
    consuming func bridgeJSLowerAsProtocolReturn() -> Int32 {
        _bjs_GraphRegistry_wrap(Unmanaged.passRetained(self).toOpaque())
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_GraphRegistry_wrap")
fileprivate func _bjs_GraphRegistry_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32
#else
fileprivate func _bjs_GraphRegistry_wrap_extern(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_GraphRegistry_wrap(_ pointer: UnsafeMutableRawPointer) -> Int32 {
    return _bjs_GraphRegistry_wrap_extern(pointer)
}

extension ExportGraphBuilding: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = ExportGraphBuilding.bridgeJSMakeTypeHandle()
}

extension GraphRegistry: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = GraphRegistry.bridgeJSMakeTypeHandle()
}

extension AnyExportLabeledNode: BridgedSwiftGenericBridgeable {
    @_spi(BridgeJS) public static let bridgeJSTypeHandle = AnyExportLabeledNode.bridgeJSMakeTypeHandle()
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "bjs_TestModule_register_type_handles")
fileprivate func _bjs_TestModule_register_type_handles_extern(_ base: UnsafePointer<Int32>?, _ count: Int32)

@_expose(wasm, "bjs_TestModule_register_type_handles")
public func _bjs_TestModule_register_type_handles() {
    let typeIds: [Int32] = [
        ExportGraphBuilding.bridgeJSTypeID,
        GraphRegistry.bridgeJSTypeID,
        AnyExportLabeledNode.bridgeJSTypeID,
    ]
    typeIds.withUnsafeBufferPointer { buffer in
        _bjs_TestModule_register_type_handles_extern(buffer.baseAddress, Int32(buffer.count))
    }
}
#endif