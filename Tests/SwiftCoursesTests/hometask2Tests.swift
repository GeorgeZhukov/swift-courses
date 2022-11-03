//
//  hometask2.swift
//
//
//  Created by George on 03.11.22.
//

import XCTest

@testable import SwiftCourses

final class HomeTask2Tests: XCTestCase {
  private var output: String = ""

  override func setUpWithError() throws {
    self.output = HomeTask2().output()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }

  func testTask1Sum() throws {
    let pattern = "Сумма: \\d+.\\d+"
    let regex = try! NSRegularExpression(pattern: pattern)
    let match = regex.firstMatch(
      in: self.output, range: .init(location: 0, length: self.output.count))
    XCTAssertNotNil(match)
  }

  func testTask2Mod() throws {
    let pattern = "При делении \\d+ на \\d+ результат равен \\d+, остаток равен \\d+"
    let regex = try! NSRegularExpression(pattern: pattern)
    let match = regex.firstMatch(
      in: self.output, range: .init(location: 0, length: self.output.count))

    XCTAssertNotNil(match)
  }

  func testTask3Division() throws {
    XCTAssertTrue(self.output.contains("Результат деления 10 на 7 равен 1 3/7"))
  }
}
