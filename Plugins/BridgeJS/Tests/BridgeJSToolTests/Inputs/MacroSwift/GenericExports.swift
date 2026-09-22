@JS struct ExportPoint {
    var x: Int
    var y: Int
}

@JS public func genericExportIdentity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
    return value
}

@JS public func genericExportContainers<T: BridgedSwiftGenericBridgeable>(
    _ values: [T],
    _ optional: T?,
    _ dictionary: [String: T]
) -> [String: T] {
    dictionary
}

@JS public func genericExportTransform<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
    _ value: T,
    _ transform: (T) throws(JSException) -> U
) throws(JSException) -> U {
    try transform(value)
}

@JS public func genericExportTransformAsync<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
    _ value: T,
    _ transform: @escaping (T) async throws(JSException) -> U
) async throws(JSException) -> U {
    try await transform(value)
}

@JS public func genericExportLoad<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? {
    return nil
}

@JS public func genericExportStructAndScalar<T: BridgedSwiftGenericBridgeable>(_ p: ExportPoint, tag: Int, _ v: T) -> T
{
    return v
}

@JS
public func genericExportCaseDistinct<
    T: BridgedSwiftGenericBridgeable,
    t: BridgedSwiftGenericBridgeable
>(_ a: T, _ b: t) -> T {
    return a
}

@JS final class GenericBox {
    @JS init() {}

    @JS func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        return value
    }

    @JS static func produce<T: BridgedSwiftGenericBridgeable>(_ body: () -> T) -> T {
        body()
    }
}

@JS struct GenericPair {
    @JS init() {}

    @JS static func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [T] {
        return [value]
    }

    @JS("summarize") func summary<T: BridgedSwiftGenericBridgeable>(_ values: [T]) throws(JSException) -> ExportPoint {
        ExportPoint(x: values.count, y: 0)
    }

    @JS func map<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
        _ values: [T],
        _ transform: (T, Int) -> U
    ) -> [U] {
        values.enumerated().map { transform($0.element, $0.offset) }
    }
}

@JS enum GenericFactory {
    case primary

    @JS static func one<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        return value
    }
}

@JS enum GenericNamespace {
    @JS static func make<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        return value
    }
}

@JS("ExportNode") protocol ExportGraphNode: BridgedSwiftGenericBridgeable {
    var id: String { get }
}

@JS struct ExportGraphBuilding: ExportGraphNode {
    var id: String
    var floors: Int
}

@JS public func storeGraphNode<T: ExportGraphNode>(_ node: T) -> T {
    return node
}
