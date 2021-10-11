//
//  FavoritesRepositoryTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import XCTest
@testable import Meli_Challenge

class FavoritesRepositoryTests: XCTestCase {

	override func setUpWithError() throws {

		let repo = FavoritesRepository()

		repo.cleanFavorites()
	}

	func testShouldStoreFavorite() throws {

		let repo = FavoritesRepository()

		let result = SearchResult(id: "MCO7", site_id: "MCO", title: "iPhone 13", seller: nil, price: 4700000, currency_id: "COP", thumbnail: "", accepts_mercadopago: true, installments: nil, shipping: nil, available_quantity: 5, buying_mode: "", condition: "new")

		repo.storeFavorite(result: result)

		let results = repo.getFavorites()

		XCTAssertEqual(results.first, result)
	}

	func testShouldGetFavorite() throws {

		let repo = FavoritesRepository()

		let result = SearchResult(id: "MCO7", site_id: "MCO", title: "iPhone 13", seller: nil, price: 4700000, currency_id: "COP", thumbnail: "", accepts_mercadopago: true, installments: nil, shipping: nil, available_quantity: 5, buying_mode: "", condition: "new")

		repo.storeFavorite(result: result)

		let resultStored = repo.getFavorite(by: result.id)

		XCTAssertEqual(resultStored, result)
	}

	func testShouldGetFavoritesIds() throws {

		let repo = FavoritesRepository()

		let result1 = SearchResult(id: "MCO7", site_id: "MCO", title: "iPhone 13", seller: nil, price: 4700000, currency_id: "COP", thumbnail: "", accepts_mercadopago: true, installments: nil, shipping: nil, available_quantity: 5, buying_mode: "", condition: "new")


		let result2 = SearchResult(id: "MCO78", site_id: "MCO", title: "iPhone 11", seller: nil, price: 4700000, currency_id: "COP", thumbnail: "", accepts_mercadopago: true, installments: nil, shipping: nil, available_quantity: 5, buying_mode: "", condition: "new")


		repo.storeFavorite(result: result1)

		repo.storeFavorite(result: result2)

		let ids = repo.getFavoritesIds()

		XCTAssertEqual(ids.count, 2)

	}

}
