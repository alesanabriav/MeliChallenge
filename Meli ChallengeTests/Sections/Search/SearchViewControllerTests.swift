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

		Logger.log("onDeinit 1 __________")

		var vc: SearchViewController? = SearchViewController()

		vc?.viewDidLoad()

		vc?.onDeinit = {

			exp.fulfill()

			Logger.log("onDeinit 2 ______")
		}

		vc = nil

		waitForExpectations(timeout: 3)
    }

}
