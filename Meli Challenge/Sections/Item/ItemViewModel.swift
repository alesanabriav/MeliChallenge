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

	var favoriteId: String?

	var seller = Observable<ItemSeller>()

	var sellerErr = Observable<Error>()

	var description: String = ""

	func getSeller(by id: Int) {

		itemRepo.getSeller(by: id) { [weak self] res in

			switch res {
				
			case .success(let seller):

				self?.seller.value = seller

				Logger.log("seller \(seller)")

			case .failure(let err):

				Logger.error(err, extraInfo: "get seller")

				self?.sellerErr.value = err
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

}