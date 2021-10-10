//
//  RecentSearchTableView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import UIKit

class RecentSearchTableView : UITableView {

	var queries: [String]? {

		didSet {

			handleQueries()
		}
	}

	override init(frame: CGRect, style: UITableView.Style) {

		super.init(frame: frame, style: style)

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .white

		rowHeight = 60

		separatorStyle = .none

		register(RecentSearchTableViewCell.self, forCellReuseIdentifier: RecentSearchTableViewCell.reuseId)

		delegate = self

		dataSource = self
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


	private func handleQueries() {

		reloadData()
	}
}

extension RecentSearchTableView : UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

		return queries?.count ?? 0
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		let cell = dequeueReusableCell(withIdentifier: RecentSearchTableViewCell.reuseId, for: indexPath)

		if let recentCell = cell as? RecentSearchTableViewCell, let query = queries?[indexPath.row] {

			recentCell.setCell(query)
		}

		return cell
	}

}

extension RecentSearchTableView : UITableViewDelegate {

}
