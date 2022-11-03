import XCTest
@testable import SwiftCourses

final class mainTests: XCTestCase {
    func testMain() throws {

        XCTAssertNotNil(SwiftCourses().text)
    }
    
    func tastHometask2() throws {
        XCTAssertTrue(SwiftCourses().text.contains("Hometask #2"))
    }
}
