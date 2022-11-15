public struct SwiftCourses {
  private var tasks: [HometaskBase] = []

  public init() {
    self.tasks = [
      HomeTask6(name: "Hometask #6")
    ]
  }

  public func buffer() -> String {
    return self.tasks.map { task in task.output() }.joined(separator: "\n")
  }

  public func render() {
    print(self.buffer())
  }
}
