//
//  SearchEmptyState.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 12/10/21.
//

import UIKit

class SearchEmptyState : UIView {

	private lazy var titleLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = ""

		label.textAlignment = .center

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

		text.textColor = .mlGray

		text.textContainer.lineFragmentPadding = .zero

		text.textAlignment = .center

		text.accessibilityIdentifier = "SearchEmptyState_descriptionText"

		return text
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		setTexts()

		setLayout()
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .mlLilac

		addSubview(titleLabel)

		addSubview(descriptionText)

		NSLayoutConstraint.activate([
			titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 32),
			titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			titleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),

			descriptionText.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
			descriptionText.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			descriptionText.rightAnchor.constraint(equalTo: rightAnchor, constant: -16)
		])
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


	func setTexts() {

		titleLabel.text = "No encontramos publicaciones"

		descriptionText.text = "Revisa que la palabra esté bien escrita. También puedes probar con menos términos o más generales."
	}


}

