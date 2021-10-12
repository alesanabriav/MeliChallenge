//
//  ItemViewModel.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import Foundation

class ItemViewModel {

	private lazy var itemRepo = ItemRepository()

	private lazy var favoritesRepo = FavoritesRepository()

	var currentItem = Observable<SearchResult>()

	var selectedItem = Observable<SearchResult>()

	var favoriteId: String?

	var seller = Observable<ItemSeller>()

	var sellerErr = Observable<Error>()

	var selllerResults = Observable<[SearchResult]>()

	var description = Observable<String>("")

	var questions = Observable<[ItemQuestion]>()

	func getSeller(by id: Int) {

		itemRepo.getSeller(by: id) { [weak self] res in

			switch res {
				
			case .success(let sellerRes):

				self?.seller.value = sellerRes.seller

				self?.selllerResults.value = sellerRes.results

				Logger.log("seller \(sellerRes)")

			case .failure(let err):

				Logger.error(err, extraInfo: "get seller")

				self?.sellerErr.value = err
			}
		}
		
	}

	func getDescription(by id: String) {

		itemRepo.getDescription(by: id) { [weak self] res in

			switch res {
			case .success(let description):

				self?.description.value = description

			case .failure(let err):

				Logger.error(err, extraInfo: "get description in viewModel")
			}
			
		}
	}

	func getQuestions(by id: String) {

		itemRepo.getQuestions(by: id) { [weak self] res in

			switch res {
			case .success(let questions):

				self?.questions.value = questions

			case .failure(let err):

				Logger.error(err, extraInfo: "get questions in viewModel")
			}

		}
	}
	

	func getFavoriteId(by id: String) {

		guard let fav = favoritesRepo.getFavorite(by: id) else {

			favoriteId = nil

			return
		}

		favoriteId = fav.id
	}

	func storeFavorite(_ result: SearchResult) {

		favoritesRepo.storeFavorite(result: result)
	}

	func removeFavorite(by id: String) {

		favoritesRepo.removeFavorite(by: id)
	}
}
