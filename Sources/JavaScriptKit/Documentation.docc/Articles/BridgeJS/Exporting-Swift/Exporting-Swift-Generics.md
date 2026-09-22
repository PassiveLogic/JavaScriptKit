# Exporting Generic Swift APIs

Expose generic functions, methods, and callback parameters to JavaScript.

## Overview

Constrain each type parameter to `BridgedSwiftGenericBridgeable`. JavaScript callers select its concrete Swift type with a token from the generated `BridgeTypes` export.

```swift
import JavaScriptKit

@JS public final class ValueStore {
    private var values: [String: any BridgedSwiftGenericBridgeable] = [:]

    @JS public init() {}

    @JS public func put<T: BridgedSwiftGenericBridgeable>(_ key: String, _ value: T) {
        values[key] = value
    }

    @JS public func get<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? {
        values[key] as? T
    }
}
```

```javascript
import { BridgeTypes } from "./bridge-js.js";

const store = new exports.ValueStore();
store.put("count", 42, BridgeTypes.Int);
store.put("title", "Draft", BridgeTypes.String);
store.get("count", BridgeTypes.Int);    // 42
store.get("title", BridgeTypes.String); // "Draft"
store.get("count", BridgeTypes.String); // null: stored as Int
store.release();
```

Pass one token per generic parameter after the regular arguments, in declaration order. Tokens use Swift names and underscore-separated namespaces, such as `BridgeTypes.API_Building`, even when the type has a separate JavaScript name. Import `BridgeTypes` from the generated module, not the `exports` object.

The token selects the concrete return type, including for return-only generics such as `get`. Generic values may use `T`, `[T]`, `T?`, or `[String: T]`, mixed with concrete parameters and results. See <doc:Supported-Types> for types usable as `T`.

### Async functions and callbacks

Generic exports and their callback parameters may be `async` or `throws(JSException)`. Callbacks can use the same generic types; an `@escaping` callback stays alive until Swift releases it and must run on the same JavaScript runtime/thread. Use `throws(JSException)` for callbacks that throw or reject a promise.

### Protocol constraints

Add `@JS` protocol constraints with `T: BridgedSwiftGenericBridgeable & GraphNode`, or use `T: GraphNode` if `GraphNode` inherits `BridgedSwiftGenericBridgeable` (see <doc:Exporting-Swift-Protocols>). Constraints are preserved in TypeScript; unknown or non-conforming tokens throw `TypeError` before arguments cross the bridge.

Exported generic initializers are unsupported; use an ordinary initializer as above or a generic factory method. Imported generic `@JSClass` initializers remain supported (see <doc:Importing-JS-Function>). See <doc:Unsupported-Features> for other export restrictions.
