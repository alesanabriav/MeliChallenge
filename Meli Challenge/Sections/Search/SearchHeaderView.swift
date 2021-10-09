//
//  SearchHeaderView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import UIKit

class SearchHeaderView : UIView {

	private lazy var searchTextField: UITextField = {

		let textField = UITextField()

		textField.layer.cornerRadius = 16

		textField.layer.shadowColor = UIColor.darkGray.cgColor

		textField.layer.shadowOffset = CGSize(width: 0, height: 0)

		textField.layer.shadowRadius = 3

		textField.layer.shadowOpacity = 0.3

		textField.backgroundColor = .white

		textField.attributedPlaceholder = NSAttributedString(string: "Buscar en Mercado Libre", attributes: [
			.foregroundColor: UIColor.mlMist,
		])

		textField.translatesAutoresizingMaskIntoConstraints = false

		return textField
	}()

	override init(frame: CGRect) {

		super.init(frame: frame)

		setLayout()
	}

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .mlYellow

		addSubview(searchTextField)

		NSLayoutConstraint.activate([
			searchTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
			searchTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 22),
			searchTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -22),
			searchTextField.heightAnchor.constraint(equalToConstant: 30)
		])

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}
