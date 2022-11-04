//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import XCTest

@testable import SwiftCourses

class HomeTaskTests: XCTestCase {
  internal var output: String = ""

  override func setUpWithError() throws {
    self.output = self.getHomeTask().output()
  }

  override func tearDownWithError() throws {
  }

  func assertContains(line: String) {
    let result = self.output.contains(line)
    if !result {
      print(self.output)
      print("self.output not contains: \(line)")
    }
    XCTAssertTrue(result)
  }

  func getHomeTask() -> HometaskBase {
    return HometaskBase()
  }
}
