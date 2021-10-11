//
//  ItemViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class ItemViewController: UIViewController {

	let viewModel = ItemViewModel()

	// MARK: Components

	private lazy var containerView: UIView = {

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.clipsToBounds = true

		view.accessibilityIdentifier = "ItemViewController_containerView"

		return view
	}()

	private lazy var scrollView: UIScrollView = {

		let scrollView = UIScrollView()

		scrollView.translatesAutoresizingMaskIntoConstraints = false

		scrollView.accessibilityIdentifier = "ItemViewController_scrollView"

		return scrollView
	}()

	private lazy var containerStackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .vertical

		stackView.spacing = 16

		stackView.accessibilityIdentifier = ""

		return stackView
	}()

	private lazy var headerView = ItemHeaderView()

	private lazy var InfoView = ItemInfoView()

	private lazy var sellerInfoView = ItemSellerInfoView()

	private lazy var descriptionView = ItemDescriptionView()

	private lazy var descriptionViewHeightAnchor = descriptionView.heightAnchor.constraint(equalToConstant: 0)

	private lazy var questionsViewHeightAnchor = questionsView.heightAnchor.constraint(equalToConstant: 0)

	private lazy var questionsView: ItemQuestionsView = {

		let questionsView = ItemQuestionsView(frame: .zero, viewModel: viewModel)

		return questionsView
	}()

    override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()

		setCallbacks()

		viewModel.seller.observe { [weak self] seller in

			self?.handleSeller(seller)
		}

		viewModel.description.observe { [weak self] description in

			self?.handleDescription(description)
		}

		setItem()
    }

	// MARK: Layout

	private func setLayout() {

		view.backgroundColor = .white

		view.addSubview(headerView)

		view.addSubview(containerView)

		containerView.addSubview(scrollView)

		scrollView.addSubview(containerStackView)

		containerStackView.addArrangedSubview(InfoView)

		containerStackView.addArrangedSubview(sellerInfoView)

		containerStackView.addArrangedSubview(descriptionView)

		containerStackView.addArrangedSubview(questionsView)

		NSLayoutConstraint.activate([
			headerView.topAnchor.constraint(equalTo: view.topAnchor),
			headerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			headerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			headerView.heightAnchor.constraint(equalToConstant: 120),

			containerView.topAnchor.constraint(equalTo: headerView.bottomAnchor),
			containerView.leftAnchor.constraint(equalTo: view.leftAnchor),
			containerView.rightAnchor.constraint(equalTo: view.rightAnchor),
			containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

			scrollView.topAnchor.constraint(equalTo: containerView.topAnchor),
			scrollView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
			scrollView.rightAnchor.constraint(equalTo: containerView.rightAnchor),
			scrollView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),

			containerStackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
			containerStackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
			containerStackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
			containerStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),

			InfoView.leftAnchor.constraint(equalTo: view.leftAnchor),
			InfoView.rightAnchor.constraint(equalTo: view.rightAnchor),
			InfoView.heightAnchor.constraint(equalToConstant: 356),

			sellerInfoView.leftAnchor.constraint(equalTo: view.leftAnchor),
			sellerInfoView.rightAnchor.constraint(equalTo: view.rightAnchor),
			sellerInfoView.heightAnchor.constraint(equalToConstant: 120),

			descriptionView.leftAnchor.constraint(equalTo: view.leftAnchor),
			descriptionView.rightAnchor.constraint(equalTo: view.rightAnchor),
			descriptionViewHeightAnchor,

			questionsView.leftAnchor.constraint(equalTo: view.leftAnchor),
			questionsView.rightAnchor.constraint(equalTo: view.rightAnchor),
			questionsViewHeightAnchor
		])

	}

	// MARK: Actions

	private func setCallbacks() {

		headerView.onBack = { [weak self] in

			self?.handleBack()
		}

		headerView.onSearch = { [weak self] in

			self?.openSearch()
		}

		headerView.onFavorite = { [weak self] in

			self?.handleFavorite()
		}

		descriptionView.onTextHeight = { [weak self] height in

			self?.descriptionViewHeightAnchor.constant = height + 100
		}

		questionsView.onTotalHeight = { [weak self] height in

			self?.questionsViewHeightAnchor.constant = height

			self?.containerStackView.layoutIfNeeded()
		}
	}

	private func handleSeller(_ seller: ItemSeller) {

		DispatchQueue.main.async { [weak self] in

			guard let self = self else {
				return
			}

			guard let info = self.viewModel.currentItem.value else {
				return
			}

			self.InfoView.setSeller(seller)

			self.sellerInfoView.setInfo(info, seller: seller)
		}
	}

	private func setItem() {

		guard let result = viewModel.currentItem.value else {
			return
		}

		let id = result.id

		viewModel.getFavoriteId(by: id)

		viewModel.getDescription(by: id)

		viewModel.getQuestions(by: id)

		let isFavorite = viewModel.favoriteId != nil

		headerView.isFavorite = isFavorite

		if let id = result.seller?.id {

			viewModel.getSeller(by: id)
		}

		InfoView.setInfo(result)
	}

	private func handleDescription(_ description: String) {

		DispatchQueue.main.async { [weak self] in

			self?.descriptionView.setDescription(description)
		}
	}

	private func openSearch() {

		let searchVC = SearchViewController()

		searchVC.isFullscreen = true

		searchVC.modalPresentationStyle = .overCurrentContext

		navigationController?.pushViewController(searchVC, animated: false)
	}

	private func handleBack() {

		navigationController?.popViewController(animated: true)
	}

	private func handleFavorite() {

	}

}
