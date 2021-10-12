//
//  ItemSellerItemsCollectionViewCell.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 12/10/21.
//

import UIKit

class ItemSellerItemsCollectionViewCell: UICollectionViewCell {

	static let reuseId = "ItemSellerItemsCollectionViewCell"

	private lazy var containerView: UIView = {

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = .white

		return view
	}()


	private lazy var stackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .vertical

		stackView.spacing = 2

		stackView.accessibilityIdentifier = "ItemSellerItemsCollectionViewCell_stackView"

		return stackView
	}()

	private lazy var thumbImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = false

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = "ItemSellerItemsCollectionViewCell_thumbImg"

		return img
	}()

	private lazy var priceLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "ItemSellerItemsCollectionViewCell_priceLabel"

		return label
	}()

	private lazy var installmentsLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .subheadline

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "ItemSellerItemsCollectionViewCell_installmentsLabel"

		return label
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

		text.accessibilityIdentifier = "ItemSellerItemsCollectionViewCell_TitleText"

		text.textContainer.maximumNumberOfLines = 2

		return text
	}()

	private lazy var separatorView: UIView = {

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = .mlNero

		return view
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setLayout() {

		clipsToBounds = false

		containerView.layer.cornerRadius = 4

		containerView.layer.shadowColor = UIColor.mlGray.cgColor

		containerView.layer.shadowOffset = CGSize(width: 0, height: 0)

		containerView.layer.shadowRadius = 4

		containerView.layer.shadowOpacity = 0.3

		addSubview(containerView)

		containerView.addSubview(thumbImg)

		containerView.addSubview(separatorView)

		containerView.addSubview(stackView)

		stackView.addArrangedSubview(priceLabel)
		stackView.addArrangedSubview(installmentsLabel)
		stackView.addArrangedSubview(titleText)

		NSLayoutConstraint.activate([

			containerView.topAnchor.constraint(equalTo: topAnchor),
			containerView.leftAnchor.constraint(equalTo: leftAnchor),
			containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
			containerView.rightAnchor.constraint(equalTo: rightAnchor),

			thumbImg.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
			thumbImg.leftAnchor.constraint(equalTo: containerView.leftAnchor),
			thumbImg.rightAnchor.constraint(equalTo: containerView.rightAnchor),
			thumbImg.heightAnchor.constraint(equalToConstant: 90),

			separatorView.topAnchor.constraint(equalTo: thumbImg.bottomAnchor, constant: 8),
			separatorView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
			separatorView.rightAnchor.constraint(equalTo: containerView.rightAnchor),
			separatorView.heightAnchor.constraint(equalToConstant: 1),

			stackView.topAnchor.constraint(equalTo: separatorView.bottomAnchor, constant: 16),
			stackView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
			stackView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -8)
		])

	}

	override func prepareForReuse() {

		titleText.text = ""

		priceLabel.text = ""

		thumbImg.image = nil
	}

	func setCell(_ result: SearchResult) {

		titleText.text = result.title

		let price = NumberFormatter.currency.string(from: result.price as NSNumber) ?? ""

		priceLabel.text = price

		if let installments = result.installments {

			let amount = NumberFormatter.currency.string(from: installments.amount as NSNumber) ?? ""

			installmentsLabel.text = "\(installments.quantity)x \(amount)"
		}

		thumbImg.setImage(with: result.thumbnail)
	}
}
