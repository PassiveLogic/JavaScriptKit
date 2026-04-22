import XCTest
import JavaScriptKit

// Config-default identity mode test target.
//
// The target's bridge-js.config.json sets `"identityMode": "swift"`. Every
// `@JS class` in this file OMITS the per-class `identityMode:` argument so
// we exercise the config-default resolution path in
// `ExportSwift.isSwiftIdentityMode` / `BridgeJSLink.shouldUseSwiftIdentityCache`.
//
// See Docs/superpowers/specs/2026-04-21-swift-side-identity-cache-design.md §3.2
// and plan Task 5 Part B.

@JSClass struct SwiftIdentityModeTestImports {
    @JSFunction static func runJsSwiftIdentityModeTests() throws(JSException)
}

final class SwiftIdentityModeTests: XCTestCase {
    func testRunJsSwiftIdentityModeTests() throws {
        try SwiftIdentityModeTestImports.runJsSwiftIdentityModeTests()
    }
}

// NOTE: No `identityMode:` argument — inherits "swift" from bridge-js.config.json.
@JS class ConfigSwiftSubject {
    @JS var value: Int

    @JS init(value: Int) {
        self.value = value
    }

    @JS var currentValue: Int { value }

    @JS func self_() -> ConfigSwiftSubject { self }
}

nonisolated(unsafe) private var _configSwiftSubject: ConfigSwiftSubject?

@JS func getConfigSwiftSubject() -> ConfigSwiftSubject {
    if _configSwiftSubject == nil {
        _configSwiftSubject = ConfigSwiftSubject(value: 7)
    }
    return _configSwiftSubject!
}

@JS func resetConfigSwiftSubject() {
    _configSwiftSubject = nil
}

// Dedicated class with a deinit counter for scenarios (b), (c).
@JS class ConfigSwiftRetainLeakSubject {
    nonisolated(unsafe) static var deinits: Int = 0

    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }

    deinit {
        Self.deinits += 1
    }
}

nonisolated(unsafe) private var _configSwiftRetainLeakSubject: ConfigSwiftRetainLeakSubject?

@JS func getConfigSwiftRetainLeakSubject() -> ConfigSwiftRetainLeakSubject {
    if _configSwiftRetainLeakSubject == nil {
        _configSwiftRetainLeakSubject = ConfigSwiftRetainLeakSubject(tag: 1)
    }
    return _configSwiftRetainLeakSubject!
}

@JS func resetConfigSwiftRetainLeakSubject() {
    _configSwiftRetainLeakSubject = nil
}

@JS func getConfigSwiftRetainLeakDeinits() -> Int {
    ConfigSwiftRetainLeakSubject.deinits
}

@JS func resetConfigSwiftRetainLeakDeinits() {
    ConfigSwiftRetainLeakSubject.deinits = 0
}

// Scenario (d): dedicated churn class + introspection getter gated behind
// ENABLE_TEST_INTROSPECTION so it is not part of the public test surface.
@JS class ConfigSwiftChurnSubject {
    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }
}

#if ENABLE_TEST_INTROSPECTION
@JS func getConfigSwiftIdentityTableSizeForChurn() -> Int {
    _ConfigSwiftChurnSubject_identityTable.count
}
#endif

// Scenario (e): array returns preserving cross-element identity.
@JS func makeConfigSwiftArray(
    _ a: ConfigSwiftSubject,
    _ b: ConfigSwiftSubject
) -> [ConfigSwiftSubject] {
    return [a, b, a]
}

// Scenario (h): optional identity.
@JS func maybeConfigSwiftSubject(_ present: Bool) -> ConfigSwiftSubject? {
    if _configSwiftSubject == nil {
        _configSwiftSubject = ConfigSwiftSubject(value: 99)
    }
    return present ? _configSwiftSubject : nil
}
