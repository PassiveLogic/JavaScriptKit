import Testing
import JavaScriptKit

@JS public struct ExportGenericPoint {
    public var x: Int
    public var y: Int

    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

@JS public func exportGenericIdentity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
    value
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

@JS
public func exportGenericCount<
    T: BridgedSwiftGenericBridgeable,
    U: BridgedSwiftGenericBridgeable,
    V: BridgedSwiftGenericBridgeable
>(
    _ values: [T],
    _ other: U,
    _ extra: V,
    _ fail: Bool
) throws(JSException) -> Int64 {
    if fail { throw JSException(message: "count failed") }
    return Int64(values.count)
}

@JS public func exportGenericOptionalCount<T: BridgedSwiftGenericBridgeable>(_ values: [T]) -> Int? {
    values.isEmpty ? nil : values.count
}

@JS public func exportGenericTransform<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
    _ value: T,
    _ transform: (T) throws(JSException) -> U
) throws(JSException) -> U {
    try transform(value)
}

@JS public func exportGenericSelect<T: BridgedSwiftGenericBridgeable>(
    _ values: [T],
    _ select: ([T]) -> T?
) -> T? {
    select(values)
}

@JS public func exportGenericAsyncTransform<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
    _ value: T,
    _ transform: @escaping (T) async throws(JSException) -> U
) async throws(JSException) -> U {
    try await transform(value)
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

@JS public final class ExportGenericMethodBox {
    @JS public var value: Int = 0
    private var stored: (() throws(JSException) -> any BridgedSwiftGenericBridgeable)?
    private var storedAsync: (() async throws(JSException) -> any BridgedSwiftGenericBridgeable)?

    @JS public init() {}

    @JS public func store<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
        _ value: T,
        _ callback: @escaping (T) throws(JSException) -> U
    ) {
        stored = { () throws(JSException) -> any BridgedSwiftGenericBridgeable in try callback(value) }
    }

    @JS public func invoke<T: BridgedSwiftGenericBridgeable>() throws(JSException) -> T? {
        try stored?() as? T
    }

    @JS public func storeAsync<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
        _ value: T,
        _ callback: @escaping (T) async throws(JSException) -> U
    ) {
        storedAsync = { () async throws(JSException) -> any BridgedSwiftGenericBridgeable in try await callback(value) }
    }

    @JS public func run<T: BridgedSwiftGenericBridgeable>() async throws(JSException) -> T? {
        try await storedAsync?() as? T
    }

    @JS public func clear() {
        stored = nil
        storedAsync = nil
    }
    @JS public static func produce<T: BridgedSwiftGenericBridgeable>(_ body: () -> T) -> T {
        body()
    }
}

@JS public struct ExportGenericMethodPair {
    @JS public init() {}
    @JS public static func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [T] {
        [value]
    }

    @JS public func summary<T: BridgedSwiftGenericBridgeable>(
        _ values: [T],
        _ fail: Bool
    ) throws(JSException) -> ExportGenericPoint {
        if fail { throw JSException(message: "summary failed") }
        return ExportGenericPoint(x: values.count, y: values.count * 2)
    }

    @JS public func map<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
        _ values: [T],
        _ transform: (T, Int) -> U
    ) -> [U] {
        values.enumerated().map { transform($0.element, $0.offset) }
    }

    @JS public func mapAsync<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
        _ values: [T],
        _ transform: (T) async -> U
    ) async -> [U] {
        var result: [U] = []
        for value in values { result.append(await transform(value)) }
        return result
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

@JS public func lastWrappedPointX() -> Int { _lastWrappedPoint.x }
@JS public func lastWrappedPointY() -> Int { _lastWrappedPoint.y }
@JS public func lastTag() -> Int { _lastTag }

@JS public protocol ExportGenericGraphNode: BridgedSwiftGenericBridgeable {
    var id: String { get }
}

nonisolated(unsafe) var _lastStoredNodeID = ""

@JS public func exportGenericStoreNode<T: ExportGenericGraphNode>(_ node: T) -> T {
    _lastStoredNodeID = node.id
    return node
}

nonisolated(unsafe) private var _nodeStore: [String: any BridgedSwiftGenericBridgeable] = [:]

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

@JS("ExportSite") public protocol ExportGenericSite: ExportGenericGraphNode {
    var region: String { get }
}

@JS public struct ExportGenericCampus: ExportGenericSite {
    public var id: String
    public var region: String

    public init(id: String, region: String) {
        self.id = id
        self.region = region
    }
}

@_extern(wasm, module: "BridgeJSRuntimeTests", name: "runExportGenericTests")
@_extern(c)
func runExportGenericTests() -> Void

@JSFunction func runExportGenericAsyncTests() async throws(JSException)

@Suite struct ExportGenericAPITests {
    @Test func exportGenerics() {
        runExportGenericTests()
    }

    @Test func exportAsyncGenerics() async throws {
        try await runExportGenericAsyncTests()
    }
}
