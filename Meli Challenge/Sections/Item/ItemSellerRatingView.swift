//
//  SellerRatingView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 12/10/21.
//

import Foundation

import UIKit

class ItemSellerRating : UIView {

	var type: RatingType = .veryBad {

		didSet {

			handleType()
		}
	}

	enum RatingType : Int {
		case veryBad = 1
		case bad = 2
		case regular = 3
		case great = 4
		case amazing = 5
	}

	private struct Rating {
		var type: RatingType
		var color: UIColor
	}

	private var ratings: [Rating] = [
		Rating(type: .veryBad, color: .red),
		Rating(type: .bad, color: .systemRed),
		Rating(type: .regular, color: .mlYellow),
		Rating(type: .great, color: .systemGreen),
		Rating(type: .amazing, color: .mlGreen),
	]

	private lazy var blockView: (UIColor, Int) -> UIView = { color, tag in

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = color

		view.layer.opacity = 0.4

		view.accessibilityIdentifier = "ItemSellerRating_view"

		view.tag = tag

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

			let view = blockView(rating.color, rating.type.rawValue)

			let viewHeightAnchor = view.heightAnchor.constraint(equalToConstant: 6)

			stackView.addArrangedSubview(view)

			NSLayoutConstraint.activate([
				view.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.19),
				viewHeightAnchor
			])
		}

		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: topAnchor),
			stackView.leftAnchor.constraint(equalTo: leftAnchor),
			stackView.rightAnchor.constraint(equalTo: rightAnchor),
			stackView.heightAnchor.constraint(equalToConstant: 6)
		])

	}

	func handleType() {

		let tag = type.rawValue

		let view = viewWithTag(tag)

		view?.layer.opacity = 1

		view?.layer.transform = CATransform3DMakeScale(1, 1.4, 1)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}

