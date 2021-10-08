
//
//  ViewController.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class MainViewController: UINavigationController {

	override func viewDidLoad() {
		super.viewDidLoad()

		viewControllers = [SearchViewController()]

		setNavBar()

		setLayout()
	}

	private func setLayout() {

		view.backgroundColor = .white
	}

	private func setNavBar() {

		navigationBar.isHidden = true
	}

}

