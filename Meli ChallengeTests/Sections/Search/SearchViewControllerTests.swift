//
//  SearchViewControllerTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import XCTest
@testable import Meli_Challenge

class SearchViewControllerTests: XCTestCase {

    func testShouldDeinit() throws {

		let exp = expectation(description: "deinit vc")

		exp.expectedFulfillmentCount = 2

		let start = Date()

		Logger.log("onDeinit 1 __________ \(start)")

		var vc: SearchViewController? = SearchViewController()

		vc?.onDeinit = {

			let end = Date()

			exp.fulfill()

			Logger.log("onDeinit 2 _____\(end)")

		}

		DispatchQueue.main.async {

			vc = nil

			XCTAssertNil(vc)

			exp.fulfill()
		}

		waitForExpectations(timeout: 2, handler: nil)
    }

}
