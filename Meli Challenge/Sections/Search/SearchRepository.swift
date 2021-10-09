//
//  SearchRepository.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class SearchRepository {

	private lazy var network = Network.shared

	func searchBy(query: String, limit: Int = 1, completion: @escaping (Result<SearchResponse, Error>) -> Void) {

		network.get(SearchResponse.self, from: "/search?q=\(query)&limit=\(limit)") { result in

			switch result {

			case .success(let res):

				completion(.success(res))

			case .failure(let err):

				completion(.failure(err))
			}
		}

	}

}
