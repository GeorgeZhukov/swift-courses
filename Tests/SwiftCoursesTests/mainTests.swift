import XCTest

@testable import SwiftCourses

final class mainTests: XCTestCase {
  private var buffer: String = ""

  override func setUp() {
    self.buffer = SwiftCourses().buffer()
  }

  func testMain() throws {
    XCTAssertNotNil(buffer)
  }

  func testRendersHometask1() throws {
    XCTAssertTrue(buffer.contains("Task: Hometask #1"))
  }

  func tastHometask2() throws {
    XCTAssertTrue(buffer.contains("Task: Hometask #1"))
  }

  func tastHometask3() throws {
    XCTAssertTrue(buffer.contains("Task: Hometask #1"))
  }
}
