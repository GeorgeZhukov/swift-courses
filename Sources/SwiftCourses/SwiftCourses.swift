public struct SwiftCourses {
  private var tasks: [HometaskBase] = []

  public init() {
    self.tasks = [HomeTask1(name: "Hometask #1")]
  }

  public func buffer() -> String {
    return self.tasks.map { task in task.output() }.joined(separator: "\n")
  }

  public func render() {
    print(self.buffer())
  }
}
