import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(PerfectPython3APITests.allTests),
    ]
}
#endif
