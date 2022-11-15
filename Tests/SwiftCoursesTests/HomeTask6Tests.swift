//
//  HomeTask6Tests.swift
//
//
//  Created by George on 15.11.22.
//

import XCTest

@testable import SwiftCourses

final class HomeTask6Tests: HomeTaskTests {
  override func getHomeTask() -> HometaskBase {
    return HomeTask6()
  }

  func testTask1GameResults() throws {
    let lines = [
      "Игра с Шахтер - 0:0",
      "Игра с Шахтер - 2:3",
      "Игра с Шахтер - 4:1",
      "Игра с Динамо - 3:5",
      "Игра с Динамо - 2:0",
      "Игра с Динамо - 1:3",
    ]

    for line in lines {
      assertContains(line: line)
    }

  }

  func testTask2DistanceFromBirthday() throws {
    let pattern = "Со дня рождения прошло: \\d+ лет, \\d+ месяцев и \\d+ дней"
    let regex = try! NSRegularExpression(pattern: pattern)
    let match = regex.firstMatch(
      in: self.output, range: .init(location: 0, length: self.output.count))

    XCTAssertNotNil(match)
  }

  func testTask3GenerateDate() throws {
    let lines = [
      "Сгенерирован массив: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100]",
      "Обработанный массив: [1, 5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47, 49, 53, 55, 59, 61, 65, 67, 71, 73, 77, 79, 83, 85, 89, 91, 95, 97]",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

}
