//
//  SearchViewModel.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class SearchViewModel {

	private lazy var searchRepo = SearchRepository()

	private lazy var favoritesRepo = FavoritesRepository()

	var searchResponse = Observable<SearchResponse>()

	var searchResError = Observable<Error>()

	var resultSelected = Observable<SearchResult>()

	var recentQueries = Observable<[String]>([])

	var searchQuery = Observable<String>("")

	var favoritesIds: [String] = []

	var favoriteId: String?

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

	func storeFavorite(_ result: SearchResult) {

		favoritesRepo.storeFavorite(result: result)
	}

	func removeFavorite(by id: String) {

		favoritesRepo.removeFavorite(by: id)
	}

	func getFavoriteId(by id: String) {

		guard let fav = favoritesRepo.getFavorite(by: id) else {

			favoriteId = nil

			return
		}

		favoriteId = fav.id
	}

	func getFavoritesIds() {

		let ids = favoritesRepo.getFavoritesIds()

		favoritesIds = ids
	}

}
