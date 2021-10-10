//
//  ResultsView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//
import UIKit

class SearchResultsView : UIView {

	private var _viewModel: SearchViewModel

	let resultsCollection = SearchResultsCollectionView()

	init(frame: CGRect, viewModel: SearchViewModel) {

		_viewModel = viewModel

		super.init(frame: frame)

		setLayout()

		_viewModel.searchResponse.observe { [weak self] res in

			self?._viewModel.getFavorites()

			let favs = self?._viewModel.favorites

			self?.resultsCollection.favorites = favs

			self?.resultsCollection.results = res.results
		}

		resultsCollection.onResultFavorite = { [weak self] result, isFavorite in

			if isFavorite {

				self?._viewModel.storeFavorite(result)

			} else {

				self?._viewModel.removeFavorite(by: result.id)
			}


		}

		resultsCollection.onResultSelected = { [weak self] result in

			self?._viewModel.resultSelected.value = result
		}
	}

	func relayout() {

		DispatchQueue.main.async {

			self.resultsCollection.collectionViewLayout.invalidateLayout()

			self.layoutIfNeeded()
		}

	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(resultsCollection)

		NSLayoutConstraint.activate([
			resultsCollection.topAnchor.constraint(equalTo: topAnchor),
			resultsCollection.leftAnchor.constraint(equalTo: leftAnchor),
			resultsCollection.bottomAnchor.constraint(equalTo: bottomAnchor),
			resultsCollection.rightAnchor.constraint(equalTo: rightAnchor)
		])
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}

