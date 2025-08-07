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