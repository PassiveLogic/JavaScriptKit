import XCTest
import JavaScriptKit

// Tests the config-default identityMode: "swift" resolution path.
// bridge-js.config.json in this target sets the default, and none of the
// @JS class declarations below opt in explicitly.

@JSClass struct SwiftIdentityModeTestImports {
    @JSFunction static func runJsSwiftIdentityModeTests() throws(JSException)
}

final class SwiftIdentityModeTests: XCTestCase {
    func testRunJsSwiftIdentityModeTests() throws {
        try SwiftIdentityModeTestImports.runJsSwiftIdentityModeTests()
    }
}

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

// Dedicated class with a deinit counter for release-related tests.
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

// Dedicated churn class so its identity-table assertions aren't perturbed by
// the shared subjects above.
@JS class ConfigSwiftChurnSubject {
    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }
}

@JS func getConfigSwiftIdentityTableSizeForChurn() -> Int {
    _ConfigSwiftChurnSubject_identityTable.count
}

@JS func makeConfigSwiftArray(
    _ a: ConfigSwiftSubject,
    _ b: ConfigSwiftSubject
) -> [ConfigSwiftSubject] {
    return [a, b, a]
}

@JS func maybeConfigSwiftSubject(_ present: Bool) -> ConfigSwiftSubject? {
    if _configSwiftSubject == nil {
        _configSwiftSubject = ConfigSwiftSubject(value: 99)
    }
    return present ? _configSwiftSubject : nil
}
