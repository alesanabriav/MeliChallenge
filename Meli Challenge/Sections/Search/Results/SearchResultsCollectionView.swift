//
//  SearchResultsCollectionView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import UIKit

class SearchResultsCollectionView: UICollectionView {

	var onResultSelected: ((SearchResult) -> Void)?

	var onResultFavorite: ((SearchResult, Bool) -> Void)?

	var favoritesIds: [String]?

	var results: [SearchResult]? {

		didSet {

			handleResults()
		}
	}

	init() {

		let layout = UICollectionViewFlowLayout()

		super.init(frame: .zero, collectionViewLayout: layout)

		register(SearchResultsCollectionViewCell.self, forCellWithReuseIdentifier: SearchResultsCollectionViewCell.reuseId)

		dataSource = self

		delegate = self

		backgroundColor = .white

		translatesAutoresizingMaskIntoConstraints = false

	}

	private func handleResults() {

		DispatchQueue.main.async { [weak self] in

			self?.setContentOffset(.zero, animated: false)

			self?.reloadData()
		}
	}

	private func handleFavorite(_ result: SearchResult, isFavorite: Bool) {

		if isFavorite {

			favoritesIds?.append(result.id)

		} else {

			favoritesIds?.removeAll(where: { $0 == result.id })
		}

		onResultFavorite?(result, isFavorite)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	deinit {

		results = nil
	}
}

extension SearchResultsCollectionView : UICollectionViewDataSource {

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

		return results?.count ?? 0
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

		let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  SearchResultsCollectionViewCell.reuseId, for: indexPath)

		if let resultCell = cell as? SearchResultsCollectionViewCell, let result = results?[indexPath.row] {

			let isFav = favoritesIds?.contains(result.id) ?? false

			print("is fav", result.title, result.id, isFav)

			// MCO608640998

			resultCell.isFavorite = isFav

			resultCell.setCell(result)

			resultCell.onFavorite = { [weak self] isFavorite in

				Logger.log(.message, msg: "\(result)")

				self?.handleFavorite(result, isFavorite: isFavorite)
			}
			
		}

		return cell
	}


}

extension SearchResultsCollectionView : UICollectionViewDelegate {

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

		if let result = results?[indexPath.row] {

			onResultSelected?(result)
		}
	}
}

extension SearchResultsCollectionView : UICollectionViewDelegateFlowLayout {

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

		let width = collectionView.frame.width

		return CGSize(width: width, height: 180)
	}

}
