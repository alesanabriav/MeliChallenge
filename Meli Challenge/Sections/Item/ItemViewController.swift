//
//  ItemViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class ItemViewController: UIViewController {

	var viewModel: SearchViewModel?

	// MARK: Components

	lazy var headerView = ItemHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()

		setCallbacks()

		setItem()
    }

	// MARK: Layout

	private func setLayout() {

		view.backgroundColor = .white

		view.addSubview(headerView)

		NSLayoutConstraint.activate([
			headerView.topAnchor.constraint(equalTo: view.topAnchor),
			headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			headerView.heightAnchor.constraint(equalToConstant: 120)
		])

	}

	// MARK: Actions

	private func setCallbacks() {

		headerView.onBack = { [weak self] in

			self?.handleBack()

		}

		headerView.onSearch = { [weak self] in

			self?.openSearch()
		}

		headerView.onFavorite = { [weak self] in

			self?.handleFavorite()
		}
	}

	private func setItem() {

		Logger.log("set item \(viewModel?.resultSelected.value?.id)")

		guard let result = viewModel?.resultSelected.value else {
			return
		}

		viewModel?.getFavoriteId(by: result.id)

		let isFavorite = viewModel?.favoriteId != nil

		Logger.log("\(isFavorite) \(viewModel?.favoriteId)")

		headerView.isFavorite = isFavorite
	}

	private func openSearch() {

		let searchVC = SearchViewController()

		searchVC.isFullscreen = true

		searchVC.modalPresentationStyle = .overCurrentContext

		navigationController?.pushViewController(searchVC, animated: false)
	}

	private func handleBack() {

		navigationController?.popViewController(animated: true)
	}

	private func handleFavorite() {

	}

}
