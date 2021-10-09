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
	var seller: Seller
	var price: Int
	var currency_id: String

	struct Seller : Codable {
		var id: Int
	}
}
