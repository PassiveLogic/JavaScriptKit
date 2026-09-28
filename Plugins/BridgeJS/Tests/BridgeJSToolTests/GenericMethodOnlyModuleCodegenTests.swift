import Testing

@Suite struct GenericMethodOnlyModuleCodegenTests {
    @Test
    func exportClassMethodOnlyEmitsJSRuntimeInfrastructure() throws {
        let js = try linkSource(
            """
            @JS final class OnlyBox {
                @JS init() {}
                @JS func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T { value }
            }
            """
        ).js
        #expect(js.contains("const __bjs_codecByTypeId = new Map();"))
        #expect(js.contains("const __bjs_typeIdByToken = new Map();"))
        #expect(js.contains("function __bjs_typeIdForToken(token) {"))
        #expect(js.contains("export const BridgeTypes = {"))
        #expect(js.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
    }

    @Test(arguments: [
        (
            """
            @JS final class OnlyBox {
                @JS init() {}
                @JS func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T { value }
            }
            """,
            "OnlyBox"
        ),
        (
            """
            @JS struct OnlyPair {
                @JS init() {}
                @JS func first<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T { value }
            }
            """,
            "OnlyPair"
        ),
        (
            """
            @JS enum OnlyFactory {
                case primary
                @JS static func one<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T { value }
            }
            """,
            "OnlyFactory"
        ),
    ])
    func exportMethodOnlyEmitsSwiftRuntimeInfrastructure(source: String, typeName: String) throws {
        // Handle-based identity: the entry thunk recovers the concrete type
        // straight from the incoming ID (the handle's address); there is no
        // per-module type registry dictionary.
        let swift = try renderExportGlue(source)
        #expect(swift.contains("extension \(typeName): BridgedSwiftGenericBridgeable {"))
        #expect(swift.contains("Unmanaged<BridgeJSTypeHandle>.fromOpaque("))
        #expect(!swift.contains("TypeRegistry"))
        // Generic exports depend on the handle's metatype storage, which does
        // not exist under Embedded Swift.
        #expect(swift.contains("fatalError(\"Generic @JS exported functions are not supported in Embedded Swift\")"))
    }

    @Test
    func exportMethodOnlyModuleStillRegistersTypeHandles() throws {
        // A module whose only generic declarations are exports over primitives
        // defines no bridgeable @JS types of its own, so it emits no module
        // registration hook. The primitive handles are owned by JavaScriptKit
        // and registered by the core hook, which is where the token map gets
        // populated before the first generic call.
        let js = try linkSource(
            """
            @JS public func onlyIdentity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T { value }
            """
        ).js
        #expect(js.contains("bjs[\"bjs_core_register_type_handles\"] = function(base, count) {"))
        #expect(js.contains("instance.exports[\"bjs_core_register_type_handles\"]();"))
        #expect(js.contains("__bjs_typeIdByToken.set(tokens[i], typeIds[i]);"))
        #expect(!js.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
    }

    @Test
    func importMethodOnlyEmitsJSRuntimeInfrastructure() throws {
        // A module with generic imports but no exported @JS types still needs a
        // populated codec table for the primitives; those come from the core
        // hook in JavaScriptKit rather than a per-module registration.
        let js = try linkSource(
            """
            @JSClass struct OnlyConsumer {
                @JSFunction func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
            }
            """
        ).js
        #expect(js.contains("const __bjs_codecByTypeId = new Map();"))
        #expect(js.contains("function __bjs_codecForTypeId(typeId) {"))
        #expect(js.contains("bjs[\"bjs_core_register_type_handles\"] = function(base, count) {"))
        #expect(js.contains("instance.exports[\"bjs_core_register_type_handles\"]();"))
        // No exported @JS types means no module-level registration hook.
        #expect(!js.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
    }
}
