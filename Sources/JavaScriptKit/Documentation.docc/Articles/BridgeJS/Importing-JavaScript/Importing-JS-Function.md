# Importing a JavaScript function into Swift

This guide shows how to bind a JavaScript function so it is callable from Swift using `@JSFunction`.

## Steps

### 1. Declare the function in Swift with `@JSFunction`

Match the JavaScript name and signature. Use Swift types that bridge to the JS types you need (see <doc:Supported-Types>).

```swift
import JavaScriptKit

@JSFunction func add(_ a: Double, _ b: Double) throws(JSException) -> Double
@JSFunction func setTitle(_ title: String) throws(JSException)
```

To bind a function that lives on the JavaScript global object (e.g. `parseInt`, `setTimeout`), add `from: .global`. Use `jsName` when the Swift name differs from the JavaScript name - see the ``JSFunction(jsName:from:)`` API reference for options.

To ship the function with the Swift target, put it in a `.js` or `.mjs` ECMAScript module and use a target-rooted path:

```javascript
// JavaScript/math.js
export function add(a, b) { return a + b; }
```

```swift
@JSFunction(from: .snippet("/JavaScript/math.js"))
func add(_ a: Double, _ b: Double) throws(JSException) -> Double
```

The leading `/` denotes the Swift target root, not the filesystem root. BridgeJS copies explicitly referenced modules into the generated PackageToJS package. Multiple declarations may reference the same file; it is copied and imported only once. `jsName` selects a differently named export, otherwise BridgeJS uses the normalized Swift name.

To call a Node builtin or an installed npm package instead, use `from: .module(...)`. The specifier is passed to the JavaScript module resolver verbatim:

```swift
@JSFunction(jsName: "basename", from: .module("node:path"))
func basename(_ path: String) throws(JSException) -> String

@JSFunction(jsName: "chunk", from: .module("lodash/fp"))
func chunk(_ input: JSObject, _ size: Int) throws(JSException) -> JSObject
```

Nothing is copied for these, and you are responsible for making them resolvable at load time; see <doc:Unsupported-Features> for what that entails. To call the module's default export instead of a named one, pass `jsName: .default`.

SwiftPM does not know what to do with `.js`/`.mjs` files inside a target, so exclude the directory holding them to avoid an "unhandled files" warning:

```swift
.target(
    name: "MyApp",
    exclude: ["JavaScript"],
    plugins: [.plugin(name: "BridgeJS", package: "JavaScriptKit")]
)
```

### 2. Provide the implementation at initialization

Return the corresponding function(s) in the object passed to `getImports()` when initializing the WebAssembly module.

```javascript
// index.js
import { init } from "./.build/plugins/PackageToJS/outputs/Package/index.js";

const { exports } = await init({
  getImports() {
    return {
      add: (a, b) => a + b,
      setTitle: (title) => { document.title = title },
    };
  }
});
```

If you used `from: .global` or `.module`, do not pass the function in `getImports()`. Module-only bindings do not require `getImports()` at all.

### 3. Handle errors

Bound functions are `throws(JSException)`. Call them with `try` or `try?`; they throw when the JavaScript implementation throws.

## Generic functions

A `@JSFunction` can be generic over a type parameter constrained to `BridgedSwiftGenericBridgeable`, so one declaration serves every bridged type:

```swift
@JSFunction func parse<T: BridgedSwiftGenericBridgeable>(_ json: String) throws(JSException) -> T

let user: User = try parse(jsonString)   // T inferred from the call site
```

`T` must be a bridgeable type: a supported primitive (`Bool`, any fixed-width integer such as `Int`/`UInt`/`Int8`…`UInt64`, `Float`, `Double`, `String`, or `JSValue`), or a `@JS` struct, `final @JS class`, or `@JS enum`. You do not write any conformance yourself; marking a type `@JS` makes it usable as `T` (see <doc:Supported-Types>). Generics are not supported for `async` functions or `where` clauses (see <doc:Unsupported-Features>).

A generic type parameter may be used in more than one parameter, an imported function may declare more than one distinct generic parameter, and a generic result type may be used on a function that takes no generic parameters (the JavaScript implementation produces the value):

```swift
@JSFunction func pickFirst<T: BridgedSwiftGenericBridgeable>(_ a: T, _ b: T) throws(JSException) -> T

@JSFunction func makeValue<T: BridgedSwiftGenericBridgeable>() throws(JSException) -> T

@JSFunction func combine<T: BridgedSwiftGenericBridgeable, U: BridgedSwiftGenericBridgeable>(_ a: T, _ b: U) throws(JSException) -> U
```

The generic parameter may also be wrapped as `[T]`, `T?`, or `[String: T]` in parameters and the result:

```swift
@JSFunction func roundTrip<T: BridgedSwiftGenericBridgeable>(_ values: [T]) throws(JSException) -> [T]

@JSFunction func lookup<T: BridgedSwiftGenericBridgeable>(_ values: [String: T]) throws(JSException) -> T?
```

### Generic methods on imported classes

An imported `@JSClass` type can also have generic initializers, instance methods, and static methods. The same constraint applies. The Swift to JavaScript bridge resolves the concrete type through an internal type id, and the JavaScript implementation is called with only the method's declared arguments:

```swift
@JSClass struct Store {
    @JSFunction func identity<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
    @JSFunction static func box<T: BridgedSwiftGenericBridgeable>(_ value: T) throws(JSException) -> T
}
```

Generic imports can also constrain `T` to `@JS` protocols, as in `T: BridgedSwiftGenericBridgeable & P & Q`. If `P` inherits `BridgedSwiftGenericBridgeable`, use `T: P`:

```swift
import JavaScriptKit

@JS protocol Named: BridgedSwiftGenericBridgeable { var name: String { get } }
@JSFunction func display<T: Named>(_ value: T) throws(JSException)
```

Constraints may use `@JS` protocols from dependency modules, including qualified names such as `T: BridgedSwiftGenericBridgeable & Models.Named`. Concrete conformers must expose the required members to JavaScript too, including marking methods with `@JS`. This does not enable existential compositions such as `any P & Q`; the generic-import limitations above still apply.

## Supported features

| Feature | Status |
|:--|:--|
| Primitive parameter/result types (e.g. `Double`, `Bool`) | ✅ |
| `String` parameter/result type | ✅ |
| Generic parameter/result types (constrained to `BridgedSwiftGenericBridgeable`) | ✅ |
| `@JS` protocol constraints on generic imports | ✅ |
| Async function | ❌ |
