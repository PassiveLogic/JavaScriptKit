import Foundation
import Testing

@testable import BridgeJSCore
@testable import BridgeJSLink
@testable import BridgeJSSkeleton

@Suite struct GenericExportDiagnosticsTests {

    @Test
    func genericParameterRequiresBridgeableConstraint() {
        expectDiagnostic(
            source: """
                @JS public func identity<T>(_ value: T) -> T { value }
                """,
            contains: "Generic parameter 'T' must be constrained to 'BridgedSwiftGenericBridgeable'"
        )
    }

    @Test
    func genericProtocolRequirementIsRejectedWithTargetedDiagnostic() {
        // Falls through to "Unsupported type 'T'" without the early check.
        expectDiagnostic(
            source: """
                @JS protocol Mapper {
                    func map<T: BridgedSwiftGenericBridgeable>(_ v: T) -> T
                }
                """,
            contains: "Generic requirements are not supported on @JS protocols yet."
        )
    }

    @Test
    func genericExportedInitializerIsRejectedWithTargetedDiagnostic() {
        // Falls through to "Unsupported type 'T'" without the early check;
        // imported generic initializers work, so users will try this spelling.
        expectDiagnostic(
            source: """
                @JS class Box {
                    @JS init<T: BridgedSwiftGenericBridgeable>(_ value: T) {}
                }
                """,
            contains: "Generic initializers are not supported on exported @JS types yet."
        )
    }

    @Test
    func defaultParameterValueOnGenericExportIsRejected() {
        // The JS wrapper appends required BridgeType token parameters after the
        // declared ones, so a defaulted parameter could never be omitted.
        expectDiagnostic(
            source: """
                @JS public func tag<T: BridgedSwiftGenericBridgeable>(_ value: T, label: Int = 5) -> T { value }
                """,
            contains: "Default parameter values are not supported on generic @JS functions."
        )
    }

    @Test
    func refinedProtocolConformerSatisfiesBaseConstraint() throws {
        // Swift accepts a conformer of a refined protocol for a constraint on
        // the base protocol, so the JS-side token conformance map must agree:
        // the link layer closes conformance sets over protocol refinement.
        let (js, _) = try linkSource(
            """
            @JS protocol Base { var id: String { get } }
            @JS protocol Refined: Base { var label: String { get } }
            @JS struct Building: Refined {
                var id: String
                var label: String
            }
            @JS public func store<T: BridgedSwiftGenericBridgeable & Base>(_ node: T) -> T { node }
            """
        )
        #expect(js.contains(#"const __bjs_tokenConformances = { "Building": ["Refined", "Base"] };"#))
    }

    @Test
    func qualifiedExternalConstraintKeepsItsSpellingInTheExportThunk() throws {
        // The generated Swift generic clause must use the constraint as
        // written (`GraphKit.Node`), while the JS-side check keys on the bare
        // protocol name.
        let graphKit = try makeSkeleton(
            """
            @JS public protocol Node { var id: String { get } }
            """,
            moduleName: "GraphKit"
        )
        let app = try makeSkeleton(
            """
            import GraphKit
            @JS public func store<T: BridgedSwiftGenericBridgeable & GraphKit.Node>(_ n: T) -> T { n }
            """,
            moduleName: "App",
            dependencies: [(moduleName: "GraphKit", skeleton: graphKit)]
        )
        let exported = try #require(app.exported)
        let glue = try #require(
            try ExportSwift(progress: .silent, moduleName: app.moduleName, skeleton: exported).finalize()
        )
        #expect(glue.contains("<T: BridgedSwiftGenericBridgeable & GraphKit.Node>"))
        #expect(glue.contains("any (BridgedSwiftGenericBridgeable & GraphKit.Node).Type"))
        var link = BridgeJSLink()
        let encoder = JSONEncoder()
        try link.addSkeletonFile(data: encoder.encode(graphKit))
        try link.addSkeletonFile(data: encoder.encode(app))
        let js = try link.link().outputJs
        #expect(js.contains(#"__bjs_typeIdForToken(typeT, ["Node"])"#))
    }

    @Test
    func bridgeableProtocolTokenSatisfiesItsOwnAndInheritedConstraints() throws {
        // `BridgeTypes.Labeled` selects the JS-implemented `AnyLabeled` wrapper,
        // which Swift accepts for `T: Labeled` and (via refinement) `T: Base`;
        // the JS-side check must agree instead of throwing a TypeError.
        let (js, _) = try linkSource(
            """
            @JS protocol Base { var id: String { get } }
            @JS protocol Labeled: Base, BridgedSwiftGenericBridgeable { var label: String { get } }
            @JS public func store<T: BridgedSwiftGenericBridgeable & Base>(_ node: T) -> T { node }
            """
        )
        #expect(js.contains(#""Labeled": ["Labeled", "Base"]"#))
    }

    @Test
    func legacyStringGenericParametersDecodeOnExportedFunctions() throws {
        // Skeletons committed by earlier plugins encoded generic parameters as
        // bare name strings; the export-side field must keep decoding them.
        let legacy =
            #"{"name":"identity","abiName":"bjs_identity","parameters":[],"returnType":{"generic":{"_0":"T"}},"effects":{"isAsync":false,"isThrows":false,"isStatic":false},"genericParameters":["T"]}"#
        let function = try JSONDecoder().decode(ExportedFunction.self, from: Data(legacy.utf8))
        #expect(function.genericParameters == [GenericParameter(name: "T")])
    }

    @Test
    func sameNamedJSProtocolsAcrossModulesFailTheLink() throws {
        // The JS-side constraint check identifies protocols by unqualified
        // name. If two modules each defined `GraphNode`, ModuleA's conformer
        // would pass the check for ModuleB's constraint and reach the Swift
        // metatype-cast trap instead of a catchable TypeError, so the link
        // must reject the combination up front (mirroring the token rule).
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
    func compositionConstraintIsParsed() throws {
        let skeleton = try makeSkeleton(
            """
            @JS protocol GraphNode {
                var id: String { get }
            }
            @JS public func store<T: BridgedSwiftGenericBridgeable & GraphNode>(_ node: T) -> T { node }
            """,
            moduleName: "App"
        )
        let exported = try #require(skeleton.exported)
        let function = try #require(exported.functions.first { $0.name == "store" })
        #expect(function.genericParameters == [GenericParameter(name: "T", constraints: ["GraphNode"])])
    }

    @Test
    func bareJSProtocolConstraintSuggestsComposition() {
        expectDiagnostic(
            source: """
                @JS protocol GraphNode {
                    var id: String { get }
                }
                @JS public func store<T: GraphNode>(_ node: T) -> T { node }
                """,
            contains:
                "Generic parameter 'T' is missing the 'BridgedSwiftGenericBridgeable' constraint. "
                + "Write 'T: BridgedSwiftGenericBridgeable & GraphNode'"
        )
    }

    @Test
    func unknownProtocolInCompositionIsRejected() {
        expectDiagnostic(
            source: """
                @JS public func store<T: BridgedSwiftGenericBridgeable & Nonexistent>(_ node: T) -> T { node }
                """,
            contains: "Generic parameter 'T' has unsupported constraint 'Nonexistent'"
        )
    }

    @Test
    func nonJSProtocolInCompositionIsRejected() {
        expectDiagnostic(
            source: """
                @JS public func store<T: BridgedSwiftGenericBridgeable & Comparable>(_ node: T) -> T { node }
                """,
            contains: "Generic parameter 'T' has unsupported constraint 'Comparable'"
        )
    }

    @Test
    func genericWhereClauseUnsupported() {
        expectDiagnostic(
            source: """
                @JS public func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T where T: Sendable { value }
                """,
            contains: "'where' clauses are not supported"
        )
    }

    @Test
    func asyncGenericExportUnsupported() {
        expectDiagnostic(
            source: """
                @JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) async -> T { v }
                """,
            contains: "Generic @JS functions cannot be 'async' yet."
        )
    }

    @Test
    func throwsGenericExportUnsupported() {
        expectDiagnostic(
            source: """
                @JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) throws(JSException) -> T { v }
                """,
            contains: "Generic @JS functions cannot be 'throws' yet."
        )
    }

    @Test(arguments: [
        ("[[T]]", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: [[T]]) {}"),
        ("[T?]", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: [T?]) {}"),
        ("T??", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T??) {}"),
        ("[Int: T]", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: [Int: T]) {}"),
    ])
    func unsupportedGenericWrapperFormsInParameter(label: String, source: String) {
        expectDiagnostic(
            source: source,
            contains: "may only be used as a bare type"
        )
    }

    @Test(arguments: [
        ("[[T]]", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> [[T]] { [[v]] }"),
        ("[T?]", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> [T?] { [v] }"),
        ("T??", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> T?? { v }"),
        ("[Int: T]", "@JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> [Int: T] { [0: v] }"),
    ])
    func unsupportedGenericWrapperFormsInReturn(label: String, source: String) {
        expectDiagnostic(
            source: source,
            contains: "may only be used as a bare type"
        )
    }

    @Test
    func fullyUnusedGenericParameterRejected() {
        expectDiagnostic(
            source: """
                @JS public func combine<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ a: T) -> T { a }
                """,
            contains: "must be used in at least one parameter or the return type"
        )
    }

    @Test
    func genericConcreteReturnUnsupported() {
        expectDiagnostic(
            source: """
                @JS public func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> String { "" }
                """,
            contains: "must return the generic type"
        )
    }

    @Test
    func genericInstanceMethodAsyncIsRejected() {
        expectDiagnostic(
            source: """
                @JS class Box {
                    @JS init() {}
                    @JS func wrap<T: BridgedSwiftGenericBridgeable>(_ v: T) async -> T { v }
                }
                """,
            contains: "Generic @JS functions cannot be 'async' yet."
        )
    }

    @Test
    func genericInstanceMethodThrowsIsRejected() {
        expectDiagnostic(
            source: """
                @JS class Box {
                    @JS init() {}
                    @JS func wrap<T: BridgedSwiftGenericBridgeable>(_ v: T) throws(JSException) -> T { v }
                }
                """,
            contains: "Generic @JS functions cannot be 'throws' yet."
        )
    }

    @Test
    func genericMethodWhereClauseIsRejected() {
        expectDiagnostic(
            source: """
                @JS class Box {
                    @JS init() {}
                    @JS func wrap<T: BridgedSwiftGenericBridgeable>(_ v: T) -> T where T: Sendable { v }
                }
                """,
            contains: "'where' clauses are not supported on generic @JS functions."
        )
    }

    @Test
    func genericMethodUnconstrainedParamIsRejected() {
        expectDiagnostic(
            source: """
                @JS class Box {
                    @JS init() {}
                    @JS func f<T>(_ v: T) -> T { v }
                }
                """,
            contains:
                "Generic parameter 'T' must be constrained to 'BridgedSwiftGenericBridgeable' to be used with @JS."
        )
    }

    @Test
    func genericMethodConcreteReturnIsRejected() {
        expectDiagnostic(
            source: """
                @JS class Box {
                    @JS init() {}
                    @JS func count<T: BridgedSwiftGenericBridgeable>(_ v: T) -> Int { 0 }
                }
                """,
            contains: "must return the generic type"
        )
    }

    @Test
    func genericEnumInstanceMethodIsRejected() {
        expectDiagnostic(
            source: """
                @JS enum E {
                    case a
                    @JS func f<T: BridgedSwiftGenericBridgeable>(_ v: T) -> T { v }
                }
                """,
            contains: "Only static functions are supported in enums"
        )
    }

    @Test
    func genericTypedPropertyIsRejectedAsUnsupportedType() {
        expectDiagnostic(
            source: """
                @JS final class Box {
                    @JS init() {}
                    @JS var value: T
                }
                """,
            contains: "Unsupported type 'T'."
        )
    }

    @Test
    func returnOnlyGenericExportIsAccepted() throws {
        let skeleton = try makeSkeleton(
            """
            @JS public func load<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? { nil }
            """
        )
        let function = try #require(skeleton.exported?.functions.first)
        #expect(function.genericParameterNames == ["T"])
        #expect(function.genericValueParameters.isEmpty)
    }

    @Test
    func extensionDeclaredConformanceReachesTokenConformances() throws {
        // Declaring the @JS protocol conformance in an extension is common
        // Swift style; the constraint check on the JS side must see it, or a
        // genuinely conforming type would be rejected with a TypeError.
        let skeleton = try makeSkeleton(
            """
            @JS protocol GraphNode {
                var id: String { get }
            }
            @JS struct Building {
                var id: String
            }
            extension Building: GraphNode {}

            @JS public func store<T: BridgedSwiftGenericBridgeable & GraphNode>(_ node: T) -> T { node }
            """
        )
        let structDef = try #require(skeleton.exported?.structs.first { $0.name == "Building" })
        #expect(structDef.conformedJSProtocols == ["GraphNode"])
    }

}
