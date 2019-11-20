import XCTest
@testable import CustomInput

final class CustomInputTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CustomInput().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
