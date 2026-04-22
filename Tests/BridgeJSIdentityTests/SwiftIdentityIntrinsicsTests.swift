import XCTest
@_spi(BridgeJS) import JavaScriptKit

final class SwiftIdentityIntrinsicsTests: XCTestCase {
    func testPushPopIdFreshBitPair() throws {
        #if arch(wasm32)
        // Swift pushes id=42 then freshBit=1; pops in LIFO order:
        // first pop = freshBit, second pop = id.
        _swift_js_push_i32(42)
        _swift_js_push_i32(1)
        XCTAssertEqual(_swift_js_pop_i32(), 1)  // freshBit
        XCTAssertEqual(_swift_js_pop_i32(), 42)  // id
        #else
        throw XCTSkip("Stack intrinsics are wasm32-only")
        #endif
    }
}
