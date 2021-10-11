//
//  SearchResults.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

struct SearchResponse : Codable {

	var site_id: String
	var paging: Paging
	var results: [SearchResult]

	struct Paging : Codable {
		var total: Int
		var offset: Int
		var limit: Int
		var primary_results: Int
	}
}

struct SearchResult : Codable {
	var id: String
	var site_id: String
	var title: String
	var seller: Seller?
	var price: Int
	var currency_id: String
	var thumbnail: String
	var accepts_mercadopago: Bool
	var installments: Installments?
	var shipping: Shipping?
	var address: Address?
	var available_quantity: Int
	var sold_quantity: Int
	var buying_mode: String
	var condition: String

	struct Shipping : Codable {
		var free_shipping: Bool
		var mode: String
		var store_pick_up: Bool
	}

	struct Address : Codable {
		var state_name: String
		var city_name: String
	}

	struct Installments : Codable {
		var quantity: Int
		var amount: Double
		var rate: Int
		var currency_id: String
	}

	struct Seller : Codable {
		var id: Int
	}
}

extension SearchResult : Equatable {

	static func == (lhs: SearchResult, rhs: SearchResult) -> Bool {

		return lhs.id == rhs.id &&
			lhs.title == rhs.title &&
			lhs.price == rhs.price &&
			lhs.available_quantity == rhs.available_quantity
	}

}
