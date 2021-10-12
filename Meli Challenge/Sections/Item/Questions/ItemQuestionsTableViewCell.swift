//
//  ItemQuestionsTableViewCell.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class ItemQuestionsTableViewCell: UITableViewCell {

	private lazy var questionText: UITextView = {

		let text = UITextView()

		text.translatesAutoresizingMaskIntoConstraints = false

		text.backgroundColor = .clear

		text.isEditable = false

		text.isScrollEnabled = false

		text.isUserInteractionEnabled = false

		text.font = .body

		text.textColor = .black

		text.textContainer.lineFragmentPadding = .zero

		text.accessibilityIdentifier = "ItemQuestionsTableViewCell_questionText"

		return text
	}()

	private lazy var answerText: UITextView = {

		let text = UITextView()

		text.translatesAutoresizingMaskIntoConstraints = false

		text.backgroundColor = .clear

		text.isEditable = false

		text.isScrollEnabled = false

		text.isUserInteractionEnabled = false

		text.font = .placeholder

		text.textColor = .mlGray

		text.textContainer.lineFragmentPadding = .zero

		text.accessibilityIdentifier = "ItemQuestionsTableViewCell_answerText"

		return text
	}()

	static let reuseId = "ItemQuestionsTableViewCell"

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {

		super.init(style: style, reuseIdentifier: reuseIdentifier)

		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func prepareForReuse() {

		questionText.text = ""

		answerText.text = ""
	}

	private func setLayout() {

		backgroundColor = .clear

		addSubview(questionText)

		addSubview(answerText)

		NSLayoutConstraint.activate([
			questionText.topAnchor.constraint(equalTo: topAnchor, constant: 8),
			questionText.leftAnchor.constraint(equalTo: leftAnchor),
			questionText.rightAnchor.constraint(equalTo: rightAnchor),

			answerText.topAnchor.constraint(equalTo: questionText.bottomAnchor),
			answerText.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			answerText.rightAnchor.constraint(equalTo: rightAnchor)
		])
	}

	func setCell(_ question: ItemQuestion) {

		questionText.text = question.text

		let answer = question.answer?.text ?? ""

		answerText.text = answer
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

	override func setHighlighted(_ highlighted: Bool, animated: Bool) {
		
	}

}
