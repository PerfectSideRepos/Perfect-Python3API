import XCTest
@testable import PerfectPython3API

final class PerfectPython3APITests: XCTestCase {
    func testExample() {
        Py_Initialize();
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
