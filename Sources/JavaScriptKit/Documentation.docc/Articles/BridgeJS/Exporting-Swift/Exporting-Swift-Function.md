# Exporting Swift Functions to JS

Learn how to export Swift functions to JavaScript.

## Overview

> Tip: You can quickly preview what interfaces will be exposed on the Swift/JavaScript/TypeScript sides using the [BridgeJS Playground](https://swiftwasm.org/JavaScriptKit/PlayBridgeJS/).

To export a Swift function to JavaScript, mark it with the `@JS` attribute and make it `public`:

```swift
import JavaScriptKit

@JS public func calculateTotal(price: Double, quantity: Int) -> Double {
    return price * Double(quantity)
}

@JS public func formatCurrency(amount: Double) -> String {
    return "$\(String(format: "%.2f", amount))"
}
```

These functions will be accessible from JavaScript:

```javascript
const total = exports.calculateTotal(19.99, 3);
const formattedTotal = exports.formatCurrency(total);
console.log(formattedTotal); // "$59.97"
```

The generated TypeScript declarations for these functions would look like:

```typescript
export type Exports = {
    calculateTotal(price: number, quantity: number): number;
    formatCurrency(amount: number): string;
}
```

### Renaming functions in JavaScript

If a different name is more appropriate in JavaScript or to export multiple overloaded Swift functions with distinct JavaScript names, you can pass a JavaScript identifier as the first argument to `@JS`.

```swift
import JavaScriptKit

@JS("greetName") public func greet(_ name: String) -> String {
    return "Hello, \(name)!"
}

@JS("greetPerson") public func greet(_ person: Person) -> String {
    return "Hello, \(person.name)!"
}
```

```javascript
exports.greetName("World");
exports.greetPerson({ name: "World" });
```

### Throwing functions

Swift functions can throw JavaScript errors using `throws(JSException)`.

```swift
import JavaScriptKit

@JS public func findUser(id: Int) throws(JSException) -> String {
    if id <= 0 {
        throw JSException(JSError(message: "Invalid ID").jsValue)
    }
    return "User_\(id)"
}
```

From JavaScript, call with `try/catch`:

```javascript
try {
  const name = exports.findUser(42);
  console.log(name);
} catch (e) {
  console.error("findUser failed:", e);
}
```

Generated TypeScript type:

```typescript
export type Exports = {
    findUser(id: number): string; // throws at runtime
}
```

Notes:
- Only `throws(JSException)` is supported. Plain `throws` is not supported.
- Thrown values are surfaced to JS as normal JS exceptions.

### Async functions

Async Swift functions are exposed as Promise-returning JS functions.

```swift
import JavaScriptKit

@JS public func fetchCount(endpoint: String) async -> Int {
    // Simulate async work
    try? await Task.sleep(nanoseconds: 50_000_000)
    return endpoint.count
}
```

Usage from JavaScript:

```javascript
const count = await exports.fetchCount("/items");
```

Generated TypeScript type:

```typescript
export type Exports = {
    fetchCount(endpoint: string): Promise<number>;
}
```

### Async + throws

Async throwing functions become Promise-returning JS functions that reject on error.

```swift
import JavaScriptKit

@JS public func loadProfile(userId: Int) async throws(JSException) -> String {
    if userId <= 0 { throw JSException(JSError(message: "Bad userId").jsValue) }
    try? await Task.sleep(nanoseconds: 50_000_000)
    return "Profile_\(userId)"
}
```

JavaScript usage:

```javascript
try {
  const profile = await exports.loadProfile(1);
  console.log(profile);
} catch (e) {
  console.error("loadProfile failed:", e);
}
```

TypeScript:

```typescript
export type Exports = {
    loadProfile(userId: number): Promise<string>;
}
```

### Generic functions

A `@JS` function or method can be generic over a type parameter constrained to `BridgedSwiftGenericBridgeable`. The concrete type chosen at the JavaScript call site crosses the bridge, so one Swift implementation can transport many bridgeable types. A typical use is a typed payload slot: the Swift body stores and retrieves values opaquely while each call site keeps its concrete type:

```swift
import JavaScriptKit

@JS public final class GraphNode {
    private var attributes: [String: any BridgedSwiftGenericBridgeable] = [:]

    @JS public init() {}

    @JS public func setAttribute<T: BridgedSwiftGenericBridgeable>(_ key: String, _ value: T) {
        attributes[key] = value
    }

    @JS public func attribute<T: BridgedSwiftGenericBridgeable>(_ key: String) -> T? {
        attributes[key] as? T
    }
}
```

`T` must be a bridgeable type: a supported primitive (`Bool`, any fixed-width integer such as `Int`/`UInt`/`Int8`…`UInt64`, `Float`, `Double`, `String`, or `JSValue`), or a `@JS` struct, `final @JS class`, or `@JS enum`. A `@JS protocol` that inherits `BridgedSwiftGenericBridgeable` is bridgeable too: its token (`BridgeTypes.SceneNode`) selects the generated JavaScript-backed wrapper, so a plain JavaScript object satisfying the protocol can be passed where `T` is constrained to it. You do not write any conformance yourself; marking a type `@JS` makes it usable as `T` (see <doc:Supported-Types>).

Because TypeScript erases generics, the JavaScript caller passes a `BridgeType<T>` token as the last argument so the bridge can select the right type at runtime. The tokens come from a generated `BridgeTypes` map exported at the top level of `bridge-js.js`; import it directly rather than reading it from the `exports` object. The token for a type declared inside a namespace joins the path with underscores, so `API.Building` is `BridgeTypes.API_Building`:

```javascript
import { BridgeTypes } from "./bridge-js.js";

const node = new exports.GraphNode();
node.setAttribute("weight", 42, BridgeTypes.Int);
node.setAttribute("label", "primary", BridgeTypes.String);

const weight = node.attribute("weight", BridgeTypes.Int);       // 42
const label = node.attribute("label", BridgeTypes.String);      // "primary"
const missing = node.attribute("missing", BridgeTypes.Int);     // null
```

Note that `attribute` uses its generic parameter only in the return type: the token alone tells the bridge which type to produce. This completes the store/load idiom — `setAttribute` consumes a generic value, `attribute` produces one. Passing a token that is not in `BridgeTypes` throws a `TypeError` before the call reaches Swift.

Concrete parameters keep their positions; the token is always appended last. The non-generic parameters of a generic `@JS` function may be any supported bridged type, including value types such as `@JS` structs, arrays, dictionaries, and associated-value enums alongside the generic parameter. The generated TypeScript declarations look like:

```typescript
declare const bridgeTypeBrand: unique symbol;
export type BridgeType<T> = string & { readonly [bridgeTypeBrand]: (value: T) => void };
export const BridgeTypes: { readonly Bool: BridgeType<boolean>; readonly Int: BridgeType<number>; readonly Float: BridgeType<number>; readonly Double: BridgeType<number>; readonly String: BridgeType<string>; readonly MyPoint: BridgeType<MyPoint>; };
export interface GraphNode extends SwiftHeapObject {
    setAttribute<T>(key: string, value: T, typeT: BridgeType<T>): void;
    attribute<T>(key: string, typeT: BridgeType<T>): T | null;
}
```

The same works for a minimal top-level function — `identity` is the simplest possible shape:

```swift
@JS public func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) -> T {
    return value
}
```

```typescript
export type Exports = {
    identity<T>(value: T, typeT: BridgeType<T>): T;
}
```

A single `T` may be used in more than one parameter, and a function may declare multiple distinct generic parameters. Each distinct generic parameter takes its own `BridgeType` token, appended after the regular arguments in declaration order:

```swift
@JS public func combine<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ a: T, _ b: U) -> T {
    a
}
```

```typescript
export type Exports = {
    combine<T, U>(a: T, b: U, typeT: BridgeType<T>, typeU: BridgeType<U>): T;
}
```

The generic parameter may also be wrapped as `[T]`, `T?`, or `[String: T]` in parameters and the result:

```swift
@JS public func firstOrNil<T: BridgedSwiftGenericBridgeable>(_ values: [T]) -> T? {
    values.first
}
```

Every declared generic parameter must be used in at least one parameter or the return type; a fully unused generic parameter is rejected. The result must be one of the declared generic parameters (such as `T` or `U`), a supported wrapper of one (`[T]`, `T?`, `[String: T]`), or `Void` — returning a concrete non-`Void` type from a generic `@JS` function is not supported. Generic `@JS` functions may be `throws(JSException)` but not `async` (see <doc:Unsupported-Features>).

A throwing generic function follows the same error convention as any other throwing export — the exception surfaces as a catchable JavaScript error, thrown by the generated wrapper before any result is read back:

```swift
@JS public func pickOrThrow<T: BridgedSwiftGenericBridgeable>(_ value: T, _ fail: Bool) throws(JSException) -> T {
    if fail {
        throw JSException(JSError(message: "pick failed").jsValue)
    }
    return value
}
```

```javascript
exports.pickOrThrow(42, false, BridgeTypes.Int); // 42
try {
    exports.pickOrThrow(42, true, BridgeTypes.Int);
} catch (error) {
    console.log(error.message); // "pick failed"
}
```

#### Constraining a generic parameter to `@JS` protocols

A generic parameter may additionally be constrained to one or more `@JS` protocols by composing them with `BridgedSwiftGenericBridgeable` (in any order). The function body can then use the protocol requirements of the value:

```swift
@JS protocol GraphNode {
    var id: String { get }
}

@JS struct Building: GraphNode {
    var id: String
    var floors: Int
}

@JS public func store<T: BridgedSwiftGenericBridgeable & GraphNode>(_ node: T) -> T {
    print(node.id)  // GraphNode requirements are available on `node`
    return node
}
```

Every protocol in the composition must be a `@JS protocol` declared in the same module or in a dependency module that applies the BridgeJS plugin. `BridgedSwiftGenericBridgeable` must be reachable from the composition: either spelled directly (`<T: BridgedSwiftGenericBridgeable & GraphNode>`) or inherited by one of the protocols (`@JS protocol SceneNode: BridgedSwiftGenericBridgeable` lets you write `<T: SceneNode>`). The generated TypeScript declaration carries the constraint, so TypeScript callers get compile-time checking against the generated protocol interfaces:

```typescript
export type Exports = {
    store<T extends GraphNode>(node: T, typeT: BridgeType<T>): T;
}
```

TypeScript checks the constraint at compile time, but `BridgeType` tokens are erased at runtime, so the generated JavaScript wrapper enforces it again when the call crosses the bridge: the token's type is validated against the required protocols and a non-conforming token throws a catchable `TypeError` *before* the call enters WebAssembly, e.g. `BridgeJS: type 'Int' does not conform to required protocol 'GraphNode'`. Because nothing has been lowered yet, the shared value stack stays balanced and later calls are unaffected. (The Swift entry thunk repeats the check with a conditional metatype cast as defense-in-depth, but through the generated wrapper that trap is unreachable.)

Generics also work on methods. On a `@JS` class or struct they apply to both instance and static methods. A `@JS enum` (including a namespace-style enum) has no instance methods in BridgeJS, so generics there apply to static methods only. The constraint, the trailing `BridgeType` token, and the generic-or-`Void` return rule all carry over unchanged.

## Supported Features

| Swift Feature | Status |
|:--------------|:-------|
| Primitive parameter/result types: (e.g. `Bool`, `Int`, `Double`) | ✅ |
| `String` parameter/result type | ✅ |
| `@JS class` parameter/result type | ✅ |
| `@JS enum` parameter/result type | ✅ |
| `JSObject` parameter/result type | ✅ |
| Throwing JS exception: `func x() throws(JSException)` | ✅ |
| Throwing any exception: `func x() throws` | ❌ |
| Async methods: `func x() async` | ✅ |
| Generic parameter/result types (constrained to `BridgedSwiftGenericBridgeable`) | ✅ |
| Opaque types: `func x() -> some P`, `func y(_: some P)` | ❌ |
| Default parameter values: `func x(_ foo: String = "")` | ✅ (See <doc:Exporting-Swift-Default-Parameters>) |