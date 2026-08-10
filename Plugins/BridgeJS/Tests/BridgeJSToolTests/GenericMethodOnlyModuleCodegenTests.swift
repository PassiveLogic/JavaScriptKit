import Testing

@Suite struct GenericMethodOnlyModuleCodegenTests {
    @Test
    func importMethodOnlyEmitsJSRuntimeInfrastructure() throws {
        // A module with generic imports but no exported @JS types still needs a
        // populated codec table for the primitives, so it registers them itself.
        let js = try linkSource(
            """
            @JSClass struct OnlyConsumer {
                @JSFunction func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
            }
            """
        ).js
        #expect(js.contains("const __bjs_codecByTypeId = new Map();"))
        #expect(js.contains("function __bjs_codecForTypeId(typeId) {"))
        #expect(js.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
        #expect(js.contains("instance.exports[\"bjs_TestModule_register_type_handles\"]();"))
    }

    @Test
    func importConstructorOnlyEmitsJSRuntimeInfrastructure() throws {
        // A generic initializer alone must switch the generic runtime on: its
        // thunk calls __bjs_codecForTypeId, so a module whose only generic
        // declaration is an initializer would otherwise emit a call to a
        // function that was never defined.
        let js = try linkSource(
            """
            @JSClass struct OnlyBoxed {
                @JSFunction init<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException)
            }
            """
        ).js
        #expect(js.contains("const __bjs_codecByTypeId = new Map();"))
        #expect(js.contains("function __bjs_codecForTypeId(typeId) {"))
        #expect(js.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
        #expect(js.contains("instance.exports[\"bjs_TestModule_register_type_handles\"]();"))
    }
}
