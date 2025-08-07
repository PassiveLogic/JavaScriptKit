@JS("__Swift.Foundation.UUID") func create() -> String { UUID().uuidString }
@JS("__Swift.Foundation.UUID") func validate(uuid: String) -> Bool { true }
@JS func plainFunction() -> String { "plain" }
