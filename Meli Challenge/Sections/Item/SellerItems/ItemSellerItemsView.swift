//
//  ItemSellerItemsView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 12/10/21.
//

import UIKit

class ItemSellerItemsView : UIView {

	private var _viewModel: ItemViewModel

	// MARK: Components

	private lazy var sectionTitleLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.text = "Más publicaciones de"

		label.accessibilityIdentifier = "ItemSellerItemsView_sectionTitleLabel"

		return label
	}()

	private lazy var ItemscollectionView = ItemSellerItemsCollectionView()

	init(frame: CGRect, viewModel: ItemViewModel) {

		_viewModel = viewModel

		super.init(frame: frame)

		setLayout()

		_viewModel.selllerResults.observe { [weak self] results in

			let currentId = self?._viewModel.currentItem.value?.id ?? ""

			let resultsFiltered = results.filter({ $0.id != currentId })

			self?.ItemscollectionView.results = resultsFiltered

			self?.handleSeller()
		}

	}

	 // MARK: Layout

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(sectionTitleLabel)

		addSubview(ItemscollectionView)

		NSLayoutConstraint.activate([
			sectionTitleLabel.topAnchor.constraint(equalTo: topAnchor),
			sectionTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			sectionTitleLabel.rightAnchor.constraint(equalTo: rightAnchor),
			sectionTitleLabel.heightAnchor.constraint(equalToConstant: 18),

			ItemscollectionView.topAnchor.constraint(equalTo: sectionTitleLabel.bottomAnchor),
			ItemscollectionView.leftAnchor.constraint(equalTo: leftAnchor),
			ItemscollectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
			ItemscollectionView.rightAnchor.constraint(equalTo: rightAnchor)
		])
	}

	func handleSeller() {

		DispatchQueue.main.async { [weak self] in

			let username = self?._viewModel.seller.value?.nickname ?? ""

			self?.sectionTitleLabel.text = "Más publicaciones de \(username)"
		}
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}
