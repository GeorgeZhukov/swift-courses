//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import Foundation

public class HometaskBase {
  private let name: String

  init(name: String = "Hometask") {
    self.name = name
  }

  public func output() -> String {
    let data = self.tasks().enumerated().map { index, taskFunction in
      let taskNo: String = "[#\(index + 1)] →"
      let taskResult: String = taskFunction()

      return "\(taskNo) \(taskResult)"
    }

    let buffer = data.joined(separator: "\n ")
    return """
      Task: \(name)
       \(buffer)


      """
  }

  public func tasks() -> [() -> String] {
    return []
  }
}
