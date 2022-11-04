public struct SwiftCourses {
  private var tasks: [HometaskBase] = []

  public init() {
    self.tasks = [HomeTask2(name: "Hometask #2")]
  }

  public func buffer() -> String {
    return self.tasks.map { task in task.output() }.joined(separator: "\n")
  }

  public func render() {
    print(self.buffer())
  }
}
