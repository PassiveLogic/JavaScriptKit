import XCTest
import JavaScriptKit

@JSClass struct IdentityModeTestImports {
    @JSFunction static func runJsIdentityModeTests() throws(JSException)
}

final class IdentityModeTests: XCTestCase {
    func testRunJsIdentityModeTests() throws {
        try IdentityModeTestImports.runJsIdentityModeTests()
    }
}

@JS class IdentityTestSubject {
    @JS var value: Int

    @JS init(value: Int) {
        self.value = value
    }

    @JS var currentValue: Int { value }
}

nonisolated(unsafe) private var _sharedSubject: IdentityTestSubject?

@JS func getSharedSubject() -> IdentityTestSubject {
    if _sharedSubject == nil {
        _sharedSubject = IdentityTestSubject(value: 42)
    }
    return _sharedSubject!
}

@JS func resetSharedSubject() {
    _sharedSubject = nil
}

@JS class RetainLeakSubject {
    nonisolated(unsafe) static var deinits: Int = 0

    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }

    deinit {
        Self.deinits += 1
    }
}

nonisolated(unsafe) private var _retainLeakSubject: RetainLeakSubject?

@JS func getRetainLeakSubject() -> RetainLeakSubject {
    if _retainLeakSubject == nil {
        _retainLeakSubject = RetainLeakSubject(tag: 1)
    }
    return _retainLeakSubject!
}

@JS func resetRetainLeakSubject() {
    _retainLeakSubject = nil
}

@JS func getRetainLeakDeinits() -> Int {
    RetainLeakSubject.deinits
}

@JS func resetRetainLeakDeinits() {
    RetainLeakSubject.deinits = 0
}

// MARK: - Array identity tests

@JS class ArrayIdentityElement {
    nonisolated(unsafe) static var deinits: Int = 0

    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }

    deinit {
        Self.deinits += 1
    }
}

nonisolated(unsafe) private var _arrayPool: [ArrayIdentityElement] = []

@JS func setupArrayPool(_ count: Int) {
    _arrayPool = (0..<count).map { ArrayIdentityElement(tag: $0) }
}

@JS func getArrayPool() -> [ArrayIdentityElement] {
    return _arrayPool
}

@JS func getArrayPoolElement(_ index: Int) -> ArrayIdentityElement? {
    guard index >= 0, index < _arrayPool.count else { return nil }
    return _arrayPool[index]
}

@JS func getArrayPoolDeinits() -> Int {
    ArrayIdentityElement.deinits
}

@JS func resetArrayPoolDeinits() {
    ArrayIdentityElement.deinits = 0
}

@JS func clearArrayPool() {
    _arrayPool = []
}

// MARK: - identityMode: .swift per-class opt-in (coexists with .pointer classes above)
//
// These classes explicitly opt INTO Swift-owned identity caching. The target's
// bridge-js.config.json default is "pointer", so the existing classes above stay
// on the pointer path; adding these .swift classes verifies mode coexistence.
// See Docs/superpowers/specs/2026-04-21-swift-side-identity-cache-design.md §5, §6.2.

@JS(identityMode: .swift) class SwiftIdentityTestSubject {
    @JS var value: Int

    @JS init(value: Int) {
        self.value = value
    }

    @JS var currentValue: Int { value }

    @JS func self_() -> SwiftIdentityTestSubject { self }
}

nonisolated(unsafe) private var _sharedSwiftSubject: SwiftIdentityTestSubject?

@JS func getSharedSwiftSubject() -> SwiftIdentityTestSubject {
    if _sharedSwiftSubject == nil {
        _sharedSwiftSubject = SwiftIdentityTestSubject(value: 42)
    }
    return _sharedSwiftSubject!
}

@JS func resetSharedSwiftSubject() {
    _sharedSwiftSubject = nil
}

// Deinit counter used for scenario (b) "explicit release frees heap object"
// and scenario (c) "double release is idempotent".
@JS(identityMode: .swift) class SwiftRetainLeakSubject {
    nonisolated(unsafe) static var deinits: Int = 0

    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }

    deinit {
        Self.deinits += 1
    }
}

nonisolated(unsafe) private var _swiftRetainLeakSubject: SwiftRetainLeakSubject?

@JS func getRetainLeakSubjectSwift() -> SwiftRetainLeakSubject {
    if _swiftRetainLeakSubject == nil {
        _swiftRetainLeakSubject = SwiftRetainLeakSubject(tag: 1)
    }
    return _swiftRetainLeakSubject!
}

@JS func resetRetainLeakSubjectSwift() {
    _swiftRetainLeakSubject = nil
}

@JS func getRetainLeakDeinitsSwift() -> Int {
    SwiftRetainLeakSubject.deinits
}

@JS func resetRetainLeakDeinitsSwift() {
    SwiftRetainLeakSubject.deinits = 0
}

// Scenario (d): identity-table size introspection.
//
// Post-D18 the Swift-side state is a Set<pointer> (no ids). The analogous
// "compactness" check is: after N allocate+release cycles, the Set is empty.
// Gated behind `ENABLE_TEST_INTROSPECTION` so the debug-only getter does not
// become part of the public test surface.
#if ENABLE_TEST_INTROSPECTION
@JS func getSwiftIdentityTableSizeForSharedSubject() -> Int {
    _SwiftIdentityTestSubject_identityTable.count
}
#endif

// Scenario (e): array returns — Swift returns `[a, b, a]` so JS can assert
// `result[0] === result[2]` preserves identity across array elements.
@JS func makeSwiftIdentityArray(
    _ a: SwiftIdentityTestSubject,
    _ b: SwiftIdentityTestSubject
) -> [SwiftIdentityTestSubject] {
    return [a, b, a]
}

// Scenario (h): optional identity — `.some(x)` returns cached wrapper, `.none`
// returns null.
@JS func maybeSwiftSubject(_ present: Bool) -> SwiftIdentityTestSubject? {
    if _sharedSwiftSubject == nil {
        _sharedSwiftSubject = SwiftIdentityTestSubject(value: 99)
    }
    return present ? _sharedSwiftSubject : nil
}

// Scenario (d) support: a dedicated "churn" class so id-recycling assertions
// are not perturbed by the shared-subject lifetime used in (a), (f), (h).
@JS(identityMode: .swift) class SwiftChurnSubject {
    @JS var tag: Int

    @JS init(tag: Int) {
        self.tag = tag
    }
}

#if ENABLE_TEST_INTROSPECTION
@JS func getSwiftIdentityTableSizeForChurn() -> Int {
    _SwiftChurnSubject_identityTable.count
}
#endif
