//
//  ItemViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class ItemViewController: UIViewController {

	lazy var headerView = ItemHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setLayout()
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
