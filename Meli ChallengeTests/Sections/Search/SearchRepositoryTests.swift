//
//  SearchRepositoryTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class SearchRepositoryTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testShouldSearchByQuery() throws {

		let exp = expectation(description: "get query results")

		let repo = SearchRepository()

		repo.searchBy(query: "iphone") { result in

			switch result {

			case .success(let res):

				XCTAssertEqual(res.results.count, 50)

				exp.fulfill()

			case .failure(let err):

				XCTFail("\(err)")
			}

		}

		waitForExpectations(timeout: 3, handler: nil)
    }

}
