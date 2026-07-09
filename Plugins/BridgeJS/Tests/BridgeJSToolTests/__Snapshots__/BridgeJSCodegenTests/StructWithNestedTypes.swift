extension TestModule.Shape.Kind: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Widget.Variant: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Widget.Layout.Alignment: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Shape: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Shape {
        let label = String.bridgeJSStackPop()
        return TestModule.Shape(label: label)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.label.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Shape(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Shape()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Shape")
fileprivate func _bjs_struct_lower_TestModule_Shape_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Shape_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Shape(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Shape_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Shape")
fileprivate func _bjs_struct_lift_TestModule_Shape_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Shape_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Shape() -> Int32 {
    return _bjs_struct_lift_TestModule_Shape_extern()
}

@_expose(wasm, "bjs_TestModule_Shape_init")
@_cdecl("bjs_TestModule_Shape_init")
public func _bjs_TestModule_Shape_init(_ labelBytes: Int32, _ labelLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Shape(label: String.bridgeJSLiftParameter(labelBytes, labelLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Widget: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Widget {
        let name = String.bridgeJSStackPop()
        return TestModule.Widget(name: name)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.name.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Widget(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Widget()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Widget")
fileprivate func _bjs_struct_lower_TestModule_Widget_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Widget_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Widget(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Widget_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Widget")
fileprivate func _bjs_struct_lift_TestModule_Widget_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Widget_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Widget() -> Int32 {
    return _bjs_struct_lift_TestModule_Widget_extern()
}

@_expose(wasm, "bjs_TestModule_Widget_init")
@_cdecl("bjs_TestModule_Widget_init")
public func _bjs_TestModule_Widget_init(_ nameBytes: Int32, _ nameLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Widget(name: String.bridgeJSLiftParameter(nameBytes, nameLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

extension TestModule.Widget.Layout: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Widget.Layout {
        let padding = Int.bridgeJSStackPop()
        return TestModule.Widget.Layout(padding: padding)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.padding.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Widget_Layout(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Widget_Layout()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Widget_Layout")
fileprivate func _bjs_struct_lower_TestModule_Widget_Layout_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Widget_Layout_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Widget_Layout(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Widget_Layout_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Widget_Layout")
fileprivate func _bjs_struct_lift_TestModule_Widget_Layout_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Widget_Layout_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Widget_Layout() -> Int32 {
    return _bjs_struct_lift_TestModule_Widget_Layout_extern()
}

extension TestModule.Widget.Bounds: _BridgedSwiftStruct {
    @_spi(BridgeJS) @_transparent public static func bridgeJSStackPop() -> TestModule.Widget.Bounds {
        let height = Int.bridgeJSStackPop()
        let width = Int.bridgeJSStackPop()
        return TestModule.Widget.Bounds(width: width, height: height)
    }

    @_spi(BridgeJS) @_transparent public consuming func bridgeJSStackPush() {
        self.width.bridgeJSStackPush()
        self.height.bridgeJSStackPush()
    }

    init(unsafelyCopying jsObject: JSObject) {
        _bjs_struct_lower_TestModule_Widget_Bounds(jsObject.bridgeJSLowerParameter())
        self = Self.bridgeJSStackPop()
    }

    func toJSObject() -> JSObject {
        let __bjs_self = self
        __bjs_self.bridgeJSStackPush()
        return JSObject(id: UInt32(bitPattern: _bjs_struct_lift_TestModule_Widget_Bounds()))
    }
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lower_TestModule_Widget_Bounds")
fileprivate func _bjs_struct_lower_TestModule_Widget_Bounds_extern(_ objectId: Int32) -> Void
#else
fileprivate func _bjs_struct_lower_TestModule_Widget_Bounds_extern(_ objectId: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lower_TestModule_Widget_Bounds(_ objectId: Int32) -> Void {
    return _bjs_struct_lower_TestModule_Widget_Bounds_extern(objectId)
}

#if arch(wasm32)
@_extern(wasm, module: "bjs", name: "swift_js_struct_lift_TestModule_Widget_Bounds")
fileprivate func _bjs_struct_lift_TestModule_Widget_Bounds_extern() -> Int32
#else
fileprivate func _bjs_struct_lift_TestModule_Widget_Bounds_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func _bjs_struct_lift_TestModule_Widget_Bounds() -> Int32 {
    return _bjs_struct_lift_TestModule_Widget_Bounds_extern()
}

@_expose(wasm, "bjs_TestModule_Widget_Bounds_init")
@_cdecl("bjs_TestModule_Widget_Bounds_init")
public func _bjs_TestModule_Widget_Bounds_init(_ width: Int32, _ height: Int32) -> Void {
    #if arch(wasm32)
    let ret = TestModule.Widget.Bounds(width: Int.bridgeJSLiftParameter(width), height: Int.bridgeJSLiftParameter(height))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Widget_Bounds_static_dimensions_get")
@_cdecl("bjs_TestModule_Widget_Bounds_static_dimensions_get")
public func _bjs_TestModule_Widget_Bounds_static_dimensions_get() -> Int32 {
    #if arch(wasm32)
    let ret = TestModule.Widget.Bounds.dimensions
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_Widget_Bounds_static_zero")
@_cdecl("bjs_TestModule_Widget_Bounds_static_zero")
public func _bjs_TestModule_Widget_Bounds_static_zero() -> Void {
    #if arch(wasm32)
    let ret = TestModule.Widget.Bounds.zero()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}