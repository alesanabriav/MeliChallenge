//
//  ItemSellerInfoView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class ItemSellerInfoView : UIView {

	// MARK: Components

	private lazy var containerStackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .vertical

		stackView.spacing = 16

		stackView.accessibilityIdentifier = "ItemSellerInfoView_containerStackView"

		return stackView
	}()

	private lazy var sectionTitleLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .title

		label.textColor = .black

		label.backgroundColor = .clear

		label.text = "Información sobre el vendedor"

		label.accessibilityIdentifier = "ItemSellerInfoView_sectionTitleLabel"

		return label
	}()

	private lazy var locationStackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .horizontal

		stackView.spacing = 8

		stackView.accessibilityIdentifier = "ItemSellerInfoView_locationStackView"

		return stackView
	}()

	private lazy var locationImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		let image = UIImage(systemName: "location")?.withRenderingMode(.alwaysTemplate)

		img.image = image

		img.tintColor = .black

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = "locationImg"

		return img
	}()

	private lazy var locationLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .placeholder

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "locationLabel"

		return label
	}()

	private lazy var statusStackView: UIStackView =  {

		let stackView = UIStackView()

		stackView.translatesAutoresizingMaskIntoConstraints = false

		stackView.axis = .horizontal

		stackView.spacing = 8

		stackView.accessibilityIdentifier = "ItemSellerInfoView_statusStackView"

		return stackView
	}()

	private lazy var statusImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		let image = UIImage(systemName: "rosette")?.withRenderingMode(.alwaysTemplate)

		img.image = image

		img.tintColor = .mlGreen

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = "statusImg"

		return img
	}()

	private lazy var statusLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .placeholder

		label.textColor = .mlGreen

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "statusLabel"

		return label
	}()

	private lazy var ratingView = ItemSellerRating()

	private lazy var separatorView: UIView = {

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = .mlHaze

		return view
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()
	}

	// MARK: Layout

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(sectionTitleLabel)

		addSubview(containerStackView)

		addSubview(separatorView)

		locationStackView.addArrangedSubview(locationImg)

		locationStackView.addArrangedSubview(locationLabel)

		containerStackView.addArrangedSubview(locationStackView)

		statusStackView.addArrangedSubview(statusImg)

		statusStackView.addArrangedSubview(statusLabel)

		containerStackView.addArrangedSubview(statusStackView)

		containerStackView.addArrangedSubview(ratingView)

		NSLayoutConstraint.activate([
			sectionTitleLabel.topAnchor.constraint(equalTo: topAnchor),
			sectionTitleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			sectionTitleLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			sectionTitleLabel.heightAnchor.constraint(equalToConstant: 17),

			containerStackView.topAnchor.constraint(equalTo: sectionTitleLabel.bottomAnchor, constant: 16),
			containerStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			containerStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),

			locationImg.heightAnchor.constraint(equalToConstant: 18),
			locationImg.widthAnchor.constraint(equalToConstant: 18),

			statusImg.heightAnchor.constraint(equalToConstant: 18),
			statusImg.widthAnchor.constraint(equalToConstant: 18),

			separatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
			separatorView.leftAnchor.constraint(equalTo: leftAnchor),
			separatorView.rightAnchor.constraint(equalTo: rightAnchor),
			separatorView.heightAnchor.constraint(equalToConstant: 1)
		])

	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func setInfo(_ result: SearchResult, seller: ItemSeller) {

		if let address = result.address {

			locationLabel.text = "\(address.city_name), \(address.state_name)"

		} else {

			locationStackView.isHidden = true
		}

		if seller.seller_reputation?.power_seller_status != nil {

			statusLabel.text = "MercadoLíder Platinum"

		} else {

			statusStackView.isHidden = true
		}

		if let levelId = seller.seller_reputation?.level_id {

			let level = levelId.split(separator: "_")

			Logger.log("seller level \(level)")

			if let l = level.first {

				let type = ItemSellerRating.RatingType(rawValue: Int(l) ?? 1) ?? .veryBad

				Logger.log("seller level \(type)")

				ratingView.type = type
			}



		}
		
	}

}

