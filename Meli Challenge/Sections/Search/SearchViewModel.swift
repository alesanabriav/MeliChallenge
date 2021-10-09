//
//  SearchViewModel.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class SearchViewModel {

	private lazy var searchRepo = SearchRepository()

	var results: SearchResponse?

	func searchBy(query: String) {

		searchRepo.searchBy(query: query, limit: 50) { result in


		}
	}
}
