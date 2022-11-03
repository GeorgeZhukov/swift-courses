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
    XCTAssertTrue(self.output.contains("Квартал в котором родился: 2"))
  }

  func testTask3EmergencyLevels() throws {
    XCTAssertTrue(self.output.contains("Emergency Level C: \n\tСоблюдать спокойствие"))
    XCTAssertTrue(
      self.output.contains(
        "Emergency Level A: \n\tВыключить все электрические приборы\n\tЗакрыть входные двери и окна\n\tСоблюдать спокойствие"
      ))
    XCTAssertTrue(
      self.output.contains(
        "Emergency Level B: \n\tЗакрыть входные двери и окна\n\tСоблюдать спокойствие"))
  }

  func testTask4Calculation() throws {
    let lines = [
      "sum(9.0, 3.0): 12.0",
      "diff(9.0, 3.0): 6.0",
      "multiply(9.0, 3.0): 27.0",
      "div(9.0, 3.0): 3.0",
    ]

    for line in lines {
      XCTAssertTrue(self.output.contains(line))
    }
  }
}
