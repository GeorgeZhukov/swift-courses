import XCTest
@testable import SwiftCourses

final class mainTests: XCTestCase {
    private var buffer: String = ""

    override func setUp() {
        
        buffer = SwiftCourses().text
    }


    func testMain() throws {
        XCTAssertNotNil(buffer)
    }
    
    func testRendersHometask1() throws {
        XCTAssertTrue(buffer.contains("Hometask #1"))
    }

    func tastHometask2() throws {
        XCTAssertTrue(buffer.contains("Hometask #2"))
    }

    func tastHometask3() throws {
        XCTAssertTrue(buffer.contains("Hometask #3"))
    }
}
