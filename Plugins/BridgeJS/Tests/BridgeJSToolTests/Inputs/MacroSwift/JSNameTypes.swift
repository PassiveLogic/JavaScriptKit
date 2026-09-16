@JS("PublicBox") final class SwiftBox {
    @JS init()
    @JS func copy() -> SwiftBox
}

@JS("PublicChoice") enum SwiftChoice {
    case first
    case second
}

@JS func renamedChoice(_ value: SwiftChoice) -> SwiftChoice
