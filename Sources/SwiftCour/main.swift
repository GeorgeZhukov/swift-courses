
public struct SwiftCour {
    public private(set) var text = ""

    public init() {
        self.text += hometask1().output()
    }
}


let app = SwiftCour()
print(app.text)

