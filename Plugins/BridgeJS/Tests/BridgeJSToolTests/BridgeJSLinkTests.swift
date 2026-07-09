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
        let (outputJs, outputDts) = try bridgeJSLink.link()
        try assertSnapshot(
            name: name,
            filePath: filePath,
            function: function,
            sourceLocation: sourceLocation,
            input: outputJs.data(using: .utf8)!,
            fileExtension: "js"
        )
        try assertSnapshot(
            name: name,
            filePath: filePath,
            function: function,
            sourceLocation: sourceLocation,
            input: outputDts.data(using: .utf8)!,
            fileExtension: "d.ts"
        )
    }

    static let inputsDirectory = URL(fileURLWithPath: #filePath).deletingLastPathComponent().appendingPathComponent(
        "Inputs"
    ).appendingPathComponent("MacroSwift")

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

    private func buildSkeleton(
        moduleName: String,
        source: String,
        inputFilePath: String = "input.swift"
    ) throws -> BridgeJSSkeleton {
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: moduleName,
            exposeToGlobal: false,
            externalModuleIndex: .empty
        )
        swiftAPI.addSourceFile(Parser.parse(source: source), inputFilePath: inputFilePath)
        return try swiftAPI.finalize()
    }

    @Test
    func sameNamedTypesAcrossModulesLinkWithDistinctABINames() throws {
        // Both modules export a `Point` struct and a `run` function with identical Swift
        // names but different public JS names (one is namespaced). The module-qualified
        // ABI names must keep the generated glue (struct hooks, helper keys, and
        // function thunk names) distinct, while the public JS/TS surface stays flat.
        let moduleA = try buildSkeleton(
            moduleName: "ModuleA",
            source: """
                @JS public struct Point {
                    public let x: Double
                    public let y: Double
                    @JS public init(x: Double, y: Double) {
                        self.x = x
                        self.y = y
                    }
                }
                @JS public enum Validation {
                    case valid
                    case invalid(reason: String)
                }
                @JS public func run(point: Point, validation: Validation) -> Point {
                    point
                }
                """
        )
        let moduleB = try buildSkeleton(
            moduleName: "ModuleB",
            source: """
                @JS(namespace: "Inner") public struct Point {
                    public let x: Double
                    public let y: Double
                    @JS public init(x: Double, y: Double) {
                        self.x = x
                        self.y = y
                    }
                }
                @JS(namespace: "Inner") public func run() {
                }
                """
        )
        let bridgeJSLink = BridgeJSLink(skeletons: [moduleA, moduleB], sharedMemory: false)

        let (outputJs, outputDts) = try bridgeJSLink.link()

        // Struct hooks and helper keys are module-qualified and distinct.
        #expect(outputJs.contains("swift_js_struct_lower_ModuleA_Point"))
        #expect(outputJs.contains("swift_js_struct_lower_ModuleB_Point"))
        #expect(outputJs.contains("structHelpers.ModuleA_Point"))
        #expect(outputJs.contains("structHelpers.ModuleB_Point"))
        // Associated-value enum helper keys are module-qualified.
        #expect(outputJs.contains("enumHelpers.ModuleA_Validation"))
        // Exported function thunk names are module-qualified and distinct.
        #expect(outputJs.contains("instance.exports.bjs_ModuleA_run"))
        #expect(outputJs.contains("instance.exports.bjs_ModuleB_Inner_run"))
        // The public TS surface stays flat (no module prefixes).
        #expect(!outputDts.contains("ModuleA"))
        #expect(!outputDts.contains("ModuleB"))

        try snapshot(bridgeJSLink: bridgeJSLink, name: "SameNamedTypesAcrossModules")
    }

    @Test
    func duplicatePublicNamesAcrossModulesProduceDiagnostic() throws {
        let source = """
            @JS public struct Point {
                public let x: Double
                @JS public init(x: Double) {
                    self.x = x
                }
            }
            """
        let moduleA = try buildSkeleton(moduleName: "ModuleA", source: source)
        let moduleB = try buildSkeleton(moduleName: "ModuleB", source: source)
        let bridgeJSLink = BridgeJSLink(skeletons: [moduleA, moduleB], sharedMemory: false)

        do {
            _ = try bridgeJSLink.link()
            Issue.record("Expected duplicate public export name diagnostic, but linking succeeded")
        } catch let error as BridgeJSLinkError {
            #expect(error.message.contains("Duplicate exported name 'Point'"))
            #expect(error.message.contains("ModuleA"))
            #expect(error.message.contains("ModuleB"))
        }
    }

    @Test
    func duplicatePublicFunctionNamesAcrossModulesProduceDiagnostic() throws {
        let moduleA = try buildSkeleton(
            moduleName: "ModuleA",
            source: "@JS public func run() {}"
        )
        let moduleB = try buildSkeleton(
            moduleName: "ModuleB",
            source: "@JS public func run() {}"
        )
        let bridgeJSLink = BridgeJSLink(skeletons: [moduleA, moduleB], sharedMemory: false)

        do {
            _ = try bridgeJSLink.link()
            Issue.record("Expected duplicate public export name diagnostic, but linking succeeded")
        } catch let error as BridgeJSLinkError {
            #expect(error.message.contains("Duplicate exported name 'run'"))
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
