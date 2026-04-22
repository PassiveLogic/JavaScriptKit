/// Per-class identity caching policy for `@JS`-exported classes.
///
/// See `Docs/superpowers/specs/2026-04-21-swift-side-identity-cache-design.md` §3.
///
/// - `.none`: No identity caching. Each boundary crossing produces a fresh JS wrapper.
/// - `.pointer`: JS-side identity cache keyed by the Swift pointer (weak refs + `FinalizationRegistry`).
/// - `.swift`: Swift-side identity cache (opt-in; strong retention of the JS wrapper for the
///   lifetime of the Swift heap object).
public enum JSIdentityMode: String, Sendable {
    case none
    case pointer
    case swift
}
