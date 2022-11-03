public struct SwiftCour {
    public private(set) var text = ""

    public init() {
        self.text += hometask2().output()
    }
}


let app = SwiftCour()
print(app.text)
