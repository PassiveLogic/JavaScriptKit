import JavaScriptKit

@JS(identityMode: .swift)
class SwiftCached {
    @JS var name: String
    @JS init(name: String) { self.name = name }
}

@JS(identityMode: .pointer)
class WeakCached {
    @JS var value: Int
    @JS init(value: Int) { self.value = value }
}

@JS class Untouched {
    @JS var v: Int
    @JS init(v: Int) { self.v = v }
}
