/// Per-class identity caching policy for `@JS`-exported classes.
///
/// - `.none`: no identity caching; each boundary crossing produces a fresh JS wrapper.
/// - `.pointer`: JS-side weak cache keyed by the Swift pointer.
/// - `.swift`: Swift-owned strong cache; wrappers live until explicit `release()`.
public enum JSIdentityMode: String, Sendable {
    case none
    case pointer
    case swift
}
