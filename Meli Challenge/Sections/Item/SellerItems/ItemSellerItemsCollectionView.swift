//
//  ItemSellerItemsCollectionView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 12/10/21.
//

import UIKit

class ItemSellerItemsCollectionView : UICollectionView {

	var onResultSelected: ((SearchResult) -> Void)?

	var results: [SearchResult]? {

		didSet {

			handleResults()
		}
	}

	init() {
		
		let layout = UICollectionViewFlowLayout()

		layout.scrollDirection = .horizontal

		super.init(frame: .zero, collectionViewLayout: layout)

		register(ItemSellerItemsCollectionViewCell.self, forCellWithReuseIdentifier: ItemSellerItemsCollectionViewCell.reuseId)

		dataSource = self

		delegate = self

		backgroundColor = .white

		translatesAutoresizingMaskIntoConstraints = false
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func handleResults() {

		DispatchQueue.main.async { [weak self] in

			self?.reloadData()
		}
	}
	
}

extension ItemSellerItemsCollectionView : UICollectionViewDataSource {

	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

		return results?.count ?? 0
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

		let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  ItemSellerItemsCollectionViewCell.reuseId, for: indexPath)

		if let itemCell = cell as? ItemSellerItemsCollectionViewCell, let result = results?[indexPath.row] {

			itemCell.setCell(result)
		}

		return cell
	}
}

extension ItemSellerItemsCollectionView : UICollectionViewDelegate {

	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

		if let result = results?[indexPath.row] {

			onResultSelected?(result)
		}
	}
}

extension ItemSellerItemsCollectionView : UICollectionViewDelegateFlowLayout {

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

		let width = collectionView.frame.width / 2

		return CGSize(width: width, height: 220)
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {

		return 16
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

		return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
	}

}

