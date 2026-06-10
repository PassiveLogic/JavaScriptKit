import XCTest
import JavaScriptKit
import JavaScriptEventLoop

/// Reproducer for swiftlang/swift#89320 (fix in flight: swiftlang/swift#89715):
/// on wasm32, a typed error thrown from a CAPTURELESS async closure value or
/// function reference (lowered via `thin_to_thick_function`) is lost across the
/// async unwind when the error type is too large for the direct error convention.
/// Capturing closures, direct async function calls, and small error payloads are
/// unaffected. The bug cases below assert the current (incorrect) behavior so the
/// suite stays green; flip them once swiftlang/swift#89715 lands.

// MARK: - Payload types

struct PlainValuePayloadError: Error, Equatable {
    let marker: String
}

/// Intentionally limited to trivially-copyable fields: the corrupted error produced by
/// swiftlang/swift#89320 is unsafe to read through String or class-reference payloads.
struct LargePayloadError: Error, Equatable {
    let first: UInt64
    let second: UInt64
    let third: UInt64
    let marker: UInt64
}

final class MarkerBox: @unchecked Sendable {
    let marker: String
    init(_ marker: String) { self.marker = marker }
}
struct ReferencePayloadError: Error {
    let box: MarkerBox
}

// MARK: - Control "async function" forms (payload must survive)

private func asyncFunctionThrowsValue() async throws(PlainValuePayloadError) {
    throw PlainValuePayloadError(marker: "ALIVE")
}

private func asyncFunctionThrowsReference() async throws(ReferencePayloadError) {
    throw ReferencePayloadError(box: MarkerBox("ALIVE"))
}

private func asyncFunctionThrowsJSException() async throws(JSException) {
    throw JSException(JSError(message: "ALIVE").jsValue)
}

@inline(never)
private func largePayloadAfterThrow(
    _ closure: () async throws(LargePayloadError) -> Void
) async -> LargePayloadError? {
    do {
        try await closure()
        return nil
    } catch {
        return error
    }
}

final class TypedThrowsAsyncClosureBugTests: XCTestCase {

    func testControl_valuePayload_asyncFunction() async throws {
        do {
            try await asyncFunctionThrowsValue()
            XCTFail("expected throw")
        } catch let error as PlainValuePayloadError {
            print("[REPRO] value / async function           payload: \(error.marker)")
            XCTAssertEqual(error.marker, "ALIVE")
        }
    }

    func testControl_valuePayload_typedThrowsAsyncClosure() async throws {
        let closure: () async throws(PlainValuePayloadError) -> Void = {
            () async throws(PlainValuePayloadError) -> Void in
            throw PlainValuePayloadError(marker: "ALIVE")
        }
        do {
            try await closure()
            XCTFail("expected throw")
        } catch let error as PlainValuePayloadError {
            print("[REPRO] value / typed-throws async closure payload: \(error.marker)")
            XCTAssertEqual(error.marker, "ALIVE")
        }
    }

    func testControl_valuePayload_untypedAsyncClosure() async throws {
        let closure: () async throws -> Void = {
            throw PlainValuePayloadError(marker: "ALIVE")
        }
        do {
            try await closure()
            XCTFail("expected throw")
        } catch let error as PlainValuePayloadError {
            print("[REPRO] value / untyped async closure     payload: \(error.marker)")
            XCTAssertEqual(error.marker, "ALIVE")
        }
    }

    func testControl_referencePayload_asyncFunction() async throws {
        do {
            try await asyncFunctionThrowsReference()
            XCTFail("expected throw")
        } catch let error as ReferencePayloadError {
            print("[REPRO] ref   / async function           payload: \(error.box.marker)")
            XCTAssertEqual(error.box.marker, "ALIVE")
        }
    }

    func testControl_referencePayload_typedThrowsAsyncClosure() async throws {
        let closure: () async throws(ReferencePayloadError) -> Void = {
            () async throws(ReferencePayloadError) -> Void in
            throw ReferencePayloadError(box: MarkerBox("ALIVE"))
        }
        do {
            try await closure()
            XCTFail("expected throw")
        } catch let error as ReferencePayloadError {
            print("[REPRO] ref   / typed-throws async closure payload: \(error.box.marker)")
            XCTAssertEqual(error.box.marker, "ALIVE")
        }
    }

    func testControl_jsException_asyncFunction() async throws {
        do {
            try await asyncFunctionThrowsJSException()
            XCTFail("expected throw")
        } catch let error as JSException {
            let alive = error.thrownValue.object != nil
            print("[REPRO] jsexc / async function           object!=nil: \(alive)")
            XCTAssertTrue(alive, "async function should preserve the thrown JS object")
            XCTAssertEqual(error.thrownValue.object?.message.string, "ALIVE")
        }
    }

    func testControl_jsException_untypedAsyncClosure() async throws {
        let closure: () async throws -> Void = {
            throw JSException(JSError(message: "ALIVE").jsValue)
        }
        do {
            try await closure()
            XCTFail("expected throw")
        } catch let error as JSException {
            let alive = error.thrownValue.object != nil
            print("[REPRO] jsexc / untyped async closure     object!=nil: \(alive)")
            XCTAssertTrue(alive, "untyped async closure should preserve the thrown JS object")
            XCTAssertEqual(error.thrownValue.object?.message.string, "ALIVE")
        } catch {
            XCTFail("unexpected error type: \(error)")
        }
    }

    func testControl_jsException_capturingTypedThrowsAsyncClosure() async throws {
        let capturedMarker = "ALIVE"
        let closure: () async throws(JSException) -> Void = { () async throws(JSException) -> Void in
            throw JSException(JSError(message: capturedMarker).jsValue)
        }
        do {
            try await closure()
            XCTFail("expected throw")
        } catch let error as JSException {
            let alive = error.thrownValue.object != nil
            print("[REPRO] jsexc / capturing typed-throws closure object!=nil: \(alive)")
            XCTAssertTrue(alive, "capturing typed-throws async closure should preserve the thrown JS object")
            XCTAssertEqual(error.thrownValue.object?.message.string, "ALIVE")
        }
    }

    /// Asserts the current (buggy) behavior of swiftlang/swift#89320: the JSException payload is lost.
    /// When the compiler is fixed this test will fail; flip to XCTAssertTrue(alive).
    func testBug_jsException_typedThrowsAsyncClosure() async throws {
        let closure: () async throws(JSException) -> Void = { () async throws(JSException) -> Void in
            throw JSException(JSError(message: "ALIVE").jsValue)
        }
        do {
            try await closure()
            XCTFail("expected throw")
        } catch let error as JSException {
            let alive = error.thrownValue.object != nil
            print("[REPRO] jsexc / typed-throws async closure object!=nil: \(alive)  <-- BUG: payload lost")

            XCTAssertFalse(
                alive,
                """
                swiftlang/swift#89320 is expected to LOSE the JSException payload \
                thrown from a captureless typed-throws async closure. If this \
                assertion now fails, the compiler bug appears fixed -- flip this to \
                XCTAssertTrue(alive) and re-enable the message round-trip check.
                """
            )
        }
    }

    /// Asserts the current (buggy) behavior of swiftlang/swift#89320 with a plain Swift
    /// error larger than the direct error convention: no JavaScriptKit types involved.
    func testBug_largePlainPayload_typedThrowsAsyncClosure() async throws {
        let expected = LargePayloadError(
            first: 0x1111_1111_1111_1111,
            second: 0x2222_2222_2222_2222,
            third: 0x3333_3333_3333_3333,
            marker: 0xA11FE
        )
        let closure: () async throws(LargePayloadError) -> Void = { () async throws(LargePayloadError) -> Void in
            throw LargePayloadError(
                first: 0x1111_1111_1111_1111,
                second: 0x2222_2222_2222_2222,
                third: 0x3333_3333_3333_3333,
                marker: 0xA11FE
            )
        }
        let observed = await largePayloadAfterThrow(closure)
        XCTAssertNotNil(observed, "expected throw")
        let observedDescription = observed.map {
            "first: \(String($0.first, radix: 16)) second: \(String($0.second, radix: 16)) "
                + "third: \(String($0.third, radix: 16)) marker: \(String($0.marker, radix: 16))"
        }
        print("[REPRO] large / typed-throws async closure \(observedDescription ?? "nil")  <-- BUG: payload lost")

        XCTAssertNotEqual(
            observed,
            expected,
            """
            swiftlang/swift#89320 is expected to LOSE the large plain-Swift error \
            payload thrown from a captureless typed-throws async closure. If this \
            assertion now fails, the compiler bug appears fixed -- flip this to \
            assert the payload is preserved.
            """
        )
    }
}
