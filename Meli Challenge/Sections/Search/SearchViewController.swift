//
//  SearchViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class SearchViewController : UIViewController {

	var onDeinit: (() -> Void)?

	private let viewModel = SearchViewModel()

	var isFullscreen = false

	// MARK: Components

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

	private lazy var emptyState: SearchEmptyState = {

		let view = SearchEmptyState()

		view.isHidden = true

		return view
	}()

	private lazy var activityIndicator: UIActivityIndicatorView = {

		let indicatorView = UIActivityIndicatorView()

		indicatorView.translatesAutoresizingMaskIntoConstraints = false

		indicatorView.style = .large

		indicatorView.color = .mlBlue

		indicatorView.hidesWhenStopped = true

		indicatorView.accessibilityIdentifier = "SearchViewController_activityIndicator"

		return indicatorView
	}()

	// MARK: Lifecycles

    override func viewDidLoad() {
        super.viewDidLoad()

		setLayout()

		headerView.delegate = self

		setCallbacks()

		if isFullscreen {

			headerView.setFocus()
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

		view.addSubview(activityIndicator)

		view.addSubview(resultsView)

		view.addSubview(recentView)

		view.addSubview(emptyState)

		NSLayoutConstraint.activate([
			headerView.topAnchor.constraint(equalTo: view.topAnchor),
			headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			headerView.heightAnchor.constraint(equalToConstant: 120),

			activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60),
			activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),

			resultsView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			resultsView.leftAnchor.constraint(equalTo: view.leftAnchor),
			resultsView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			resultsView.rightAnchor.constraint(equalTo: view.rightAnchor),

			recentView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			recentView.leftAnchor.constraint(equalTo: view.leftAnchor),
			recentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			recentView.rightAnchor.constraint(equalTo: view.rightAnchor),

			emptyState.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			emptyState.leftAnchor.constraint(equalTo: view.leftAnchor),
			emptyState.bottomAnchor.constraint(equalTo: view.bottomAnchor),
			emptyState.rightAnchor.constraint(equalTo: view.rightAnchor)
		])
	}

	// MARK: Actions

	private func setCallbacks() {

		viewModel.searchResponse.observe { [weak self] res in

			if res.results.count > 0 {

				self?.showEmptyState(false)

				self?.showRecent(false)

				self?.showResults()

			} else {

				self?.showEmptyState()
			}
		}

		viewModel.searchQuery.observe { [weak self] query in

			self?.handleQuery(query)
		}

		viewModel.resultSelected.observe { [weak self] result in

			self?.openItemDetail()
		}
	}

	private func showEmptyState(_ show: Bool = true) {

		DispatchQueue.main.async { [weak self] in

			self?.activityIndicator.stopAnimating()

			self?.emptyState.isHidden = !show
			
		}
	}

	private func showResults(_ show: Bool = true) {

		DispatchQueue.main.async { [weak self] in

			guard let self = self else {
				return
			}

			self.activityIndicator.stopAnimating()

			self.resultsView.isHidden = !show

			self.resultsView.layer.opacity = show ? 1 : 0

			self.view.layoutIfNeeded()
		}
	}

	private func showRecent(_ show: Bool = true) {

		viewModel.getRecentQueries()

		DispatchQueue.main.async { [weak self] in

			guard let self = self else {
				return
			}
			
			self.recentView.isHidden = !show

			self.recentView.layer.opacity = show ? 1 : 0

			self.view.layoutIfNeeded()
		}
	}

	private func handleQuery(_ query: String) {

		DispatchQueue.main.async { [weak self] in

			guard let self = self else {
				return
			}

			self.activityIndicator.startAnimating()

			self.headerView.setQuery(query)

			self.viewModel.searchBy(query: query)
		}

	}

	private func openItemDetail() {

		let itemVC = ItemViewController()

		itemVC.item = viewModel.resultSelected.value

		navigationController?.pushViewController(itemVC, animated: true)
	}

	private func close() {

		navigationController?.popViewController(animated: true)
	}

	deinit {

		onDeinit?()

		Logger.log("Deinit SearchViewController")
	}

}

// MARK: SearchHeaderViewDelegate
extension SearchViewController : SearchHeaderViewDelegate {

	func searchFocus() {

		Logger.log("search focus")

		if let query = viewModel.searchQuery.value, query.isEmpty {

			showRecent()
		}
	}

	func searchCancel() {

		if isFullscreen {

			close()
		}

		viewModel.searchQuery.value = ""

		showRecent(false)

		showResults(false)
	}

	func searchEnd(_ query: String) {

		Logger.log("search end: \(query)")

		activityIndicator.startAnimating()

		viewModel.searchQuery.value = query

		viewModel.storeRecentQuery(query)

		viewModel.searchBy(query: query)
	}

	func searchChange(_ query: String) {
		
		showRecent(false)
	}


}
