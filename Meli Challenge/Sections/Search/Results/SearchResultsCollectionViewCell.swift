//
//  SearchResultsCollectionViewCell.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import UIKit

class SearchResultsCollectionViewCell : UICollectionViewCell {

	static let reuseId = "SearchResultsCollectionViewCell"

	var onFavorite: ((Bool) -> Void)?

	var isFavorite = false {

		didSet {

			setFavoriteBtn(animate: true)
		}
	}

	private lazy var thumbImg: UIImageView = {

		let imgView = UIImageView()

		imgView.translatesAutoresizingMaskIntoConstraints = false

		imgView.backgroundColor = .clear

		imgView.contentMode = .scaleAspectFit

		imgView.tintColor = .clear

		imgView.clipsToBounds = true

		imgView.isUserInteractionEnabled = false

		imgView.accessibilityIdentifier = "SearchResultsCollectionViewCell_thumbImg"

		return imgView
	}()

	private lazy var stackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .vertical

		stackView.spacing = 8

		return stackView
	}()

	private lazy var titleText: UITextView = {

		let text = UITextView()

		text.translatesAutoresizingMaskIntoConstraints = false

		text.backgroundColor = .clear

		text.isEditable = false

		text.isScrollEnabled = false

		text.isUserInteractionEnabled = false

		text.font = .placeholder

		text.textColor = .black

		text.textContainer.lineFragmentPadding = .zero

		text.accessibilityIdentifier = "SearchResultsCollectionViewCell_titleText"

		return text
	}()

	private lazy var priceLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = ""

		return label
	}()

	private lazy var installmentsLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .subheadline

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = ""

		return label
	}()

	private lazy var shippingLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .subheadline

		label.textColor = .mlGreen

		label.backgroundColor = .clear

		label.accessibilityIdentifier = ""

		return label
	}()

	let favoriteBtn: UIButton = {

		let btn = UIButton()

		btn.translatesAutoresizingMaskIntoConstraints = false

		btn.backgroundColor = .clear

		let img = UIImage(systemName: "heart")

		btn.setImage(img, for: .normal)

		btn.imageView?.tintColor = .mlBlue

		return btn
	}()

	private lazy var separatorView: UIView = {

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = .mlHaze

		return view
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()

		favoriteBtn.addTarget(self, action: #selector(favoriteTap), for: .touchUpInside)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	@objc func favoriteTap() {

		isFavorite = !isFavorite

		onFavorite?(isFavorite)
	}

	// MARK: layout

	private func setLayout() {

		addSubview(thumbImg)

		addSubview(stackView)

		contentView.addSubview(favoriteBtn)

		addSubview(separatorView)

		stackView.addArrangedSubview(titleText)

		stackView.addArrangedSubview(priceLabel)

		stackView.addArrangedSubview(installmentsLabel)

		stackView.addArrangedSubview(shippingLabel)

		NSLayoutConstraint.activate([

			thumbImg.topAnchor.constraint(equalTo: topAnchor),
			thumbImg.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			thumbImg.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3),
			thumbImg.heightAnchor.constraint(equalTo: heightAnchor),

			stackView.leftAnchor.constraint(equalTo: thumbImg.rightAnchor, constant: 16),
			stackView.rightAnchor.constraint(equalTo: favoriteBtn.leftAnchor, constant: -8),
			stackView.topAnchor.constraint(equalTo: topAnchor),

			favoriteBtn.widthAnchor.constraint(equalToConstant: 24),
			favoriteBtn.heightAnchor.constraint(equalToConstant: 24),
			favoriteBtn.topAnchor.constraint(equalTo: topAnchor, constant: 8),
			favoriteBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),

			separatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
			separatorView.leftAnchor.constraint(equalTo: leftAnchor),
			separatorView.rightAnchor.constraint(equalTo: rightAnchor),
			separatorView.heightAnchor.constraint(equalToConstant: 1)
		])

	}

	override func prepareForReuse() {

		titleText.text = ""

		thumbImg.image = nil

		isFavorite = false
	}

	// MARK: Actions

	func setCell(_ result: SearchResult) {

		titleText.text = result.title

		let price = NumberFormatter.currency.string(from: result.price as NSNumber) ?? ""

		priceLabel.text = price

		setInstallments(result)

		setShipping(result)

		thumbImg.setImage(with: result.thumbnail)
	}

	private func setInstallments(_ result: SearchResult) {

		if let installments = result.installments {

			let amount = NumberFormatter.currency.string(from: installments.amount as NSNumber) ?? ""

			installmentsLabel.text = "en \(installments.quantity)x \(amount)"
		}
	}

	private func setShipping(_ result: SearchResult) {

		if let shipping = result.shipping, shipping.free_shipping {

			shippingLabel.text = "Envío gratis"

		} else {

			shippingLabel.isHidden = true
		}
	}

	private func setFavoriteBtn(animate: Bool = false) {

		let img = UIImage(systemName: "heart")

		let imgFill = UIImage(systemName: "heart.fill")

		if animate {

			UIView.animate(withDuration: 0.3) {

				self.favoriteBtn.setImage(self.isFavorite ? imgFill : img, for: .normal)

				self.favoriteBtn.layer.transform = CATransform3DMakeScale(1.1, 1.1 , 1.0)

			} completion: { completed in

				self.favoriteBtn.layer.transform = CATransform3DMakeScale(1.0, 1.0, 1.0)
			}

		} else {

			self.favoriteBtn.setImage(self.isFavorite ? imgFill : img, for: .normal)
		}




	}
}
