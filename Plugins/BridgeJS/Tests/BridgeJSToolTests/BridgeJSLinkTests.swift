import Foundation
import SwiftSyntax
import SwiftParser
import Testing
@testable import BridgeJSLink
@testable import BridgeJSCore
@testable import BridgeJSSkeleton

@Suite struct BridgeJSLinkTests {
    private func snapshot(
        bridgeJSLink: BridgeJSLink,
        name: String? = nil,
        filePath: String = #filePath,
        function: String = #function,
        sourceLocation: Testing.SourceLocation = #_sourceLocation
    ) throws {
        let output = try bridgeJSLink.link()
        try assertSnapshot(
            name: name,
            filePath: filePath,
            function: function,
            sourceLocation: sourceLocation,
            input: output.outputJs.data(using: .utf8)!,
            fileExtension: "js"
        )
        try assertSnapshot(
            name: name,
            filePath: filePath,
            function: function,
            sourceLocation: sourceLocation,
            input: output.outputDts.data(using: .utf8)!,
            fileExtension: "d.ts"
        )
    }

    static let inputsDirectory = URL(fileURLWithPath: #filePath).deletingLastPathComponent().appendingPathComponent(
        "Inputs"
    ).appendingPathComponent("MacroSwift")

    /// Target-local JavaScript module files that each input pretends to have on disk.
    static let existingModulePaths: [String: Set<String>] = [
        "JSImportModule.swift": [
            "/Modules/JSImportModule.mjs",
            "/Modules/ModuleCounter.mjs",
        ],
        "JSImportBareModule.swift": [
            "/Modules/DefaultExport.mjs"
        ],
    ]

    static func collectInputs(extension: String) -> [String] {
        let fileManager = FileManager.default
        let inputs = try! fileManager.contentsOfDirectory(atPath: Self.inputsDirectory.path)
        return inputs.filter { $0.hasSuffix(`extension`) }
    }

    @Test(arguments: collectInputs(extension: ".swift"))
    func snapshot(input: String) throws {
        let url = Self.inputsDirectory.appendingPathComponent(input)
        let name = url.deletingPathExtension().lastPathComponent

        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let modulePaths = Self.existingModulePaths[input] ?? []
        let importSwift = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            externalModuleIndex: .empty,
            javaScriptModuleExists: { modulePaths.contains($0) }
        )
        importSwift.addSourceFile(sourceFile, inputFilePath: "\(name).swift")
        let importResult = try importSwift.finalize()
        var bridgeJSLink = BridgeJSLink()
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        let unifiedData = try encoder.encode(importResult)
        try bridgeJSLink.addSkeletonFile(data: unifiedData)
        try snapshot(bridgeJSLink: bridgeJSLink, name: name)
    }

    @Test(arguments: [
        "Namespaces.swift",
        "StaticFunctions.swift",
        "StaticProperties.swift",
        "EnumNamespace.swift",
    ])
    func snapshotExportWithGlobal(inputFile: String) throws {
        let url = Self.inputsDirectory.appendingPathComponent(inputFile)
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: true,
            externalModuleIndex: .empty
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: inputFile)
        let name = url.deletingPathExtension().lastPathComponent
        let outputSkeleton = try swiftAPI.finalize()
        let bridgeJSLink: BridgeJSLink = BridgeJSLink(
            skeletons: [
                outputSkeleton
            ]
        )
        try snapshot(bridgeJSLink: bridgeJSLink, name: name + ".Global")
    }

    @Test
    func snapshotMixedModuleExposure() throws {
        let globalURL = Self.inputsDirectory.appendingPathComponent("MixedGlobal.swift")
        let globalSourceFile = Parser.parse(source: try String(contentsOf: globalURL, encoding: .utf8))
        let globalAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "GlobalModule",
            exposeToGlobal: true,
            externalModuleIndex: .empty
        )
        globalAPI.addSourceFile(globalSourceFile, inputFilePath: "MixedGlobal.swift")
        let globalSkeleton = try globalAPI.finalize()

        let privateURL = Self.inputsDirectory.appendingPathComponent("MixedPrivate.swift")
        let privateSourceFile = Parser.parse(source: try String(contentsOf: privateURL, encoding: .utf8))
        let privateAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "PrivateModule",
            exposeToGlobal: false,
            externalModuleIndex: .empty
        )
        privateAPI.addSourceFile(privateSourceFile, inputFilePath: "MixedPrivate.swift")
        let privateSkeleton = try privateAPI.finalize()

        let bridgeJSLink = BridgeJSLink(
            skeletons: [
                globalSkeleton,
                privateSkeleton,
            ]
        )
        try snapshot(bridgeJSLink: bridgeJSLink, name: "MixedModules")
    }

    private func linkedJS(forFixture input: String) throws -> String {
        let url = Self.inputsDirectory.appendingPathComponent(input)
        let name = url.deletingPathExtension().lastPathComponent
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let importSwift = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            externalModuleIndex: .empty
        )
        importSwift.addSourceFile(sourceFile, inputFilePath: "\(name).swift")
        let importResult = try importSwift.finalize()
        var bridgeJSLink = BridgeJSLink()
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        let unifiedData = try encoder.encode(importResult)
        try bridgeJSLink.addSkeletonFile(data: unifiedData)
        return try bridgeJSLink.link().0
    }

    @Test
    func genericRuntimeIsGatedToGenericBuilds() throws {
        let genericJS = try linkedJS(forFixture: "GenericImports.swift")
        #expect(genericJS.contains("__bjs_codecByTypeId"))
        #expect(genericJS.contains("function __bjs_codecForTypeId(typeId) {"))
        #expect(genericJS.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
        #expect(genericJS.contains("instance.exports[\"bjs_TestModule_register_type_handles\"]();"))

        // Modules with @JS types but no generic declarations still emit a Swift
        // registration export (their types may be used by a dependent module's
        // generic function), so the link layer must install a no-op hook for the
        // wasm import — but the generic runtime itself must be omitted. The
        // primitive codec table is not part of that runtime: the non-generic
        // array and dictionary paths share it too.
        let nonGenericJS = try linkedJS(forFixture: "SwiftStructImports.swift")
        #expect(!nonGenericJS.contains("__bjs_codecByTypeId"))
        #expect(!nonGenericJS.contains("__bjs_codecForTypeId"))
        #expect(nonGenericJS.contains("bjs[\"bjs_core_register_type_handles\"] = function() {};"))
        #expect(nonGenericJS.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function() {};"))
        #expect(!nonGenericJS.contains("instance.exports[\"bjs_TestModule_register_type_handles\"]();"))
    }

    @Test
    func sameTypeNameAcrossModulesLinksWithHandleIdentity() throws {
        // Type identity is pointer-based (each type owns a BridgeJSTypeHandle),
        // so two modules defining a same-named @JS type must link fine: each
        // module registers its own handle IDs against its own codec array.
        func makeSkeleton(moduleName: String, source: String) throws -> BridgeJSSkeleton {
            let swiftAPI = SwiftToSkeleton(
                progress: .silent,
                moduleName: moduleName,
                exposeToGlobal: false,
                externalModuleIndex: .empty
            )
            swiftAPI.addSourceFile(Parser.parse(source: source), inputFilePath: "\(moduleName).swift")
            return try swiftAPI.finalize()
        }
        let structSource = """
            @JS public struct Point {
                public var x: Int
                @JS public init(x: Int) { self.x = x }
            }
            """
        let first = try makeSkeleton(
            moduleName: "FirstModule",
            source: structSource + """

                @JSFunction func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
                """
        )
        let second = try makeSkeleton(moduleName: "SecondModule", source: structSource)
        let bridgeJSLink = BridgeJSLink(skeletons: [first, second])
        let js = try bridgeJSLink.link().outputJs
        #expect(js.contains("bjs[\"bjs_FirstModule_register_type_handles\"] = function(base, count) {"))
        #expect(js.contains("bjs[\"bjs_SecondModule_register_type_handles\"] = function(base, count) {"))
    }

    @Test
    func sameTypeNameAcrossModulesFailsWithGenericExports() throws {
        // Generic exports surface types to JS through unqualified `BridgeTypes`
        // tokens, so a type name shared by two modules cannot be represented
        // and must fail the build — unlike imports, where pointer-based handle
        // identity keeps same-named types apart.
        func makeSkeleton(moduleName: String, source: String) throws -> BridgeJSSkeleton {
            let swiftAPI = SwiftToSkeleton(
                progress: .silent,
                moduleName: moduleName,
                exposeToGlobal: false,
                externalModuleIndex: .empty
            )
            swiftAPI.addSourceFile(Parser.parse(source: source), inputFilePath: "\(moduleName).swift")
            return try swiftAPI.finalize()
        }
        let structSource = """
            @JS public struct Point {
                public var x: Int
                @JS public init(x: Int) { self.x = x }
            }
            """
        let first = try makeSkeleton(
            moduleName: "FirstModule",
            source: structSource + """

                @JS public func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T { value }
                """
        )
        let second = try makeSkeleton(moduleName: "SecondModule", source: structSource)
        let bridgeJSLink = BridgeJSLink(skeletons: [first, second])
        #expect(throws: (any Error).self) {
            _ = try bridgeJSLink.link()
        }
    }

    @Test
    func perClassIdentityModeFromAnnotation() throws {
        let url = Self.inputsDirectory.appendingPathComponent("IdentityModeClass.swift")
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            externalModuleIndex: .empty,
            identityMode: nil  // no config default
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: "IdentityModeClass.swift")
        let outputSkeleton = try swiftAPI.finalize()

        // Verify skeleton has per-class identity mode (not captured by snapshots)
        let cachedClass = outputSkeleton.exported!.classes.first { $0.name == "CachedModel" }
        let uncachedClass = outputSkeleton.exported!.classes.first { $0.name == "UncachedModel" }
        let explicitlyUncachedClass = outputSkeleton.exported!.classes.first { $0.name == "ExplicitlyUncachedModel" }
        #expect(cachedClass?.identityMode == true)
        #expect(uncachedClass?.identityMode == nil)
        #expect(explicitlyUncachedClass?.identityMode == false)

        // Verify generated JS via snapshot
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton])
        try snapshot(bridgeJSLink: bridgeJSLink, name: "IdentityModeClass.PerClass")
    }

    @Test
    func perClassIdentityModeWithConfigOverride() throws {
        let url = Self.inputsDirectory.appendingPathComponent("IdentityModeClass.swift")
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            externalModuleIndex: .empty,
            identityMode: "pointer"  // config says pointer for all classes
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: "IdentityModeClass.swift")
        let outputSkeleton = try swiftAPI.finalize()

        // When config says "pointer", classes without annotation get identity mode from config.
        // But @JS(identityMode: false) should still override to "without identity".
        let explicitlyUncachedClass = outputSkeleton.exported!.classes.first { $0.name == "ExplicitlyUncachedModel" }
        #expect(explicitlyUncachedClass?.identityMode == false)

        // Verify generated JS via snapshot
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton])
        try snapshot(bridgeJSLink: bridgeJSLink, name: "IdentityModeClass.ConfigPointer")
    }
}
