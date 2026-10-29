@JS struct ExportPoint {
    var x: Int
    var y: Int
}

@JS enum ExportNamespace {
    @JS struct Metadata {
        var label: String
        var count: Int
    }

    @JS enum Level: Int {
        case low = 1
        case high = 9
    }
}

@JS enum ExportMode: String {
    case on
    case off
}

@JS enum ExportColor {
    case red
    case green
}

@JS enum ExportTagged {
    case number(value: Int)
    case text(value: String)
}

@JS final class ExportBox {
    @JS var value: Int
    @JS init(value: Int) {
        self.value = value
    }
    @JS func get() -> Int {
        value
    }
}

@JS public func genericExportIdentity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
    return value
}

@JS public func genericExportArray<T: BridgedSwiftGenericBridgeable>(_ values: [T]) -> [T] {
    return values
}

@JS public func genericExportOptional<T: BridgedSwiftGenericBridgeable>(_ value: T?) -> T? {
    return value
}

@JS public func genericExportDictionary<T: BridgedSwiftGenericBridgeable>(_ values: [String: T]) -> [String: T] {
    return values
}

@JS public func genericExportEcho<T: BridgedSwiftGenericBridgeable>(_ value: T, tag: Int) -> T {
    return value
}

@JS public func genericExportStore<T: BridgedSwiftGenericBridgeable>(_ key: String, _ value: T) {
}

@JS public func genericExportLoad<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? {
    return nil
}

@JS public func genericExportStructConcreteLeading<T: BridgedSwiftGenericBridgeable>(_ v: T, _ p: ExportPoint) -> T {
    return v
}

@JS public func genericExportStructAndScalar<T: BridgedSwiftGenericBridgeable>(_ p: ExportPoint, tag: Int, _ v: T) -> T
{
    return v
}

@JS public func genericExportPair<T: BridgedSwiftGenericBridgeable>(_ a: T, _ b: T) -> T {
    return a
}

@JS public func genericExportCombine<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
    _ a: T,
    _ b: U
) -> T {
    return a
}

@JS public func genericExportCombineReturnU<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(
    _ a: T,
    _ b: U
) -> U {
    return b
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

    @JS func combine<T: BridgedSwiftGenericBridgeable, t: BridgedSwiftGenericBridgeable>(_ a: T, _ b: t) -> T {
        return a
    }

    @JS static func makeArray<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [T] {
        return [value]
    }

    @JS func load<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? {
        return nil
    }
}

@JS struct GenericPair {
    @JS init() {}

    @JS func first<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        return value
    }

    @JS func combine<T: BridgedSwiftGenericBridgeable, t: BridgedSwiftGenericBridgeable>(_ a: T, _ b: t) -> T {
        return a
    }

    @JS func maybe<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T? {
        return value
    }

    @JS func dict<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [String: T] {
        return ["value": value]
    }

    @JS static func wrap<T: BridgedSwiftGenericBridgeable>(_ value: T) -> [T] {
        return [value]
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

// Throwing generic exports: the exception crosses through the side channel and
// the JS wrapper rethrows it before lifting anything from the value stack.
@JS public func genericPickOrThrow<T: BridgedSwiftGenericBridgeable>(
    _ value: T,
    _ shouldThrow: Bool
) throws(JSException) -> T {
    if shouldThrow {
        throw JSException(JSError(message: "generic pick failed").jsValue)
    }
    return value
}

@JS struct GenericThrowingBox {
    @JS init() {}

    @JS func reject<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T {
        throw JSException(JSError(message: "boxed rejection").jsValue)
    }

    // A renamed generic struct method must be attached under its JS name, the
    // same name the d.ts declares.
    @JS("passThrough") func forward<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
        value
    }
}

// A namespaced final class: its token is `ExportGenericNamespace_Handle`, but
// its d.ts interface is emitted at the top level, so the token table must not
// spell the type as `ExportGenericNamespace.Handle`.
@JS enum ExportGenericNamespace {
    @JS final class Handle {
        @JS init() {}
    }
}
