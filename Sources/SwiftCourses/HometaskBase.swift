//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import Foundation

public class HometaskBase {
  public typealias TaskResult = [String]
  public typealias TaskList = [() -> TaskResult]

  private let name: String

  init(name: String = "Hometask") {
    self.name = name
  }

  public func output() -> String {
    let data = self.tasks().enumerated().map { index, taskFunction in
      let taskNo: String = "[#\(index + 1)]"
      let taskResult: TaskResult = taskFunction()

      let tasksOutput = taskResult.map { line in "\n  → \(line)" }.joined()
      return "\(taskNo) \(tasksOutput)"
    }

    let buffer = data.joined(separator: "\n ")
    return """
      Task: \(name)
       \(buffer)


      """
  }

  public func tasks() -> TaskList {
    return []
  }
}
