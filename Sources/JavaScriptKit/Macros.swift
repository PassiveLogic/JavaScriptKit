/// A macro that exposes Swift functions, classes, and methods to JavaScript.
///
/// Apply this macro to Swift declarations that you want to make callable from JavaScript:
///
/// ```swift
/// // Export a function to JavaScript
/// @JS public func greet(name: String) -> String {
///     return "Hello, \(name)!"
/// }
///
/// // Export a class and its members
/// @JS class Counter {
///     private var count = 0
///
///     @JS init() {}
///
///     @JS func increment() {
///         count += 1
///     }
///
///     @JS func getValue() -> Int {
///         return count
///     }
/// }
/// ```
///
/// When you build your project with the BridgeJS plugin, these declarations will be
/// accessible from JavaScript, and TypeScript declaration files (`.d.ts`) will be
/// automatically generated to provide type safety.
///
/// For detailed usage information, see the article <doc:Exporting-Swift-to-JavaScript>.
///
/// - Important: This feature is still experimental. No API stability is guaranteed, and the API may change in future releases.
@attached(peer)
public macro JS() = Builtin.ExternalMacro

/// A macro that exposes Swift functions to JavaScript with a custom namespace.
///
/// This variant of the `@JS` macro allows you to specify a custom namespace for your exported Swift declarations.
/// This is useful for organizing your JavaScript API or matching existing JavaScript project naming conventions.
///
/// Apply this macro to Swift declarations that you want to make callable from JavaScript with a specific namespace:
///
/// ```swift
/// @JS("__Swift.Foundation.UUID") public func createUUID() -> String {
///     return UUID().uuidString
/// }
/// ```
///
/// The above Swift function will be accessible in Typescript as:
/// ```typescript
/// const uuid = globalThis.__Swift.Foundation.UUID.create();
/// ```
///
/// And the corresponding TypeScript declaration will be generated as:
/// ```typescript
/// declare global {
///     namespace __Swift {
///         namespace Foundation {
///             namespace UUID {
///                 function create(): string;
///                 function validate(uuid: string): boolean;
///             }
///         }
///     }
/// }
/// ```
///
/// - Parameter namespace: A dot-separated string that defines the namespace hierarchy in JavaScript.
///                        Each segment becomes a nested object in the resulting JavaScript structure.
///
/// - Important: This feature is still experimental. No API stability is guaranteed, and the API may change in future releases.
@attached(peer)
public macro JS(_ namespace: String) = Builtin.ExternalMacro
