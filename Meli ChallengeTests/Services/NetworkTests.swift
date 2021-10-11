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

		let limit = 10

		network.get(SearchResponse.self, from: "/search?q=iphone&limit=\(limit)") { result in

			switch result {
			case .success(let searchRes):

				print(searchRes)

				XCTAssertEqual(searchRes.paging.limit, limit)

				XCTAssertEqual(searchRes.results.count, limit)

				exp.fulfill()

			case .failure(let err):

				XCTFail()

				Logger.error(err)
			}
		}

		waitForExpectations(timeout: 3, handler: nil)
        
    }

}
