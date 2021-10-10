//
//  RecentSearchView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import UIKit

class RecentSearchView : UIView {

	private var _viewModel: SearchViewModel

	private lazy var tableView: RecentSearchTableView = {

		let tableView = RecentSearchTableView(frame: .zero, style: .plain)

		return tableView
	}()

	init(frame: CGRect, viewModel: SearchViewModel) {

		_viewModel = viewModel

		super.init(frame: frame)

		setLayout()

		viewModel.recentQueries.observe { [weak self] queries in

			self?.tableView.queries = queries
		}

		tableView.onSelected = { [weak self] query in

			self?._viewModel.searchQuery.value = query
		}
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .red

		addSubview(tableView)

		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: topAnchor),
			tableView.leftAnchor.constraint(equalTo: leftAnchor),
			tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
			tableView.rightAnchor.constraint(equalTo: rightAnchor)
		])

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}


