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
        var bridgeJSLink = BridgeJSLink(sharedMemory: false)
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
            ],
            sharedMemory: false
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
            ],
            sharedMemory: false
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
        var bridgeJSLink = BridgeJSLink(sharedMemory: false)
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
        #expect(genericJS.contains("__bjs_primitiveCodecs"))
        #expect(genericJS.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function(base, count) {"))
        #expect(genericJS.contains("instance.exports[\"bjs_TestModule_register_type_handles\"]();"))
        // Eager registration hook: called by the instantiate.js template right
        // after WASI initialization (the lazy guard remains as a fallback).
        #expect(genericJS.contains("afterInitialize: () => {"))

        // Modules with @JS types but no generic declarations still emit a Swift
        // registration export (their types may be used by a dependent module's
        // generic function), so the link layer must install a no-op hook for the
        // wasm import — but the generic runtime itself must be omitted. The
        // shared codec runtime (combinators + primitive codecs) gates
        // independently: it is emitted because the fixture bridges an optional
        // struct through the container stack ABI.
        let nonGenericJS = try linkedJS(forFixture: "SwiftStructImports.swift")
        #expect(!nonGenericJS.contains("__bjs_codecByTypeId"))
        #expect(nonGenericJS.contains("__bjs_optionalCodec(structHelpers.Point)"))
        #expect(nonGenericJS.contains("__bjs_primitiveCodecs"))
        #expect(nonGenericJS.contains("bjs[\"bjs_TestModule_register_type_handles\"] = function() {};"))
        #expect(!nonGenericJS.contains("instance.exports[\"bjs_TestModule_register_type_handles\"]();"))
        // Without the generic runtime the hook is not emitted at all; the
        // instantiate template calls it with optional chaining.
        #expect(!nonGenericJS.contains("afterInitialize: () => {"))

        // Builds that bridge no containers at all pay nothing for the shared
        // codec runtime either.
        let containerFreeJS = try linkedJS(forFixture: "PrimitiveParameters.swift")
        #expect(!containerFreeJS.contains("__bjs_arrayCodec"))
        #expect(!containerFreeJS.contains("__bjs_optionalCodec"))
        #expect(!containerFreeJS.contains("__bjs_dictCodec"))
        #expect(!containerFreeJS.contains("__bjs_primitiveCodecs"))
        #expect(!containerFreeJS.contains("__bjs_stringCodec"))
    }

    @Test
    func sameTypeNameAcrossModulesLinksWithHandleIdentity() throws {
        // Type identity is pointer-based (each type owns a BridgeJSTypeHandle),
        // so two modules defining a same-named @JS type must link fine: each
        // module registers its own handle IDs against its own codec array.
        let structSource = """
            @JS public struct Point {
                public var x: Int
                @JS public init(x: Int) { self.x = x }
            }
            """
        let first = try makeSkeleton(
            structSource + """

                @JSFunction func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
                """,
            moduleName: "FirstModule"
        )
        let second = try makeSkeleton(structSource, moduleName: "SecondModule")
        let bridgeJSLink = BridgeJSLink(skeletons: [first, second], sharedMemory: false)
        let js = try bridgeJSLink.link().outputJs
        #expect(js.contains("bjs[\"bjs_FirstModule_register_type_handles\"] = function(base, count) {"))
        #expect(js.contains("bjs[\"bjs_SecondModule_register_type_handles\"] = function(base, count) {"))
    }

    @Test
    func moduleWithoutGenericsStillRegistersItsTypeCodecs() throws {
        // A module cannot know whether a dependent module will pass its types to
        // a generic function, so a module with @JS types but no generic
        // declaration of its own still registers a codec for each of them, and
        // the linked glue drives every module's registration export. This is
        // what lets a type defined in Core be the generic argument of a generic
        // import declared in App.
        let core = try makeSkeleton(
            """
            @JS public struct Vector3D {
                public var x: Int
                @JS public init(x: Int) { self.x = x }
            }
            """,
            moduleName: "Core"
        )
        let app = try makeSkeleton(
            """
            @JSFunction func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
            """,
            moduleName: "App"
        )

        // Core declares nothing imported at all, yet still registers its types.
        #expect(core.imported == nil)
        let coreEntries = try #require(core.typeRegistrationEntries)
        #expect(coreEntries.contains { $0.swiftName == "Vector3D" })

        let js = try BridgeJSLink(skeletons: [core, app], sharedMemory: false).link().outputJs
        #expect(js.contains("instance.exports[\"bjs_Core_register_type_handles\"]();"))
        #expect(js.contains("instance.exports[\"bjs_App_register_type_handles\"]();"))
        // `lower(v)` is unique to a codec literal in a registration array;
        // `structHelpers.Vector3D` on its own is emitted for every @JS struct.
        #expect(js.contains("structHelpers.Vector3D.lower(v);"))
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
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton], sharedMemory: false)
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
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton], sharedMemory: false)
        try snapshot(bridgeJSLink: bridgeJSLink, name: "IdentityModeClass.ConfigPointer")
    }
}
