@JS protocol ExportGraphNode {
    var id: String { get }
}

@JS protocol ExportLabeled {
    var label: String { get }
}

@JS struct ExportGraphBuilding: ExportGraphNode {
    var id: String
    var floors: Int
}

@JS public func storeGraphNode<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ node: T) -> T {
    return node
}

// The bridging protocol may appear anywhere in the composition.
@JS
public func storeLabeledGraphNode<
    T: ExportGraphNode & BridgedSwiftGenericBridgeable & ExportLabeled
>(_ node: T) -> T {
    return node
}

@JS
public func pairGraphNodes<
    T: BridgedSwiftGenericBridgeable & ExportGraphNode,
    U: BridgedSwiftGenericBridgeable
>(_ a: T, _ b: U) -> U {
    return b
}

// Return-only constrained generic: T appears only in the result, so the entry
// thunk performs the composed-existential cast and pops no generic argument.
@JS
public func loadGraphNode<
    T: BridgedSwiftGenericBridgeable & ExportGraphNode
>(_ key: String) -> T? {
    return nil
}

@JS final class GraphRegistry {
    @JS init() {}

    @JS func register<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ node: T) -> T {
        return node
    }

    @JS static func pin<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ node: T) -> T {
        return node
    }
}

// A bridgeable protocol gets its own token (its `Any<P>` wrapper) and satisfies
// constraints on itself and on everything it refines, on both the Swift and the
// JS side of the check.
@JS protocol ExportLabeledNode: ExportGraphNode, BridgedSwiftGenericBridgeable {
    var label: String { get }
}

@JS public func storeAnyLabeled<T: BridgedSwiftGenericBridgeable & ExportGraphNode>(_ node: T) -> T {
    return node
}
