import Foundation
import Testing

@testable import BridgeJSCore
@testable import BridgeJSLink
@testable import BridgeJSSkeleton

@Suite struct GenericExportDiagnosticsTests {

    @Test(arguments: [
        (
            "@JS public func identity<T>(_ value: T) -> T { value }",
            "Generic parameter 'T' must be constrained to 'BridgedSwiftGenericBridgeable'"
        ),
        (
            "@JS public func tag<T: BridgedSwiftGenericBridgeable>(_ value: T, label: Int = 5) -> T { value }",
            "Default parameter values are not supported on generic @JS functions."
        ),
        (
            """
            @JS protocol GraphNode { var id: String { get } }
            @JS public func store<T: GraphNode>(_ node: T) -> T { node }
            """,
            "Generic parameter 'T' is missing the 'BridgedSwiftGenericBridgeable' constraint. "
                + "Write 'T: BridgedSwiftGenericBridgeable & GraphNode'"
        ),
        (
            "@JS public func store<T: BridgedSwiftGenericBridgeable & Nonexistent>(_ node: T) -> T { node }",
            "Generic parameter 'T' has unsupported constraint 'Nonexistent'"
        ),
        (
            "@JS public func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T where T: Sendable { value }",
            "'where' clauses are not supported"
        ),
        (
            "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: [[T]]) {}",
            "may only be used as a bare type"
        ),
        (
            "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> [[T]] { [[v]] }",
            "may only be used as a bare type"
        ),
        (
            "@JS public func combine<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ a: T) -> T { a }",
            "must be used in at least one parameter or the return type"
        ),
        (
            """
            @JS enum E {
                case a
                @JS func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> T { v }
            }
            """,
            "Only static functions are supported in enums"
        ),
    ])
    func unsupportedGenericExport(source: String, message: String) {
        expectDiagnostic(source: source, contains: message)
    }

    @Test(arguments: [
        ("func map<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T", "Generic requirements"),
        ("func link(_ other: any Node) -> any Node", "Protocol-valued requirements"),
        ("var parent: Optional<any Node> { get }", "Protocol-valued requirements"),
    ])
    func unsupportedProtocolRequirement(requirement: String, message: String) {
        expectDiagnostic(
            source: """
                @JS protocol Node: BridgedSwiftGenericBridgeable { \(requirement) }
                """,
            contains: message
        )
    }

    @Test(arguments: ["class", "struct"])
    func unsupportedGenericInitializer(kind: String) {
        expectDiagnostic(
            source: "@JS \(kind) Box { @JS init<T: BridgedSwiftGenericBridgeable>(_ value: T) {} }",
            contains: "Generic @JS initializers are not supported."
        )
    }

    @Test
    func sameNamedJSProtocolsAcrossModulesFailTheLink() throws {
        let moduleA = try makeSkeleton(
            """
            @JS protocol GraphNode { var id: String { get } }
            @JS public struct Building: GraphNode {
                public var id: String
                @JS public init(id: String) { self.id = id }
            }
            """,
            moduleName: "ModuleA"
        )
        let moduleB = try makeSkeleton(
            """
            @JS protocol GraphNode { var label: String { get } }
            @JS public func store<T: BridgedSwiftGenericBridgeable & GraphNode>(_ n: T) -> T { n }
            """,
            moduleName: "ModuleB"
        )
        var link = BridgeJSLink()
        let encoder = JSONEncoder()
        try link.addSkeletonFile(data: encoder.encode(moduleA))
        try link.addSkeletonFile(data: encoder.encode(moduleB))
        #expect(throws: BridgeJSLinkError.self) {
            _ = try link.link()
        }
    }

    @Test
    func crossModuleExtensionConformanceReachesTokenConformances() throws {
        let moduleA = try makeSkeleton(
            """
            @JS public struct Building {
                public var id: String
                @JS public init(id: String) { self.id = id }
            }
            @JS(namespace: "Models") public struct Site {
                public var id: String
                @JS public init(id: String) { self.id = id }
            }
            """,
            moduleName: "ModuleA"
        )
        let moduleB = try makeSkeleton(
            """
            @JS protocol GraphNode { var id: String { get } }
            extension Building: GraphNode {}
            extension Site: GraphNode {}
            @JS public func store<T: BridgedSwiftGenericBridgeable & GraphNode>(_ n: T) -> T { n }
            """,
            moduleName: "ModuleB",
            dependencies: [(moduleName: "ModuleA", skeleton: moduleA)]
        )
        var link = BridgeJSLink()
        let encoder = JSONEncoder()
        try link.addSkeletonFile(data: encoder.encode(moduleA))
        try link.addSkeletonFile(data: encoder.encode(moduleB))
        let js = try link.link().outputJs
        #expect(
            js.contains(
                #"const __bjs_tokenConformances = { "Building": ["GraphNode"], "Models_Site": ["GraphNode"] };"#
            )
        )
    }

    @Test
    func inheritedBridgeabilityRegistersProtocolAdapter() throws {
        let source = """
            @JS protocol Base: BridgedSwiftGenericBridgeable { var id: String { get } }
            @JS protocol Node: Base {}
            @JS func identity<T: Node>(_ value: T) -> T { value }
            @JS func read(_ value: any Node) -> String { value.id }
            """
        let linked = try BridgeJSLink(skeletons: [makeSkeleton(source)]).link()
        #expect(linked.outputJs.contains(#""Node": ["Node", "Base"]"#))
        #expect(linked.outputDts.contains("Node: BridgeType<Node>"))
    }

    @Test(arguments: [
        "@JS func f<T: BridgedSwiftGenericBridgeable>(_ body: @Sendable (T) -> Bool) {}",
        "@JS func f<T: BridgedSwiftGenericBridgeable>(_ body: inout (T) -> T) { body = { $0 } }",
        "@JS func f<T: BridgedSwiftGenericBridgeable>(_ body: (T, inout Int) -> Bool) {}",
        "@JS func f<T: BridgedSwiftGenericBridgeable>(_ value: T) -> (T) -> Bool { fatalError() }",
        "@JS func f<T: BridgedSwiftGenericBridgeable>(_ body: ((T) -> Bool) -> T) {}",
    ])
    func unsupportedGenericCallback(source: String) {
        expectDiagnostic(source: source, contains: "Generic callbacks")
    }

    @Test
    func extensionDeclaredConformanceReachesTokenConformances() throws {
        let skeleton = try makeSkeleton(
            """
            @JS protocol GraphNode { var id: String { get } }
            @JS struct Building { var id: String }
            extension Building: GraphNode {}
            @JS public func store<T: BridgedSwiftGenericBridgeable & GraphNode>(_ node: T) -> T { node }
            """
        )
        let structDef = try #require(skeleton.exported?.structs.first { $0.name == "Building" })
        #expect(structDef.conformedJSProtocols == ["GraphNode"])
    }

}
