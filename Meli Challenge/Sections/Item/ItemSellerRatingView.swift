//
//  SellerRatingView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 12/10/21.
//

import Foundation

import UIKit

class ItemSellerRating : UIView {

	var type: RatingType = .great

	enum RatingType {
		case veryBad
		case bad
		case regular
		case great
		case amazing
	}

	private struct Rating {
		var type: RatingType
		var color: UIColor
	}

	private var ratings: [Rating] = [
		Rating(type: .veryBad, color: .red),
		Rating(type: .bad, color: .systemRed),
		Rating(type: .regular, color: .mlYellow),
		Rating(type: .great, color: .mlGreen),
	]

	private lazy var blockView: (UIColor) -> UIView = { color in

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = color

		view.layer.opacity = 0.4

		view.accessibilityIdentifier = "ItemSellerRating_view"

		return view
	}

	private lazy var stackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .horizontal

		stackView.spacing = 4

		stackView.accessibilityIdentifier = "ItemSellerRating_stackView"

		return stackView
	}()


	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(stackView)

		for rating in ratings {

			let view = blockView(rating.color)

			let viewHeightAnchor = view.heightAnchor.constraint(equalToConstant: 6)

			stackView.addArrangedSubview(view)

			NSLayoutConstraint.activate([
				view.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.24),
				viewHeightAnchor
			])

			if rating.type == type {

				view.layer.opacity = 1

				viewHeightAnchor.constant = 8
			}
		}

		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: topAnchor),
			stackView.leftAnchor.constraint(equalTo: leftAnchor),
			stackView.rightAnchor.constraint(equalTo: rightAnchor),
			stackView.heightAnchor.constraint(equalToConstant: 6)
		])

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}

