import XCTest

class SubscriptionSentryUITests: XCTestCase {

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.isRunning)
    }
}
