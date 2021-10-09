//
//  SearchResults.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

struct SearchResults : Codable {

	var id: String
	var siteId: String
	var title: String
	var seller: Seller
	var price: Int
	var currencyId: String

	struct Seller : Codable {
		var id: Int
	}
}

struct SearchResponse : Codable {

	var site_id: String
	var paging: Paging
	var results: SearchResults

	struct Paging : Codable {
		var total: Int
		var offset: Int
		var limit: Int
		var primaryResults: Int
	}
}
