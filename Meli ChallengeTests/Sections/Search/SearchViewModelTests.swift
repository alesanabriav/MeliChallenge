//
//  SearchViewModelTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class SearchViewModelTests: XCTestCase {

	let session = URLSessionMock()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {

		session.dataStub = nil

		session.statusCode = 200
    }

    func testShouldGetSearchResponse() throws {

		let exp = expectation(description: "get search response")

		session.dataStub = SearchResponseJSON.data(using: .utf8)

		Network.shared.session = session

		let vm = SearchViewModel()

		vm.searchResponse.observe { searchRes in

			XCTAssertEqual(searchRes.results.count, 10)

			exp.fulfill()
		}

		vm.searchBy(query: "airpods")

		waitForExpectations(timeout: 3, handler: nil)

    }

	func testShouldStoreRecentQuery() throws {

		let exp = expectation(description: "get recent queries")

		let vm = SearchViewModel()

		let query = "ipad"

		vm.storeRecentQuery(query)

		vm.recentQueries.observe { queries in

			XCTAssertEqual(queries.first, query)

			exp.fulfill()
		}

		vm.getRecentQueries()

		waitForExpectations(timeout: 3, handler: nil)
	}


}
