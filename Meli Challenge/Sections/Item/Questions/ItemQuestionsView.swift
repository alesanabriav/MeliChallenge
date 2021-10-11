//
//  ItemQuestionsView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class ItemQuestionsView : UIView {

	private var _viewModel: ItemViewModel

	var onTotalHeight: ((CGFloat) -> Void)?

	// MARK: Components

	private lazy var sectionTitleLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.text = "Preguntas y respuestas"

		label.accessibilityIdentifier = "ItemQuestionsView_sectionTitleLabel"

		return label
	}()

	private lazy var questionsTableView = ItemQuestionsTableView()

	init(frame: CGRect, viewModel: ItemViewModel) {

		_viewModel = viewModel

		super.init(frame: frame)

		setLayout()

		_viewModel.questions.observe { [weak self] questions in

			self?.handleQuestions(questions)
		}
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(sectionTitleLabel)

		addSubview(questionsTableView)

		NSLayoutConstraint.activate([
			sectionTitleLabel.topAnchor.constraint(equalTo: topAnchor),
			sectionTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			sectionTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			sectionTitleLabel.heightAnchor.constraint(equalToConstant: 17),

			questionsTableView.topAnchor.constraint(equalTo: sectionTitleLabel.bottomAnchor, constant: 16),
			questionsTableView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			questionsTableView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			questionsTableView.bottomAnchor.constraint(equalTo: bottomAnchor)
		])
	}

	private func handleQuestions(_ questions: [ItemQuestion]) {

		var filterQuestions = questions.filter({  $0.status == "ANSWERED" })

		filterQuestions = Array(filterQuestions.prefix(3))

		DispatchQueue.main.async { [weak self] in

			self?.handleSectionHeight(filterQuestions)

			self?.questionsTableView.questions = filterQuestions
		}
	}

	private func handleSectionHeight(_ questions: [ItemQuestion]) {

		var totalHeight: CGFloat = 100

		for question in questions {

			totalHeight += questionsTableView.getCellHeight(question)
		}

		Logger.log("total height \(totalHeight)")

		onTotalHeight?(totalHeight)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}

