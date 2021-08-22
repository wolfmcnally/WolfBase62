import XCTest
@testable import WolfBase62

final class WolfBase62Tests: XCTestCase {
    func testBase62() throws {
        let s = "Hello, world!"
        let e = Base62.encode(s.serialized)
        XCTAssertEqual(e, "B6Tp195nl3rd0FKXjL")
        let d = String(data: Base62.decode(e)!, encoding: .utf8)
        XCTAssertEqual(d, s)
    }
}
