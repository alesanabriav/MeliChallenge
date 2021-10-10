//
//  RecentSearchTableViewCell.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import UIKit

class RecentSearchTableViewCell: UITableViewCell {

	static let reuseId = "RecentSearchTableViewCell"

	private lazy var clockImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		let image = UIImage(systemName: "clock")?.withRenderingMode(.alwaysTemplate)

		img.image = image

		img.tintColor = .mlIron

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = "RecentSearchTableViewCell_clockImg"

		return img
	}()

	private lazy var queryLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .bodySemiBold

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "RecentSearchTableViewCell_queryLabel"

		return label
	}()

	private lazy var arrowImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		let image = UIImage(systemName: "arrow.up.backward")?.withRenderingMode(.alwaysTemplate)

		img.image = image

		img.tintColor = .mlIron

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = "RecentSearchTableViewCell_arrowImg"

		return img
	}()

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)

		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setLayout() {

		addSubview(clockImg)

		addSubview(queryLabel)

		addSubview(arrowImg)

		NSLayoutConstraint.activate([
			clockImg.widthAnchor.constraint(equalToConstant: 22),
			clockImg.heightAnchor.constraint(equalToConstant: 22),
			clockImg.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			clockImg.centerYAnchor.constraint(equalTo: centerYAnchor),

			queryLabel.leftAnchor.constraint(equalTo: clockImg.rightAnchor, constant: 16),
			queryLabel.centerYAnchor.constraint(equalTo: centerYAnchor),

			arrowImg.widthAnchor.constraint(equalToConstant: 22),
			arrowImg.heightAnchor.constraint(equalToConstant: 22),
			arrowImg.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			arrowImg.centerYAnchor.constraint(equalTo: centerYAnchor),
		])
	}

	func setCell(_ query: String) {

		queryLabel.text = query
	}

}
