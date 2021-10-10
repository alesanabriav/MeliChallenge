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

	private lazy var resultsView: SearchResultsView = {

		let resultsView = SearchResultsView(frame: .zero, viewModel: viewModel)

		resultsView.isHidden = true

		resultsView.layer.opacity = 0

		return resultsView
	}()

	private lazy var recentView: RecentSearchView = {

		let recentView = RecentSearchView(frame: .zero, viewModel: viewModel)

		recentView.isHidden = true

		recentView.layer.opacity = 0

		return recentView
	}()

    override func viewDidLoad() {
        super.viewDidLoad()

		setLayout()

		headerView.delegate = self

		viewModel.searchResponse.observe { [weak self] res in
			

			if res.results.count > 0 {

				self?.showResults()
			}
		}
    }

	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {

		super.viewWillTransition(to: size, with: coordinator)

		resultsView.relayout()
	}

	// MARK: Layout

	private func setLayout() {

		view.backgroundColor = .white

		view.addSubview(headerView)

		view.addSubview(resultsView)

		view.addSubview(recentView)

		NSLayoutConstraint.activate([
			headerView.topAnchor.constraint(equalTo: view.topAnchor),
			headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			headerView.heightAnchor.constraint(equalToConstant: 120),

			resultsView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			resultsView.leftAnchor.constraint(equalTo: view.leftAnchor),
			resultsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			resultsView.rightAnchor.constraint(equalTo: view.rightAnchor),

			recentView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			recentView.leftAnchor.constraint(equalTo: view.leftAnchor),
			recentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			recentView.rightAnchor.constraint(equalTo: view.rightAnchor)
		])
	}

	private func showResults(_ show: Bool = true) {

		DispatchQueue.main.async {

			self.resultsView.isHidden = !show

			self.resultsView.layer.opacity = show ? 1 : 0

			self.view.layoutIfNeeded()
		}
	}

	private func showRecent(_ show: Bool = true) {

		viewModel.getRecentQueries()

		DispatchQueue.main.async {

			self.recentView.isHidden = !show

			self.recentView.layer.opacity = show ? 1 : 0

			self.view.layoutIfNeeded()
		}
	}

}

extension SearchViewController : SearchHeaderViewDelegate {

	func searchFocus() {

		showRecent()
	}

	func searchCancel() {

		showRecent(false)

		showResults(false)
	}

	func searchEnd(_ query: String) {

		Logger.log(.message, msg: "search end: \(query)")

		viewModel.storeRecentQuery(query)

		viewModel.searchBy(query: query)
	}

	func searchChange(_ query: String) {
		
		showRecent(false)
	}


}
