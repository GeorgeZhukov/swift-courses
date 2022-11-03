//
//  File.swift
//
//
//  Created by George on 03.11.22.
//

import XCTest

@testable import SwiftCourses

final class HomeTask3Tests: XCTestCase {
  private var output: String = ""

  override func setUpWithError() throws {
    self.output = HomeTask3().output()
  }

  override func tearDownWithError() throws {
    //    print(self.output)
  }

  override func tearDown() {
    //    print(self.output)
  }

  func assertContains(line: String) {
    let result = self.output.contains(line)
    if !result {
      print(self.output)
      print("self.output not contains: \(line)")
    }
    XCTAssertTrue(result)

  }

  func testTask1ProductPrices() throws {
    let lines = [
      "За 2 товаров, цена товара будет равна 1000.0, полная цена будет равна: 2000.0",
      "За 12 товаров, цена товара будет равна 800.0, полная цена будет равна: 9600.0",
      "За 21 товаров, цена товара будет равна 600.0, полная цена будет равна: 12600.0",
      "За 35 товаров, цена товара будет равна 600.0, полная цена будет равна: 21000.0",
    ]
    for line in lines {
      XCTAssertTrue(self.output.contains(line))
    }
  }

  func testTask2BirthdayQuarter() throws {
    return XCTAssertTrue(self.output.contains("Квартал в котором родился: 2"))
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
