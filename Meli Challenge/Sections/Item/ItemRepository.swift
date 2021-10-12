//
//  ItemRepository.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import Foundation

class ItemRepository {

	private lazy var network = Network.shared

	func getSeller(by id: Int, completion: @escaping (Result<ItemSellerResponse, Error>) -> Void) {

		let path = "/sites/\(Network.Site.COL.rawValue)/search?seller_id=\(id)&limit=10"

		network.get(ItemSellerResponse.self, from: path) { res in

			switch res {
			case .success(let sellerRes):

				Logger.log("seller level \(sellerRes.seller.seller_reputation?.level_id)")

				completion(.success(sellerRes))

			case .failure(let err):

				completion(.failure(err))
			}

		}
	}

	func getDescription(by id: String, completion: @escaping (Result<String, Error>) -> Void) {

		let path = "/items/\(id)/description"

		network.get(ItemDescription.self, from: path) { res in

			switch res {
			case .success(let description):

				completion(.success(description.plain_text))

			case .failure(let err):

				completion(.failure(err))
			}

		}
	}

	func getQuestions(by id: String, completion: @escaping (Result<[ItemQuestion], Error>) -> Void) {

		let path = "/questions/search?item=\(id)"

		network.get(ItemQuestions.self, from: path) { res in

			switch res {
			case .success(let questionsRes):

				completion(.success(questionsRes.questions))

			case .failure(let err):

				completion(.failure(err))
			}
		}

	}
}

