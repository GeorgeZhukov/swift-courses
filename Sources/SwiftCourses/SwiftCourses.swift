public struct SwiftCourses {
  private var tasks: [HometaskBase] = []

  public init() {
    self.tasks = [
      HomeTask1(name: "Hometask #1"),
      HomeTask2(name: "Hometask #2"),
      HomeTask3(name: "Hometask #3"),
      HomeTask4(name: "Hometask #4"),
    ]
  }

  public func buffer() -> String {
    return self.tasks.map { task in task.output() }.joined(separator: "\n")
  }

  public func render() {
    print(self.buffer())
  }
}
