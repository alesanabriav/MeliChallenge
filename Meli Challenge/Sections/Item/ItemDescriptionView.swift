//
//  ItemDescriptionView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class ItemDescriptionView : UIView {

	var onTextHeight: ((CGFloat) -> Void)?

	// MARK: Components

	private lazy var sectionTitleLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.text = "Descripción"

		label.accessibilityIdentifier = "ItemDescriptionView_sectionTitleLabel"

		return label
	}()

	private lazy var descriptionText: UITextView = {

		let text = UITextView()

		text.translatesAutoresizingMaskIntoConstraints = false

		text.backgroundColor = .clear

		text.isEditable = false

		text.isScrollEnabled = false

		text.isUserInteractionEnabled = false

		text.font = .body

		text.textColor = .black

		text.textContainer.lineFragmentPadding = .zero

		text.accessibilityIdentifier = "ItemDescriptionView_descriptionText"

		return text
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
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(sectionTitleLabel)

		addSubview(descriptionText)

		addSubview(separatorView)

		NSLayoutConstraint.activate([
			sectionTitleLabel.topAnchor.constraint(equalTo: topAnchor),
			sectionTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			sectionTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			sectionTitleLabel.heightAnchor.constraint(equalToConstant: 17),

			descriptionText.topAnchor.constraint(equalTo: topAnchor, constant: 32),
			descriptionText.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			descriptionText.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),

			separatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
			separatorView.leftAnchor.constraint(equalTo: leftAnchor),
			separatorView.rightAnchor.constraint(equalTo: rightAnchor),
			separatorView.heightAnchor.constraint(equalToConstant: 1)
		])

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func setDescription(_ description: String) {

		descriptionText.text = description

		Logger.log("description \(bounds.width)")

		let height = StringHeight.getHeight(from: description, font: .body, width: bounds.width)

		onTextHeight?(height)
	}

}

