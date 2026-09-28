import Testing
import JavaScriptKit

@JS public struct ExportGenericPoint {
    public var x: Int
    public var y: Int

    @JS public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

@JS public final class ExportGenericBox {
    @JS public var value: Int
    @JS public init(value: Int) {
        self.value = value
    }
    @JS public func get() -> Int {
        value
    }
}

@JS public func exportGenericIdentity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
    value
}

@JS public func exportGenericEcho<T: BridgedSwiftGenericBridgeable>(_ value: T, tag: Int) -> T {
    value
}

@JS public func exportGenericPickFirst<T: BridgedSwiftGenericBridgeable>(_ a: T, _ b: T) -> T {
    a
}

@JS public func exportGenericPickSecond<T: BridgedSwiftGenericBridgeable>(_ a: T, _ b: T) -> T {
    b
}

@JS public enum ExportGenericOutcome {
    case ok(value: Int)
    case fail(reason: String)
}

@JS public func makeExportGenericOutcome(_ value: Int) -> ExportGenericOutcome {
    .ok(value: value)
}

@JS public func exportGenericOutcomeValue(_ outcome: ExportGenericOutcome) -> Int {
    if case .ok(let value) = outcome {
        return value
    }
    return -1
}

@JS public func exportGenericArrayIdentity<T: BridgedSwiftGenericBridgeable>(_ values: [T]) -> [T] {
    values
}

@JS public func exportGenericOptionalIdentity<T: BridgedSwiftGenericBridgeable>(_ value: T?) -> T? {
    value
}

@JS public func exportGenericDictIdentity<T: BridgedSwiftGenericBridgeable>(_ values: [String: T]) -> [String: T] {
    values
}

nonisolated(unsafe) var _lastWrappedPoint = ExportGenericPoint(x: 0, y: 0)
nonisolated(unsafe) var _lastTag = 0

@JS public func exportGenericWrapPointAndTag<T: BridgedSwiftGenericBridgeable>(
    _ p: ExportGenericPoint,
    tag: Int,
    _ value: T
) -> T {
    _lastWrappedPoint = p
    _lastTag = tag
    return value
}

@JS
public func exportGenericCombineFirst<
    T: BridgedSwiftGenericBridgeable,
    U: BridgedSwiftGenericBridgeable
>(_ a: T, _ b: U) -> T {
    a
}

@JS
public func exportGenericCombineSecond<
    T: BridgedSwiftGenericBridgeable,
    U: BridgedSwiftGenericBridgeable
>(_ a: T, _ b: U) -> U {
    b
}

@JS
public func exportGenericCombineTripleLast<
    T: BridgedSwiftGenericBridgeable,
    U: BridgedSwiftGenericBridgeable,
    V: BridgedSwiftGenericBridgeable
>(_ a: T, _ b: U, _ c: V) -> V {
    c
}

@JS public final class ExportGenericMethodBox {
    @JS public init() {}
    @JS public func echo<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        value
    }
    @JS
    public func combine<
        T: BridgedSwiftGenericBridgeable,
        U: BridgedSwiftGenericBridgeable
    >(_ a: T, _ b: U) -> U {
        b
    }
    @JS public static func wrapArray<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [T] {
        [value]
    }
}

@JS public struct ExportGenericMethodPair {
    @JS public init() {}
    @JS public func first<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        value
    }
    @JS public func maybe<T: BridgedSwiftGenericBridgeable>(_ value: T, present: Bool) -> T? {
        present ? value : nil
    }
    @JS public func dict<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [String: T] {
        ["value": value]
    }
    @JS public static func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [T] {
        [value]
    }
}

@JS public enum ExportGenericMethodFactory {
    case primary
    @JS public static func one<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        value
    }
}

@JS public enum ExportGenericMethodNamespace {
    @JS public static func make<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        value
    }
}

nonisolated(unsafe) private var _genericStore: [String: any BridgedSwiftGenericBridgeable] = [:]

@JS public func exportGenericStore<T: BridgedSwiftGenericBridgeable>(_ key: String, _ value: T) {
    _genericStore[key] = value
}

@JS public func exportGenericLoad<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? {
    _genericStore[key] as? T
}

@JS public func lastWrappedPointX() -> Int { _lastWrappedPoint.x }
@JS public func lastWrappedPointY() -> Int { _lastWrappedPoint.y }
@JS public func lastTag() -> Int { _lastTag }

@JS public protocol ExportGenericGraphNode {
    var id: String { get }
}

@JS public struct ExportGenericBuilding: ExportGenericGraphNode {
    public var id: String
    public var floors: Int

    @JS public init(id: String, floors: Int) {
        self.id = id
        self.floors = floors
    }
}

nonisolated(unsafe) var _lastStoredNodeID = ""

@JS public func exportGenericStoreNode<T: BridgedSwiftGenericBridgeable & ExportGenericGraphNode>(_ node: T) -> T {
    // The protocol constraint is usable in the function body.
    _lastStoredNodeID = node.id
    return node
}

// The bridging protocol may appear anywhere in the composition.
@JS
public func exportGenericNodeRoundTrip<
    T: ExportGenericGraphNode & BridgedSwiftGenericBridgeable
>(_ node: T) -> T {
    return node
}

@JS
public func exportGenericStoreNodeWithExtra<
    T: BridgedSwiftGenericBridgeable & ExportGenericGraphNode,
    U: BridgedSwiftGenericBridgeable
>(_ node: T, _ extra: U) -> U {
    _lastStoredNodeID = node.id
    return extra
}

nonisolated(unsafe) private var _nodeStore: [String: any BridgedSwiftGenericBridgeable] = [:]

// Return-only generic export with a protocol constraint: T appears only in the
// result, so the thunk pops nothing for it and the JS caller picks T via the token.
@JS
public func exportGenericLoadNode<
    T: BridgedSwiftGenericBridgeable & ExportGenericGraphNode
>(_ key: String) -> T? {
    _nodeStore[key] as? T
}

@JS
public func exportGenericSaveNode<
    T: BridgedSwiftGenericBridgeable & ExportGenericGraphNode
>(_ key: String, _ node: T) {
    _nodeStore[key] = node
}

@JS public func lastStoredNodeID() -> String { _lastStoredNodeID }

// Protocol refinement: a conformer of the refined protocol must satisfy a
// constraint on the base protocol, both in Swift and in the JS-side token check.
@JS public protocol ExportGenericSite: ExportGenericGraphNode {
    var region: String { get }
}

@JS public struct ExportGenericCampus: ExportGenericSite {
    public var id: String
    public var region: String

    @JS public init(id: String, region: String) {
        self.id = id
        self.region = region
    }
}

@_extern(wasm, module: "BridgeJSRuntimeTests", name: "runExportGenericTests")
@_extern(c)
func runExportGenericTests() -> Void

@Suite struct ExportGenericAPITests {
    @Test func exportGenerics() {
        runExportGenericTests()
    }
}
