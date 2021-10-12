//
//  Item.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import Foundation

struct ItemDescription : Codable {

	var plain_text: String
}

struct ItemSellerResponse : Codable {
	var seller: ItemSeller
	var results: [SearchResult]?
}

struct ItemSeller : Codable {
	var id: Int
	var nickname: String
	var seller_reputation: Reputation?

	struct Reputation : Codable {
		var level_id: String
		var power_seller_status: String?
		var transactions: Transactions?
		var metrics: Metrics?
	}

	struct Transactions : Codable {
		var total: Int
		var completed: Int
		var canceled: Int
	}

	struct Metrics : Codable {
		var sales: Sales
	}

	struct Sales : Codable {
		var period: String
		var completed: Int
	}
}
