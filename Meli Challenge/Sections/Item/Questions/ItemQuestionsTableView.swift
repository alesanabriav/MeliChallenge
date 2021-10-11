//
//  ItemQuestionsTableView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class ItemQuestionsTableView: UITableView {

	var questions: [ItemQuestion]? {

		didSet {

			handleQuestions()
		}
	}

	override init(frame: CGRect, style: UITableView.Style) {
		super.init(frame: frame, style: style)

		translatesAutoresizingMaskIntoConstraints = false

		separatorStyle = .none

		isScrollEnabled = false

		register(ItemQuestionsTableViewCell.self, forCellReuseIdentifier: ItemQuestionsTableViewCell.reuseId)

		dataSource = self

		delegate = self
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func handleQuestions() {

		reloadData()
	}

	func getCellHeight(_ question: ItemQuestion) -> CGFloat {

		let width = bounds.width

		let answer = question.answer?.text ?? ""

		let qh = StringHeight.getHeight(from: question.text, font: .body, width: width)

		let ah = StringHeight.getHeight(from: answer, font: .body, width: width)

		return (qh + ah) + 44
	}

}

extension ItemQuestionsTableView : UITableViewDataSource {

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

		return questions?.count ?? 0
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		let cell = dequeueReusableCell(withIdentifier: ItemQuestionsTableViewCell.reuseId, for: indexPath)

		if let recentCell = cell as? ItemQuestionsTableViewCell, let question = questions?[indexPath.row] {

			recentCell.setCell(question)
		}

		return cell
	}

	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

		if let question = questions?[indexPath.row] {

			return getCellHeight(question)
		}

		return 0
	}
}

extension ItemQuestionsTableView : UITableViewDelegate {

}
