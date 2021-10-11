//
//  FavoritesRepository.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import Foundation

class FavoritesRepository {

	private lazy var cache = Cache.shared

	func storeFavorite(result: SearchResult) {

		let key = "\(Cache.Key.favoriteItem)_\(result.id)"

		cache.store(result, forKey: key)
	}

	func getFavorite(by id: String) -> SearchResult? {

		let key = "\(Cache.Key.favoriteItem)_\(id)"

		let fav = cache.get(SearchResult.self, forKey: key)

		return fav
	}

	func removeFavorite(by id: String) {

		let key = "\(Cache.Key.favoriteItem)_\(id)"

		cache.remove(forKey: key)
	}

	func getFavoritesIds() -> [String] {

		var ids: [String] = []

		let keys = cache.keys(by: Cache.Key.favoriteItem.rawValue)

		for key in keys {

			guard let result = cache.get(SearchResult.self, forKey: key) else {
				continue
			}

			ids.append(result.id)
		}

		return ids
	}

	func getFavorites() -> [SearchResult] {

		let keys = cache.keys(by: Cache.Key.favoriteItem.rawValue)

		var values: [SearchResult] = []

		for key in keys {

			guard let result = cache.get(SearchResult.self, forKey: key) else {
				continue
			}

			values.append(result)
		}

		return values
	}

	func cleanFavorites() {

		let keys = cache.keys(by: Cache.Key.favoriteItem.rawValue)

		for key in keys {

			cache.remove(forKey: key)
		}
	}
}
