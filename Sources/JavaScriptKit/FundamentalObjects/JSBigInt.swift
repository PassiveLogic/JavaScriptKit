import _CJavaScriptKit

private var constructor: JSObject { JSObject.global.BigInt.object! }

/// A wrapper around [the JavaScript `BigInt`
/// class](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Array)
/// that exposes its properties in a type-safe and Swifty way.
public final class JSBigInt: JSObject {
    @_spi(JSObject_id)
    override public init(id: JavaScriptObjectRef) {
        super.init(id: id)
    }

    /// Instantiate a new `JSBigInt` with given Int64 value in a slow path
    /// This doesn't require [JS-BigInt-integration](https://github.com/WebAssembly/JS-BigInt-integration) feature.
    public init(_slowBridge value: Int64) {
        let value = UInt64(bitPattern: value)
        super.init(id: swjs_i64_to_bigint_slow(UInt32(value & 0xffff_ffff), UInt32(value >> 32), true))
    }

    /// Instantiate a new `JSBigInt` with given UInt64 value in a slow path
    /// This doesn't require [JS-BigInt-integration](https://github.com/WebAssembly/JS-BigInt-integration) feature.
    public init(_slowBridge value: UInt64) {
        super.init(id: swjs_i64_to_bigint_slow(UInt32(value & 0xffff_ffff), UInt32(value >> 32), false))
    }

    override public var jsValue: JSValue {
        .bigInt(self)
    }

    public func clamped(bitSize: Int, signed: Bool) -> JSBigInt {
        #if hasFeature(Embedded)
        // Embedded (khasm port): the two-argument @dynamicMemberLookup call path crashes the
        // 6.5-dev frontend (Abort: getOrigParamIndex, ParameterPack.cpp:387); route through
        // the [JSValue] call primitive instead — behavior-identical.
        let fn = signed ? constructor.asIntN.object! : constructor.asUintN.object!
        return fn.invokeNonThrowingJSFunction(
            arguments: [bitSize.jsValue, self.jsValue],
            this: constructor.object!
        ).jsValue.bigInt!
        #else
        if signed {
            return constructor.asIntN(bitSize, self).bigInt!
        } else {
            return constructor.asUintN(bitSize, self).bigInt!
        }
        #endif
    }
}

public protocol JSBigIntExtended: JSBigInt {
    var int64Value: Int64 { get }
    var uInt64Value: UInt64 { get }

    init(_ value: Int64)
    init(unsigned value: UInt64)
}
