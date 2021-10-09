//
//  SearchViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class SearchViewController : UIViewController {

	private let viewModel = SearchViewModel()

	private lazy var headerView = SearchHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()

		setLayout()

		headerView.delegate = self

		viewModel.searchResponse.observe { res in

			Logger.log(.message , msg: "\(res)")
		}
    }

	private func setLayout() {

		view.backgroundColor = .white

		view.addSubview(headerView)

		NSLayoutConstraint.activate([
			headerView.topAnchor.constraint(equalTo: view.topAnchor),
			headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			headerView.heightAnchor.constraint(equalToConstant: 120)
		])
	}

}

extension SearchViewController : SearchHeaderViewDelegate {

	func searchFocus() {

	}

	func searchEnd(_ query: String) {

		Logger.log(.message, msg: "search end: \(query)")

		viewModel.searchBy(query: query)
	}

	func searchChange(_ query: String) {

	}


}
