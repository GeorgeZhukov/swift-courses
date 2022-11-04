//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import XCTest

@testable import SwiftCourses

final class HomeTask3Tests: HomeTaskTests {
  override func getHomeTask() -> HometaskBase {
    return HomeTask3()
  }

  func testTask1ProductPrices() throws {
    let lines = [
      "За 2 товаров, цена товара будет равна 1000.0, полная цена будет равна: 2000.0",
      "За 12 товаров, цена товара будет равна 800.0, полная цена будет равна: 9600.0",
      "За 21 товаров, цена товара будет равна 600.0, полная цена будет равна: 12600.0",
      "За 35 товаров, цена товара будет равна 600.0, полная цена будет равна: 21000.0",
    ]
    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask2BirthdayQuarter() throws {
    assertContains(line: "Квартал в котором родился: 2")
  }

  func testTask3EmergencyLevels() throws {
    let lines = [
      "Emergency levelC: Соблюдать спокойствие",
      "Emergency levelA: Выключить все электрические приборы -> Закрыть входные двери и окна -> Соблюдать спокойствие",
      "Emergency levelB: Закрыть входные двери и окна -> Соблюдать спокойствие",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }

  func testTask4Calculation() throws {
    let lines = [
      "9.0 * 3.0 = 27.0",
      "9.0 / 3.0 = 3.0",
      "9.0 - 3.0 = 6.0",
      "9.0 + 3.0 = 12.0",
    ]

    for line in lines {
      assertContains(line: line)
    }
  }
}
