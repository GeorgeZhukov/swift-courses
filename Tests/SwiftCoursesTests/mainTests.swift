import XCTest
@testable import SwiftCourses

final class mainTests: XCTestCase {
    func testMain() throws {

        XCTAssertNotNil(SwiftCourses().text)
    }
}
