//
//  ListTestProjectTests.swift
//  ListTestProjectTests
//
//  Created by eidd5180 on 05/08/2021.
//

import XCTest
@testable import ListTestProject


class ListTestProjectTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let manager = TodoListManager.emptyState()
        XCTAssert(manager.items.count == 1, "should start with empty list")
        manager.addItem()
        XCTAssertTrue(manager.items.count == 1, "should have one todo after adding")
    }
}
