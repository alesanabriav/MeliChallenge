//
//  MLButton.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class MLButton : UIButton {

	init(frame: CGRect, title: String, bgColor: UIColor, textColor: UIColor) {

		super.init(frame: frame)

		backgroundColor = bgColor

		setTitle(title, for: .normal)
	
		setTitleColor(textColor, for: .normal)

		titleLabel?.font = .bodySemiBold

		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setLayout() {

		titleLabel?.textAlignment = .center

		layer.cornerRadius = 8

		frame.size.height = 46

		translatesAutoresizingMaskIntoConstraints = false

	}

}
