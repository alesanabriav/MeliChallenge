//
//  NetworkTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class NetworkTests: XCTestCase {

    func testShouldGet() {

		let exp = expectation(description: "get results")

		let network = Network.shared

		let session = URLSessionMock()

		session.dataStub = SearchResponseJSON.data(using: .utf8)

		network.session = session

		network.get(SearchResponse.self, from: "/search?q=iphone&limit=1") { result in

			switch result {
			case .success(let searchRes):

				print(searchRes)

				XCTAssertEqual(searchRes.paging.limit, 1)

				XCTAssertEqual(searchRes.results.count, 1)

				exp.fulfill()

			case .failure(let err):

				XCTFail()

				Logger.log(.error, error: err)
			}
		}

		waitForExpectations(timeout: 3, handler: nil)
        
    }

}
