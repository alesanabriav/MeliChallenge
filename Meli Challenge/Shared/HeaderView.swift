//
//  HeaderView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 8/10/21.
//

import UIKit

class HeaderView : UIView {

	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .mlYellow
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}

