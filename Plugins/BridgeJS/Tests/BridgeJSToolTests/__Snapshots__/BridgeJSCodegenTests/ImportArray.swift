#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_roundtrip")
fileprivate func bjs_roundtrip_extern() -> Void
#else
fileprivate func bjs_roundtrip_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_roundtrip() -> Void {
    return bjs_roundtrip_extern()
}

func _$roundtrip(_ items: [Int]) throws(JSException) -> [Int] {
    items.bridgeJSTypedArrayPush()
    bjs_roundtrip()
    if let error = _swift_js_take_exception() {
        throw error
    }
    let _count = _swift_js_pop_i32()
    let _sourceId = _swift_js_pop_i32()
    return [Int].bridgeJSTypedArrayLiftParameter(_sourceId, _count)
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_logStrings")
fileprivate func bjs_logStrings_extern() -> Void
#else
fileprivate func bjs_logStrings_extern() -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_logStrings() -> Void {
    return bjs_logStrings_extern()
}

func _$logStrings(_ items: [String]) throws(JSException) -> Void {
    let _ = items.bridgeJSLowerParameter()
    bjs_logStrings()
    if let error = _swift_js_take_exception() {
        throw error
    }
}