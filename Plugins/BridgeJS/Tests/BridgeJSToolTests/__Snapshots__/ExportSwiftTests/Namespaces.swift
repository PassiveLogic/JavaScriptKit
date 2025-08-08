// NOTICE: This is auto-generated code by BridgeJS from JavaScriptKit,
// DO NOT EDIT.
//
// To update this file, just rebuild your project or run
// `swift package bridge-js`.

@_spi(BridgeJS) import JavaScriptKit

@_expose(wasm, "bjs_create")
@_cdecl("bjs_create")
public func _bjs_create() -> Void {
    #if arch(wasm32)
    var ret = create()
    return ret.withUTF8 { ptr in
        _swift_js_return_string(ptr.baseAddress, Int32(ptr.count))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_validate")
@_cdecl("bjs_validate")
public func _bjs_validate(uuidBytes: Int32, uuidLen: Int32) -> Int32 {
    #if arch(wasm32)
    let uuid = String(unsafeUninitializedCapacity: Int(uuidLen)) { b in
        _swift_js_init_memory(uuidBytes, b.baseAddress.unsafelyUnwrapped)
        return Int(uuidLen)
    }
    let ret = validate(uuid: uuid)
    return Int32(ret ? 1 : 0)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_plainFunction")
@_cdecl("bjs_plainFunction")
public func _bjs_plainFunction() -> Void {
    #if arch(wasm32)
    var ret = plainFunction()
    return ret.withUTF8 { ptr in
        _swift_js_return_string(ptr.baseAddress, Int32(ptr.count))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Greeter_init")
@_cdecl("bjs_Greeter_init")
public func _bjs_Greeter_init(nameBytes: Int32, nameLen: Int32) -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let name = String(unsafeUninitializedCapacity: Int(nameLen)) { b in
        _swift_js_init_memory(nameBytes, b.baseAddress.unsafelyUnwrapped)
        return Int(nameLen)
    }
    let ret = Greeter(name: name)
    return Unmanaged.passRetained(ret).toOpaque()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Greeter_greet")
@_cdecl("bjs_Greeter_greet")
public func _bjs_Greeter_greet(_self: UnsafeMutableRawPointer) -> Void {
    #if arch(wasm32)
    var ret = Unmanaged<Greeter>.fromOpaque(_self).takeUnretainedValue().greet()
    return ret.withUTF8 { ptr in
        _swift_js_return_string(ptr.baseAddress, Int32(ptr.count))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Greeter_changeName")
@_cdecl("bjs_Greeter_changeName")
public func _bjs_Greeter_changeName(_self: UnsafeMutableRawPointer, nameBytes: Int32, nameLen: Int32) -> Void {
    #if arch(wasm32)
    let name = String(unsafeUninitializedCapacity: Int(nameLen)) { b in
        _swift_js_init_memory(nameBytes, b.baseAddress.unsafelyUnwrapped)
        return Int(nameLen)
    }
    Unmanaged<Greeter>.fromOpaque(_self).takeUnretainedValue().changeName(name: name)
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Greeter_deinit")
@_cdecl("bjs_Greeter_deinit")
public func _bjs_Greeter_deinit(pointer: UnsafeMutableRawPointer) {
    Unmanaged<Greeter>.fromOpaque(pointer).release()
}

@_expose(wasm, "bjs_Converter_init")
@_cdecl("bjs_Converter_init")
public func _bjs_Converter_init() -> UnsafeMutableRawPointer {
    #if arch(wasm32)
    let ret = Converter()
    return Unmanaged.passRetained(ret).toOpaque()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Converter_toString")
@_cdecl("bjs_Converter_toString")
public func _bjs_Converter_toString(_self: UnsafeMutableRawPointer, value: Int32) -> Void {
    #if arch(wasm32)
    var ret = Unmanaged<Converter>.fromOpaque(_self).takeUnretainedValue().toString(value: Int(value))
    return ret.withUTF8 { ptr in
        _swift_js_return_string(ptr.baseAddress, Int32(ptr.count))
    }
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_Converter_deinit")
@_cdecl("bjs_Converter_deinit")
public func _bjs_Converter_deinit(pointer: UnsafeMutableRawPointer) {
    Unmanaged<Converter>.fromOpaque(pointer).release()
}