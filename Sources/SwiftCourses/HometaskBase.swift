//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import Foundation

public class HometaskBase {
  public func output() -> String {
    let data = self.tasks().enumerated().map { index, taskFunction in
      let taskNo: String = "[#\(index + 1)] →"
      let taskResult: String = taskFunction()

      return "\(taskNo) \(taskResult)"
    }
    return data.joined(separator: "\n")

  }

  public func tasks() -> [() -> String] {
    return []
  }
}
