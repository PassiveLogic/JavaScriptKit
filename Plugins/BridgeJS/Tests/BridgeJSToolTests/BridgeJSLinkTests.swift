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
        let importSwift = SwiftToSkeleton(progress: .silent, moduleName: "TestModule", exposeToGlobal: false)
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
        let swiftAPI = SwiftToSkeleton(progress: .silent, moduleName: "TestModule", exposeToGlobal: true)
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
        let globalAPI = SwiftToSkeleton(progress: .silent, moduleName: "GlobalModule", exposeToGlobal: true)
        globalAPI.addSourceFile(globalSourceFile, inputFilePath: "MixedGlobal.swift")
        let globalSkeleton = try globalAPI.finalize()

        let privateURL = Self.inputsDirectory.appendingPathComponent("MixedPrivate.swift")
        let privateSourceFile = Parser.parse(source: try String(contentsOf: privateURL, encoding: .utf8))
        let privateAPI = SwiftToSkeleton(progress: .silent, moduleName: "PrivateModule", exposeToGlobal: false)
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

    @Test
    func perClassIdentityModeFromAnnotation() throws {
        let url = Self.inputsDirectory.appendingPathComponent("IdentityModeClass.swift")
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            identityMode: nil  // no config default
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: "IdentityModeClass.swift")
        let outputSkeleton = try swiftAPI.finalize()

        // Verify skeleton has per-class identity mode (not captured by snapshots)
        let cachedClass = outputSkeleton.exported!.classes.first { $0.name == "CachedModel" }
        let uncachedClass = outputSkeleton.exported!.classes.first { $0.name == "UncachedModel" }
        let explicitlyUncachedClass = outputSkeleton.exported!.classes.first { $0.name == "ExplicitlyUncachedModel" }
        #expect(cachedClass?.identityMode == "pointer")
        #expect(uncachedClass?.identityMode == nil)
        #expect(explicitlyUncachedClass?.identityMode == "none")

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
            identityMode: "pointer"  // config says pointer for all classes
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: "IdentityModeClass.swift")
        let outputSkeleton = try swiftAPI.finalize()

        // When config says "pointer", classes without annotation get identity mode from config.
        // But @JS(identityMode: .none) should still override to "without identity".
        let explicitlyUncachedClass = outputSkeleton.exported!.classes.first { $0.name == "ExplicitlyUncachedModel" }
        #expect(explicitlyUncachedClass?.identityMode == "none")

        // Verify generated JS via snapshot
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton], sharedMemory: false)
        try snapshot(bridgeJSLink: bridgeJSLink, name: "IdentityModeClass.ConfigPointer")
    }

    @Test
    func testLinkIdentityModeSwiftClass() throws {
        // Per-class `identityMode: .swift` opt-in — no config default.
        // Fixture `IdentityModeSwiftClass.swift` has three classes:
        //   - SwiftCached: @JS(identityMode: .swift)  -> "swift"
        //   - WeakCached:  @JS(identityMode: .pointer) -> "pointer"
        //   - Untouched:   @JS                         -> nil (inherits config, which is "none" here)
        let url = Self.inputsDirectory.appendingPathComponent("IdentityModeSwiftClass.swift")
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            identityMode: nil  // no config default
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: "IdentityModeSwiftClass.swift")
        let outputSkeleton = try swiftAPI.finalize()

        // Verify skeleton has per-class identity modes resolved from annotations.
        let swiftCached = outputSkeleton.exported!.classes.first { $0.name == "SwiftCached" }
        let weakCached = outputSkeleton.exported!.classes.first { $0.name == "WeakCached" }
        let untouched = outputSkeleton.exported!.classes.first { $0.name == "Untouched" }
        #expect(swiftCached?.identityMode == "swift")
        #expect(weakCached?.identityMode == "pointer")
        #expect(untouched?.identityMode == nil)

        // Verify generated JS via snapshot
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton], sharedMemory: false)
        try snapshot(bridgeJSLink: bridgeJSLink, name: "IdentityModeSwiftClass")
    }

    @Test
    func testLinkIdentityModeConfigSwift() throws {
        // Config-default `identityMode: "swift"` — reuses the existing `IdentityModeClass.swift` fixture.
        //   - ExplicitlyUncachedModel: @JS(identityMode: false)  -> "none" (explicit override wins)
        //   - UncachedModel:           @JS                       -> nil (inherits config -> "swift" at resolution time)
        //   - CachedModel:             @JS(identityMode: true)   -> "pointer" (explicit per-class override stays)
        let url = Self.inputsDirectory.appendingPathComponent("IdentityModeClass.swift")
        let sourceFile = Parser.parse(source: try String(contentsOf: url, encoding: .utf8))
        let swiftAPI = SwiftToSkeleton(
            progress: .silent,
            moduleName: "TestModule",
            exposeToGlobal: false,
            identityMode: "swift"  // config default says swift for unannotated classes
        )
        swiftAPI.addSourceFile(sourceFile, inputFilePath: "IdentityModeClass.swift")
        let outputSkeleton = try swiftAPI.finalize()

        // Per-class annotation still wins over config default.
        let explicitlyUncachedClass = outputSkeleton.exported!.classes.first { $0.name == "ExplicitlyUncachedModel" }
        let uncachedClass = outputSkeleton.exported!.classes.first { $0.name == "UncachedModel" }
        let cachedClass = outputSkeleton.exported!.classes.first { $0.name == "CachedModel" }
        #expect(explicitlyUncachedClass?.identityMode == "none")
        #expect(uncachedClass?.identityMode == nil)  // inherits config at resolution time
        #expect(cachedClass?.identityMode == "pointer")

        // Verify generated JS via snapshot
        let bridgeJSLink = BridgeJSLink(skeletons: [outputSkeleton], sharedMemory: false)
        try snapshot(bridgeJSLink: bridgeJSLink, name: "IdentityModeClass.ConfigSwift")
    }
}
