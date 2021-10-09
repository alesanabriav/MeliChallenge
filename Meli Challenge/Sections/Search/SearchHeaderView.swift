//
//  SearchHeaderView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import UIKit

class SearchHeaderView : UIView {

	weak var delegate: SearchHeaderViewDelegate?

	private lazy var cancelBtn: UIButton = {

		let btn = UIButton()

		let title = "Cancel"

		btn.translatesAutoresizingMaskIntoConstraints = false

		btn.setTitle(title, for: .normal)

		btn.titleLabel?.font = .body

		btn.backgroundColor = .clear

		btn.setTitleColor(.black, for: .normal)

		btn.isHidden = true

		btn.layer.opacity = 0

		return btn
	}()

	private lazy var searchImg: UIImageView = {

		let imgView = UIImageView()

		imgView.image = UIImage(systemName: "magnifyingglass")?.withAlignmentRectInsets(UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0))

		imgView.contentMode = .scaleAspectFit

		imgView.tintColor = .mlMist

		imgView.translatesAutoresizingMaskIntoConstraints = false

		return imgView
	}()

	private lazy var searchTextField: UITextField = {

		let textField = UITextField()

		textField.layer.cornerRadius = 16

		textField.layer.shadowColor = UIColor.darkGray.cgColor

		textField.layer.shadowOffset = CGSize(width: 0, height: 0)

		textField.layer.shadowRadius = 3

		textField.layer.shadowOpacity = 0.3

		textField.backgroundColor = .white

		textField.font = .body

		textField.attributedPlaceholder = NSAttributedString(string: "Buscar en Mercado Libre", attributes: [
			.foregroundColor: UIColor.mlMist,
			.font: UIFont.placeholder
		])

		textField.translatesAutoresizingMaskIntoConstraints = false

		textField.leftView = searchImg

		textField.leftViewMode = .always

		textField.clearButtonMode = .whileEditing

		textField.delegate = self

		return textField
	}()

	private lazy var searchTextFieldDefaultRightAnchor = searchTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: -16)

	private lazy var searchTextFieldCancelRightAnchor = searchTextField.rightAnchor.constraint(equalTo: cancelBtn.leftAnchor, constant: -8)

	override init(frame: CGRect) {

		super.init(frame: frame)

		setLayout()

		searchTextField.addTarget(self, action: #selector(searchTextChange), for: .editingChanged)

		cancelBtn.addTarget(self, action: #selector(cancelTap), for: .touchUpInside)
	}

	// MARK: Layout

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		backgroundColor = .mlYellow

		addSubview(searchTextField)
		addSubview(cancelBtn)

		NSLayoutConstraint.activate([
			searchTextField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
			searchTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			searchTextFieldDefaultRightAnchor,
			searchTextField.heightAnchor.constraint(equalToConstant: 30),

			searchImg.widthAnchor.constraint(equalToConstant: 16),
			searchImg.heightAnchor.constraint(equalToConstant: 16),

			cancelBtn.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
			cancelBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -16)
		])

	}

	// MARK: Actions

	@objc private func searchTextChange() {

		let query = searchTextField.text ?? ""

		delegate?.searchChange(query)
	}

	@objc private func cancelTap() {

		showCancel(false)

		searchTextField.text = ""

		searchTextField.resignFirstResponder()
	}

	private func showCancel(_ show: Bool = true) {

		searchTextFieldDefaultRightAnchor.isActive = !show

		searchTextFieldCancelRightAnchor.isActive = show

		cancelBtn.isHidden = !show

		UIView.animate(withDuration: 0.3) {

			self.layoutIfNeeded()

			self.cancelBtn.layer.opacity = show ? 1 : 0
		}
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	deinit {

		delegate = nil
	}

}

extension SearchHeaderView : UITextFieldDelegate {

	func textFieldDidBeginEditing(_ textField: UITextField) {

		delegate?.searchFocus()

		showCancel()
	}

	func textFieldDidEndEditing(_ textField: UITextField) {

		showCancel(false)
	}

	func textFieldShouldReturn(_ textField: UITextField) -> Bool {

		textField.resignFirstResponder()

		let query = textField.text ?? ""

		Logger.log(.message, msg: query)

		delegate?.searchEnd(query)

		return true
	}
	
}
