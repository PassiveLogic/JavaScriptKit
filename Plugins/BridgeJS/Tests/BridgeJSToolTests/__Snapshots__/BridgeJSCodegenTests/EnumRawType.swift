extension TestModule.Theme: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.TSTheme: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.FeatureFlag: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.HttpStatus: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.TSHttpStatus: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Priority: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.FileSize: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.UserId: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.TokenId: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.SessionId: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Precision: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

extension TestModule.Ratio: _BridgedSwiftEnumNoPayload, _BridgedSwiftRawValueEnum {
}

@_expose(wasm, "bjs_TestModule_setTheme")
@_cdecl("bjs_TestModule_setTheme")
public func _bjs_TestModule_setTheme(_ themeBytes: Int32, _ themeLength: Int32) -> Void {
    #if arch(wasm32)
    setTheme(_: TestModule.Theme.bridgeJSLiftParameter(themeBytes, themeLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getTheme")
@_cdecl("bjs_TestModule_getTheme")
public func _bjs_TestModule_getTheme() -> Void {
    #if arch(wasm32)
    let ret = getTheme()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalTheme")
@_cdecl("bjs_TestModule_roundTripOptionalTheme")
public func _bjs_TestModule_roundTripOptionalTheme(_ inputIsSome: Int32, _ inputBytes: Int32, _ inputLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalTheme(_: Optional<TestModule.Theme>.bridgeJSLiftParameter(inputIsSome, inputBytes, inputLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setTSTheme")
@_cdecl("bjs_TestModule_setTSTheme")
public func _bjs_TestModule_setTSTheme(_ themeBytes: Int32, _ themeLength: Int32) -> Void {
    #if arch(wasm32)
    setTSTheme(_: TestModule.TSTheme.bridgeJSLiftParameter(themeBytes, themeLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getTSTheme")
@_cdecl("bjs_TestModule_getTSTheme")
public func _bjs_TestModule_getTSTheme() -> Void {
    #if arch(wasm32)
    let ret = getTSTheme()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalTSTheme")
@_cdecl("bjs_TestModule_roundTripOptionalTSTheme")
public func _bjs_TestModule_roundTripOptionalTSTheme(_ inputIsSome: Int32, _ inputBytes: Int32, _ inputLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalTSTheme(_: Optional<TestModule.TSTheme>.bridgeJSLiftParameter(inputIsSome, inputBytes, inputLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setFeatureFlag")
@_cdecl("bjs_TestModule_setFeatureFlag")
public func _bjs_TestModule_setFeatureFlag(_ flagBytes: Int32, _ flagLength: Int32) -> Void {
    #if arch(wasm32)
    setFeatureFlag(_: TestModule.FeatureFlag.bridgeJSLiftParameter(flagBytes, flagLength))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getFeatureFlag")
@_cdecl("bjs_TestModule_getFeatureFlag")
public func _bjs_TestModule_getFeatureFlag() -> Void {
    #if arch(wasm32)
    let ret = getFeatureFlag()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalFeatureFlag")
@_cdecl("bjs_TestModule_roundTripOptionalFeatureFlag")
public func _bjs_TestModule_roundTripOptionalFeatureFlag(_ inputIsSome: Int32, _ inputBytes: Int32, _ inputLength: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalFeatureFlag(_: Optional<TestModule.FeatureFlag>.bridgeJSLiftParameter(inputIsSome, inputBytes, inputLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setHttpStatus")
@_cdecl("bjs_TestModule_setHttpStatus")
public func _bjs_TestModule_setHttpStatus(_ status: Int32) -> Void {
    #if arch(wasm32)
    setHttpStatus(_: TestModule.HttpStatus.bridgeJSLiftParameter(status))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getHttpStatus")
@_cdecl("bjs_TestModule_getHttpStatus")
public func _bjs_TestModule_getHttpStatus() -> Int32 {
    #if arch(wasm32)
    let ret = getHttpStatus()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalHttpStatus")
@_cdecl("bjs_TestModule_roundTripOptionalHttpStatus")
public func _bjs_TestModule_roundTripOptionalHttpStatus(_ inputIsSome: Int32, _ inputValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalHttpStatus(_: Optional<TestModule.HttpStatus>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setTSHttpStatus")
@_cdecl("bjs_TestModule_setTSHttpStatus")
public func _bjs_TestModule_setTSHttpStatus(_ status: Int32) -> Void {
    #if arch(wasm32)
    setTSHttpStatus(_: TestModule.TSHttpStatus.bridgeJSLiftParameter(status))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getTSHttpStatus")
@_cdecl("bjs_TestModule_getTSHttpStatus")
public func _bjs_TestModule_getTSHttpStatus() -> Int32 {
    #if arch(wasm32)
    let ret = getTSHttpStatus()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalHttpStatus")
@_cdecl("bjs_TestModule_roundTripOptionalHttpStatus")
public func _bjs_TestModule_roundTripOptionalHttpStatus(_ inputIsSome: Int32, _ inputValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalHttpStatus(_: Optional<TestModule.TSHttpStatus>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setPriority")
@_cdecl("bjs_TestModule_setPriority")
public func _bjs_TestModule_setPriority(_ priority: Int32) -> Void {
    #if arch(wasm32)
    setPriority(_: TestModule.Priority.bridgeJSLiftParameter(priority))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getPriority")
@_cdecl("bjs_TestModule_getPriority")
public func _bjs_TestModule_getPriority() -> Int32 {
    #if arch(wasm32)
    let ret = getPriority()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalPriority")
@_cdecl("bjs_TestModule_roundTripOptionalPriority")
public func _bjs_TestModule_roundTripOptionalPriority(_ inputIsSome: Int32, _ inputValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalPriority(_: Optional<TestModule.Priority>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setFileSize")
@_cdecl("bjs_TestModule_setFileSize")
public func _bjs_TestModule_setFileSize(_ size: Int64) -> Void {
    #if arch(wasm32)
    setFileSize(_: TestModule.FileSize.bridgeJSLiftParameter(size))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getFileSize")
@_cdecl("bjs_TestModule_getFileSize")
public func _bjs_TestModule_getFileSize() -> Int64 {
    #if arch(wasm32)
    let ret = getFileSize()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalFileSize")
@_cdecl("bjs_TestModule_roundTripOptionalFileSize")
public func _bjs_TestModule_roundTripOptionalFileSize(_ inputIsSome: Int32, _ inputValue: Int64) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalFileSize(_: Optional<TestModule.FileSize>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setUserId")
@_cdecl("bjs_TestModule_setUserId")
public func _bjs_TestModule_setUserId(_ id: Int32) -> Void {
    #if arch(wasm32)
    setUserId(_: TestModule.UserId.bridgeJSLiftParameter(id))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getUserId")
@_cdecl("bjs_TestModule_getUserId")
public func _bjs_TestModule_getUserId() -> Int32 {
    #if arch(wasm32)
    let ret = getUserId()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalUserId")
@_cdecl("bjs_TestModule_roundTripOptionalUserId")
public func _bjs_TestModule_roundTripOptionalUserId(_ inputIsSome: Int32, _ inputValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalUserId(_: Optional<TestModule.UserId>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setTokenId")
@_cdecl("bjs_TestModule_setTokenId")
public func _bjs_TestModule_setTokenId(_ token: Int32) -> Void {
    #if arch(wasm32)
    setTokenId(_: TestModule.TokenId.bridgeJSLiftParameter(token))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getTokenId")
@_cdecl("bjs_TestModule_getTokenId")
public func _bjs_TestModule_getTokenId() -> Int32 {
    #if arch(wasm32)
    let ret = getTokenId()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalTokenId")
@_cdecl("bjs_TestModule_roundTripOptionalTokenId")
public func _bjs_TestModule_roundTripOptionalTokenId(_ inputIsSome: Int32, _ inputValue: Int32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalTokenId(_: Optional<TestModule.TokenId>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setSessionId")
@_cdecl("bjs_TestModule_setSessionId")
public func _bjs_TestModule_setSessionId(_ session: Int64) -> Void {
    #if arch(wasm32)
    setSessionId(_: TestModule.SessionId.bridgeJSLiftParameter(session))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getSessionId")
@_cdecl("bjs_TestModule_getSessionId")
public func _bjs_TestModule_getSessionId() -> Int64 {
    #if arch(wasm32)
    let ret = getSessionId()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalSessionId")
@_cdecl("bjs_TestModule_roundTripOptionalSessionId")
public func _bjs_TestModule_roundTripOptionalSessionId(_ inputIsSome: Int32, _ inputValue: Int64) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalSessionId(_: Optional<TestModule.SessionId>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setPrecision")
@_cdecl("bjs_TestModule_setPrecision")
public func _bjs_TestModule_setPrecision(_ precision: Float32) -> Void {
    #if arch(wasm32)
    setPrecision(_: TestModule.Precision.bridgeJSLiftParameter(precision))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getPrecision")
@_cdecl("bjs_TestModule_getPrecision")
public func _bjs_TestModule_getPrecision() -> Float32 {
    #if arch(wasm32)
    let ret = getPrecision()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalPrecision")
@_cdecl("bjs_TestModule_roundTripOptionalPrecision")
public func _bjs_TestModule_roundTripOptionalPrecision(_ inputIsSome: Int32, _ inputValue: Float32) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalPrecision(_: Optional<TestModule.Precision>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_setRatio")
@_cdecl("bjs_TestModule_setRatio")
public func _bjs_TestModule_setRatio(_ ratio: Float64) -> Void {
    #if arch(wasm32)
    setRatio(_: TestModule.Ratio.bridgeJSLiftParameter(ratio))
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_getRatio")
@_cdecl("bjs_TestModule_getRatio")
public func _bjs_TestModule_getRatio() -> Float64 {
    #if arch(wasm32)
    let ret = getRatio()
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_roundTripOptionalRatio")
@_cdecl("bjs_TestModule_roundTripOptionalRatio")
public func _bjs_TestModule_roundTripOptionalRatio(_ inputIsSome: Int32, _ inputValue: Float64) -> Void {
    #if arch(wasm32)
    let ret = roundTripOptionalRatio(_: Optional<TestModule.Ratio>.bridgeJSLiftParameter(inputIsSome, inputValue))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_processTheme")
@_cdecl("bjs_TestModule_processTheme")
public func _bjs_TestModule_processTheme(_ themeBytes: Int32, _ themeLength: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = processTheme(_: TestModule.Theme.bridgeJSLiftParameter(themeBytes, themeLength))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_convertPriority")
@_cdecl("bjs_TestModule_convertPriority")
public func _bjs_TestModule_convertPriority(_ status: Int32) -> Int32 {
    #if arch(wasm32)
    let ret = convertPriority(_: TestModule.HttpStatus.bridgeJSLiftParameter(status))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

@_expose(wasm, "bjs_TestModule_validateSession")
@_cdecl("bjs_TestModule_validateSession")
public func _bjs_TestModule_validateSession(_ session: Int64) -> Void {
    #if arch(wasm32)
    let ret = validateSession(_: TestModule.SessionId.bridgeJSLiftParameter(session))
    return ret.bridgeJSLowerReturn()
    #else
    fatalError("Only available on WebAssembly")
    #endif
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_takesFeatureFlag")
fileprivate func bjs_takesFeatureFlag_extern(_ flagBytes: Int32, _ flagLength: Int32) -> Void
#else
fileprivate func bjs_takesFeatureFlag_extern(_ flagBytes: Int32, _ flagLength: Int32) -> Void {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_takesFeatureFlag(_ flagBytes: Int32, _ flagLength: Int32) -> Void {
    return bjs_takesFeatureFlag_extern(flagBytes, flagLength)
}

func _$takesFeatureFlag(_ flag: TestModule.FeatureFlag) throws(JSException) -> Void {
    flag.bridgeJSWithLoweredParameter { (flagBytes, flagLength) in
        bjs_takesFeatureFlag(flagBytes, flagLength)
    }
    if let error = _swift_js_take_exception() {
        throw error
    }
}

#if arch(wasm32)
@_extern(wasm, module: "TestModule", name: "bjs_returnsFeatureFlag")
fileprivate func bjs_returnsFeatureFlag_extern() -> Int32
#else
fileprivate func bjs_returnsFeatureFlag_extern() -> Int32 {
    fatalError("Only available on WebAssembly")
}
#endif
@inline(never) fileprivate func bjs_returnsFeatureFlag() -> Int32 {
    return bjs_returnsFeatureFlag_extern()
}

func _$returnsFeatureFlag() throws(JSException) -> TestModule.FeatureFlag {
    let ret = bjs_returnsFeatureFlag()
    if let error = _swift_js_take_exception() {
        throw error
    }
    return TestModule.FeatureFlag.bridgeJSLiftReturn(ret)
}