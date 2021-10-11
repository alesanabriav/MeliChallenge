//
//  SearchRepository.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class SearchRepository {

	private lazy var network = Network.shared

	private lazy var cache = Cache.shared

	func searchBy(query: String, limit: Int = 1, completion: @escaping (Result<SearchResponse, Error>) -> Void) {

		let path = "/sites/\(Network.Site.COL.rawValue)/search?q=\(query)&limit=\(limit)"

		network.get(SearchResponse.self, from: path) { result in

			switch result {

			case .success(let res):

				completion(.success(res))

			case .failure(let err):

				completion(.failure(err))
			}
		}
	}

	func storeRecentQuery(_ query: String) {

		let id = query.replacingOccurrences(of: " ", with: "_")

		let key = "\(Cache.Key.recentQuery)_\(id)"

		cache.store(query, forKey: key)
	}

	func getRecentQueries() -> [String] {

		let keys = cache.keys(by: Cache.Key.recentQuery.rawValue)

		var values: [String] = []

		for key in keys {

			guard let str = cache.get(forKey: key) else {
				continue
			}

			values.append(str)
		}

		return values
	}

	func cleanRecentQueries() {

		let keys = cache.keys(by: Cache.Key.recentQuery.rawValue)

		for key in keys {

			cache.remove(forKey: key)
		}
	}
}
