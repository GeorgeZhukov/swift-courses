import XCTest
@testable import SwiftCourses

final class mainTests: XCTestCase {
    func testMain() throws {
        XCTAssertNotNil(SwiftCourses().text)
    }
    
    // func testRendersHometask1() throws {
    //     XCTAssertTrue(SwiftCourses().text.contains("Hometask #1"))
    // }
}
