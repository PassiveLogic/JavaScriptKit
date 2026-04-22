# Identity Modes for Exported Classes

Control whether a Swift class returned to JavaScript produces a stable JS wrapper on re-export, and where the identity cache lives.

## Overview

Every time an `@JS class` instance crosses the Swift→JS boundary, BridgeJS has to give JavaScript *some* value that represents the underlying Swift object. By default, it builds a fresh JS wrapper each time — so two calls that return the same Swift object produce two different JS objects:

```javascript
const a = exports.getCurrentUser();
const b = exports.getCurrentUser();
a === b; // false — two different wrappers around the same Swift object
```

For many apps that's fine. But if your JS code uses `===` to compare, or stores wrappers as keys in a `Map`/`Set`, or keeps mutable state on the wrapper, you probably want stable identity. BridgeJS offers three policies via `identityMode`:

| Mode | Meaning | When to use |
|------|---------|-------------|
| `.none` | No cache. Fresh wrapper on every crossing. **Default.** | You don't need `===` identity and you want zero bookkeeping overhead. |
| `.pointer` | JS-side `WeakRef` cache. `===` holds while the wrapper is reachable. | Hit-heavy workloads with many long-lived wrappers. You want weak semantics (wrapper can be GC'd if JS code drops its reference). |
| `.swift` | Swift-owned strong cache. `===` holds until explicit `release()`. | Create-heavy or churn-heavy workloads. You want the lowest per-miss cost and don't mind retaining wrappers until you explicitly release. |

## Per-class opt-in

```swift
import JavaScriptKit

@JS(identityMode: .swift)
class Building {
    @JS var name: String
    @JS init(name: String) { self.name = name }
}
```

Classes without an `identityMode:` argument inherit the project default (see below). A per-class annotation always wins over the config default.

## Project-wide default

Set a default in `bridge-js.config.json`:

```json
{ "identityMode": "swift" }
```

This makes every `@JS class` in the project use swift mode unless it explicitly overrides with its own annotation. The three valid string values are `"none"`, `"pointer"`, and `"swift"`.

## What each mode does at runtime

### `.none` (default)

Every Swift→JS return allocates a new wrapper. Wrappers release via a `FinalizationRegistry` when JS GCs them. No identity guarantees; lowest peak memory for short-lived crossings.

### `.pointer`

BridgeJS keeps a `Map<pointer, WeakRef<wrapper>>` on the JS side, keyed by the raw Swift pointer. On re-export, if the weakref still deref'es to a live wrapper, the same wrapper is returned. Wrappers can still be GC'd if JS drops all references — and on the next re-export a fresh wrapper is built. `===` is "best-effort" in the face of GC.

### `.swift`

The Swift side keeps an authoritative `pointer → id` table per class, plus an `id → JavaScriptObjectRef` table holding a strong reference to the JS wrapper. On re-export, Swift returns the known id, and JS fetches the cached wrapper from a dense array by integer index — no `WeakRef.deref`, no `Map.get`. On a fresh object, Swift tells JS to build a new wrapper and JS registers its retained ref back with Swift.

The key differences vs `.pointer`:

- **Stronger identity.** The wrapper is strongly retained by Swift until JS calls `release()`. GC will NOT collect it.
- **Faster miss path.** No `FinalizationRegistry.register`, no `WeakRef` allocation per miss. Benchmarks show a 1.7–2.3× improvement on create-heavy and churn-heavy workloads vs `.pointer`.
- **Higher peak memory.** A wrapper that's created and forgotten without `release()` lives for the lifetime of its Swift heap object. Use `.pointer` or `.none` for streaming / short-lived workloads.

## Lifecycle

```javascript
const b = exports.getBuilding();  // allocates a wrapper (if fresh)
b.name;                           // stable === with any future getBuilding() that returns the same Swift object
b.release();                      // mandatory for swift mode — frees the Swift heap object and the wrapper slot
// after release(): b.name throws "Attempted to call a member on a released Building"
```

Double-release is a safe no-op. Static members (class-level methods, constructors) are not affected by release.

## Benchmarks (summary)

Full results in [`Benchmarks/results/swift-side-cache/Benchmarks.md`](../../../../../Benchmarks/results/swift-side-cache/Benchmarks.md). Baseline arm64-macOS, Swift 6.3, Node 22, release build, 500k iters per scenario, median ms:

| Scenario | `.none` | `.pointer` | `.swift` |
|---|---:|---:|---:|
| `passBothWaysRoundtrip` (hit) | 160 | 31 | **26** |
| `getPoolRepeated_100` (hit) | 183 | 46 | **32** |
| `swiftCreatesObject` (miss) | 514 | 2021 | **593** |
| `churnObjects` (create/release) | — | 793 | **317** |
| `swiftConsumesSameObject` | 17 | 10 | **10** |

`.swift` mode is a strict Pareto improvement over `.pointer` mode: faster on hit, 3.4× faster on miss, 2.5× faster on churn, parity on one-way.

## Known limitations

- **Optional<SwiftIdentityClass> identity is not preserved.** If your Swift API returns `SomeClass?`, `.some(x)` produces a fresh wrapper each call even with `.swift` mode. Lifecycle is still correct, but `a === b` where both come from an optional return will be `false`. Workaround: wrap in `[SomeClass]` (array element identity IS preserved).
- **No automatic cleanup.** You must call `release()` explicitly. A future version may add a Swift-side timeout or GC-assisted cleanup.
- **Wasm-only.** Like all of BridgeJS, identity modes only activate on `wasm32`. On the host, the macro expands to no-op code paths so your test harness can still compile.

## Choosing a mode

- **Most apps:** leave as `.none`. You don't need identity, don't pay the cost.
- **Long-lived object graph you cache on the JS side and you want weak GC-safe semantics:** `.pointer`.
- **Create-heavy, churn-heavy, or hit-heavy workloads where explicit `release()` is acceptable:** `.swift`. Strictly faster than `.pointer` on every benchmark scenario; only difference is strong retention until release.

## See also

- <doc:Exporting-Swift-Class>
- <doc:BridgeJS-Configuration>
