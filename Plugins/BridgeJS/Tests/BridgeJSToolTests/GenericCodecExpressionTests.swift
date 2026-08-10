import Testing

@testable import BridgeJSLink
@testable import BridgeJSSkeleton

/// The codec a generic call site instantiates for each supported wrapped form
/// of a generic parameter (`T`, `[T]`, `T?`, `[String: T]`).
@Suite struct GenericCodecExpressionTests {
    @Test func bareGenericUsesTheElementCodecDirectly() {
        #expect(GenericJSCodegen.genericCodecExpression(type: .generic("T"), codec: "c") == "c")
    }

    @Test func wrappedGenericsInstantiateTheSharedCombinators() {
        #expect(
            GenericJSCodegen.genericCodecExpression(type: .array(.generic("T")), codec: "c")
                == "__bjs_arrayCodec(c)"
        )
        #expect(
            GenericJSCodegen.genericCodecExpression(type: .dictionary(.generic("T")), codec: "c")
                == "__bjs_dictCodec(c)"
        )
    }

    /// The optional combinator carries the null-vs-undefined flavour in its
    /// second argument, so the generic path must not drop `JSOptionalKind`.
    @Test func optionalGenericPreservesTheOptionalKind() {
        #expect(
            GenericJSCodegen.genericCodecExpression(type: .nullable(.generic("T"), .null), codec: "c")
                == "__bjs_optionalCodec(c)"
        )
        #expect(
            GenericJSCodegen.genericCodecExpression(type: .nullable(.generic("T"), .undefined), codec: "c")
                == "__bjs_optionalCodec(c, true)"
        )
    }

    @Test func nonGenericTypesHaveNoGenericCodec() {
        #expect(GenericJSCodegen.genericCodecExpression(type: .string, codec: "c") == nil)
        #expect(GenericJSCodegen.genericCodecExpression(type: .array(.integer(.int)), codec: "c") == nil)
    }
}
