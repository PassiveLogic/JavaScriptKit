# BridgeJS Design Rationale

Why BridgeJS is faster than dynamic `JSObject`/`JSValue` APIs and how engine optimizations influence the design.

## Overview

BridgeJS generates **specialized** bridge code per exported or imported interface. That specialization, combined with stable call and property access patterns, allows JavaScript engines to optimize the boundary crossing much better than with generic dynamic code. This page explains the main performance rationale.

## Why generated code is faster

1. **Specialized code per interface** - Each bridged function or property gets its own glue path with known types. The engine does not need to handle arbitrary shapes or types at the call site.

2. **Use of static type information** - The generator knows parameter and return types at compile time. It can avoid dynamic type checks and boxing where the dynamic API would require them.

3. **IC-friendly access patterns** - Property and method accesses use stable, predictable shapes instead of a single generic subscript path. That keeps engine **inline caches (ICs)** effective instead of turning them **megamorphic**.

## Inline caches (ICs) and megamorphic penalty

JavaScript engines (and many other dynamic-language VMs) use **inline caches** at property and method access sites: they remember the object shape (e.g. “this property is at offset X”) so the next access with the same shape can take a fast path.

- **Monomorphic** - One shape seen at a site → very fast, offset cached.
- **Polymorphic** - A few shapes → still fast, small dispatch in the IC.
- **Megamorphic** - Too many different shapes at the same site → the IC gives up and falls back to a generic property lookup, which is much slower.

Engines typically allow only a small number of shapes per IC (e.g. on the order of a few) before marking the site megamorphic.

## Why `JSObject` subscript is problematic

`JSObject.subscript` (and similar dynamic property access) shares **one** code path for all property names and all object shapes. Every access goes through the same call site with varying keys and receiver shapes. That site therefore sees many different shapes and quickly becomes **megamorphic**, so the engine cannot cache property offsets and must do a generic lookup every time.

So even if you cache the property name (e.g. with `CachedJSStrings`), you are still using the same generic subscript path; the call site stays megamorphic and pays the slow-path cost.

BridgeJS avoids this by generating **separate** access paths per property or method. Each generated getter/setter or function call has a stable shape at the engine level, so the IC can stay monomorphic or polymorphic and the fast path is used.

## Generic imports

An imported generic `@JSFunction` (`func parse<T: BridgedSwiftGenericBridgeable>(...)`) lets one piece of glue serve many concrete types. The generic value crosses using the type's own stack ABI, and a runtime type ID selects the matching JS codec, so the type-agnostic glue can lower and lift the right representation without a specialized path per call site.

Type identity is pointer-based rather than name-based: every conforming type owns a unique `BridgeJSTypeHandle` instance, and the handle object's address is the type ID. This makes IDs unique across all linked modules for free (type-name strings would be fragile and could collide). During initialization each module's `bjs_<Module>_register_type_handles` export lowers its handle IDs — in a canonical order shared with the JS glue — and the glue pairs them index-by-index with its codec array, so a generic call site resolves its codec with a single map lookup. Because this path avoids existentials entirely, it also works under Embedded Swift; the Embedded example (`Examples/Embedded`) exercises a generic import, including a `@JS struct` round-trip.

## Generic exports

An exported generic `@JS` function reuses the same stack ABI, codec table, and handle-based type identity, with the dispatch reversed. The WebAssembly entry point is a concrete `@_expose` thunk that takes the runtime type ID as a trailing `Int32`. Because the ID is the address of the type's `BridgeJSTypeHandle`, the thunk recovers the concrete type directly — `Unmanaged<BridgeJSTypeHandle>.fromOpaque(...).takeUnretainedValue().type` — with no per-module registry, reifies `T` through an opened existential, and runs the same unspecialized body a concrete export would run: pop the arguments from the stack, call your function, push the result. The JavaScript wrapper resolves the caller's `BridgeType` token through the map built during type-handle registration and passes the resulting ID; an unknown token throws a `TypeError` *before* entering wasm, so the shared value stack stays balanced and the error is catchable. Pointer recovery means the wasm entry point trusts its caller: a raw wasm caller passing a garbage type ID is undefined behavior, which is acceptable because the generated JS wrapper is the only supported caller and it validates every token first. Because recovery depends on the handle's metatype storage (an existential), generic exports are excluded under Embedded Swift.

## What to read next

- ABI and binary interface details will be documented in this section as they stabilize.
- For using BridgeJS in your app, see <doc:Introducing-BridgeJS>, <doc:Importing-JavaScript-into-Swift>, and <doc:Exporting-Swift-to-JavaScript>.
