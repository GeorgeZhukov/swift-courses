public struct SwiftCourses {
    public private(set) var text = ""

    public init() {
        let hometasks: Array<HometaskBase> = [
            HomeTask2()
        ]
        
        for (index, hometask) in hometasks.enumerated() {
            self.text += "\n\nHometask #\(index+1)\n"
            self.text += hometask.output()
        }
    }
}


let app = SwiftCourses()
print(app.text)
