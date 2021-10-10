//
//  SearchRepositoryTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class SearchRepositoryTests: XCTestCase {

	let session = URLSessionMock()

	override func tearDownWithError() throws {

		session.dataStub = nil
	}

    func testShouldSearchByQuery() throws {

		let exp = expectation(description: "get query results")

		session.dataStub = SearchResponseJSON.data(using: .utf8)

		Network.shared.session = session

		let repo = SearchRepository()

		let limit = 10

		repo.searchBy(query: "iphone", limit: limit) { result in

			switch result {

			case .success(let res):

				XCTAssertEqual(res.results.count, limit)

				XCTAssertEqual(res.paging.limit, limit)

				exp.fulfill()

			case .failure(let err):

				XCTFail("\(err)")
			}

		}

		waitForExpectations(timeout: 3, handler: nil)
    }

	func testShouldStoreRecentQuery() throws {

		let repo = SearchRepository()

		let query = "iphone"

		repo.storeRecentQuery(query)

		let queries = repo.getRecentQueries()

		XCTAssertEqual(queries.first, query)
	}


	func testShouldStoreFavorite() throws {

		let repo = SearchRepository()

		let result = SearchResult(id: "MCO7", site_id: "MCO", title: "iPhone 13", seller: nil, price: 4700000, currency_id: "COP", thumbnail: "", accepts_mercadopago: true, installments: nil, shipping: nil, available_quantity: 5, buying_mode: "", condition: "new")

		repo.storeFavorite(result: result)

		let results = repo.getFavorites()

		XCTAssertEqual(results.first, result)
	}

}
