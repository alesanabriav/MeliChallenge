//
//  SearchViewModel.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class SearchViewModel {

	private lazy var searchRepo = SearchRepository()

	var searchResponse = Observable<SearchResponse>()

	var searchResError = Observable<Error>()

	var resultSelected = Observable<SearchResult>()

	var recentQueries = Observable<[String]>([])

	var searchQuery = Observable<String>("")

	func searchBy(query: String) {

		searchRepo.searchBy(query: query, limit: 50) { [weak self] result in

			switch result {

			case .success(let res):

				self?.searchResponse.value = res

			case .failure(let err):

				self?.searchResError.value = err
			}

		}
	}

	func storeRecentQuery(_ query: String) {

		searchRepo.storeRecentQuery(query)
	}

	func getRecentQueries() {

		let queries = searchRepo.getRecentQueries()

		recentQueries.value = queries
	}
}
