//
//  ItemViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class ItemViewController: UIViewController {

	let viewModel = ItemViewModel()

	// MARK: Components

	lazy var headerView = ItemHeaderView()

	lazy var InfoView = ItemInfoView()

    override func viewDidLoad() {
        super.viewDidLoad()

		Logger.log("viewDidLoad 1")

        setLayout()

		setCallbacks()

		viewModel.seller.observe { [weak self] seller in

			Logger.log("seller observer \(seller.nickname)")

			self?.InfoView.setSeller(nickname: seller.nickname)
		}

		setItem()
    }

	// MARK: Layout

	private func setLayout() {

		view.backgroundColor = .white

		view.addSubview(headerView)

		view.addSubview(InfoView)

		NSLayoutConstraint.activate([
			headerView.topAnchor.constraint(equalTo: view.topAnchor),
			headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			headerView.heightAnchor.constraint(equalToConstant: 120),

			InfoView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			InfoView.leftAnchor.constraint(equalTo: view.leftAnchor),
			InfoView.rightAnchor.constraint(equalTo: view.rightAnchor),
			InfoView.heightAnchor.constraint(equalToConstant: 160)
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

		guard let result = viewModel.currentItem.value else {
			return
		}

		viewModel.getFavoriteId(by: result.id)

		let isFavorite = viewModel.favoriteId != nil

		headerView.isFavorite = isFavorite

		if let id = result.seller?.id {

			Logger.log("viewDidLoad 2")

			viewModel.getSeller(by: id)
		}

		InfoView.setInfo(result)
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
