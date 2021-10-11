//
//  ItemHeaderView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import UIKit

class ItemHeaderView : UIView {

	var isFavorite = false {

		didSet {
			setFavoriteBtn()
		}
	}

	// MARK: Callbaks

	var onBack: (() -> Void)?

	var onFavorite: (() -> Void)?

	var onSearch: (() -> Void)?

	// MARK: Components

	let backBtn: UIButton = {

		let btn = UIButton()

		btn.translatesAutoresizingMaskIntoConstraints = false

		btn.backgroundColor = .clear

		let img = UIImage(systemName: "arrow.backward")

		btn.setImage(img, for: .normal)

		btn.imageView?.tintColor = .black

		return btn
	}()

	let favoriteBtn: UIButton = {

		let btn = UIButton()

		btn.translatesAutoresizingMaskIntoConstraints = false

		btn.backgroundColor = .clear

		let img = UIImage(systemName: "heart")

		btn.setImage(img, for: .normal)

		btn.imageView?.tintColor = .black

		return btn
	}()

	let searchBtn: UIButton = {

		let btn = UIButton()

		btn.translatesAutoresizingMaskIntoConstraints = false

		btn.backgroundColor = .clear

		let img = UIImage(systemName: "magnifyingglass")

		btn.setImage(img, for: .normal)

		btn.imageView?.tintColor = .black

		return btn
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()

		backBtn.addTarget(self, action: #selector(backTap), for: .touchUpInside)

		favoriteBtn.addTarget(self, action: #selector(favoriteTap), for: .touchUpInside)

		searchBtn.addTarget(self, action: #selector(searchTap), for: .touchUpInside)
	}

	// MARK: Layout

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .mlYellow

		addSubview(backBtn)

		addSubview(favoriteBtn)

		addSubview(searchBtn)

		NSLayoutConstraint.activate([
			backBtn.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
			backBtn.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			backBtn.widthAnchor.constraint(equalToConstant: 24),
			backBtn.heightAnchor.constraint(equalToConstant: 24),

			searchBtn.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
			searchBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			searchBtn.widthAnchor.constraint(equalToConstant: 24),
			searchBtn.heightAnchor.constraint(equalToConstant: 24),

			favoriteBtn.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
			favoriteBtn.rightAnchor.constraint(equalTo: searchBtn.leftAnchor, constant: -16),
			favoriteBtn.widthAnchor.constraint(equalToConstant: 24),
			favoriteBtn.heightAnchor.constraint(equalToConstant: 24)
		])
	}

	// MARK: Actions

	@objc private func backTap() {

		onBack?()
	}

	@objc private func favoriteTap() {

		onFavorite?()
	}

	@objc private func searchTap() {

		onSearch?()
	}

	private func setFavoriteBtn(animate: Bool = false) {

		let img = UIImage(systemName: "heart")

		let imgFill = UIImage(systemName: "heart.fill")

		self.favoriteBtn.setImage(isFavorite ? imgFill : img, for: .normal)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	deinit {

	}

}
