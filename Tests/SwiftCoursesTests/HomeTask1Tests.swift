//
//  hometask1Tests.swift
//
//
//  Created by George on 03.11.22.
//

import XCTest

@testable import SwiftCourses

final class HomeTask1Tests: HomeTaskTests {
  override func getHomeTask() -> HometaskBase {
    return HomeTask1()
  }

  func testTask1ICanCode() throws {
    assertContains(line: "I can code!")
  }

  func testTask2AgeCalc() throws {
    let pattern =
      "Мой возраст \\d{2} лет. Через 10 лет, мне будет \\d{2} лет, с момента моего рождения пройдет [\\d\\.]+ дней."
    let regex = try! NSRegularExpression(pattern: pattern)
    let match = regex.firstMatch(
      in: self.output, range: .init(location: 0, length: self.output.count))

    XCTAssertNotNil(match)
  }

  func testTask3TriangleCalc() throws {
    assertContains(line: "Катеты: AB = 8.0, CB = 6.0, Вычесленная гипотинуза: CA = 10.0")
  }

}
