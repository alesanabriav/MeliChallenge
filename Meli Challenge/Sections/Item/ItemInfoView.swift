//
//  ItemInfoView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

class ItemInfoView : UIView {

	var onShare: (() -> Void)?

	// MARK: Components

	private lazy var stateLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .subheadline

		label.textColor = .mlGray

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "ItemInfoView_stateLabel"

		return label
	}()

	private lazy var titleText: UITextView = {

		let text = UITextView()

		text.translatesAutoresizingMaskIntoConstraints = false

		text.backgroundColor = .clear

		text.isEditable = false

		text.isScrollEnabled = false

		text.isUserInteractionEnabled = false

		text.font = .body

		text.textColor = .black

		text.textContainer.lineFragmentPadding = .zero

		text.accessibilityIdentifier = "ItemInfoView_titleText"

		return text
	}()

	private lazy var thumbImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = "ItemInfoView_thumbImg"

		return img
	}()

	private lazy var shareBtn: UIButton = {

		let btn = UIButton()

		btn.translatesAutoresizingMaskIntoConstraints = false

		btn.backgroundColor = .mlNero

		btn.setImage(UIImage(systemName: "square.and.arrow.up"), for: .normal)

		btn.imageView?.tintColor = .black

		btn.layer.cornerRadius = 17

		btn.accessibilityIdentifier = "ItemInfoView_shareBtn"

		return btn
	}()

	private lazy var priceLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .largeTitle

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "ItemInfoView_priceLabel"

		return label
	}()

	private lazy var installmentsImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		let image = UIImage(systemName: "creditcard")?.withRenderingMode(.alwaysTemplate)

		img.image = image

		img.tintColor = .black

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = ""

		return img
	}()

	private lazy var installmentsLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .placeholder

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "ItemInfoView_installmentsLabel"

		return label
	}()

	private lazy var shippingImg : UIImageView = {

		let img = UIImageView()

		img.translatesAutoresizingMaskIntoConstraints = false

		img.isUserInteractionEnabled = true

		let image = UIImage(systemName: "shippingbox")?.withRenderingMode(.alwaysTemplate)

		img.image = image

		img.tintColor = .mlGreen

		img.contentMode = .scaleAspectFit

		img.accessibilityIdentifier = ""

		return img
	}()

	private lazy var shippingLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .placeholder

		label.textColor = .mlGreen

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "ItemInfoView_installmentsLabel"

		return label
	}()

	private lazy var sellerLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .placeholder

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "sellerLabel_installmentsLabel"

		return label
	}()

	private lazy var sellerSalesLabel: UILabel = {

		let label = UILabel()

		label.translatesAutoresizingMaskIntoConstraints = false

		label.font = .placeholder

		label.textColor = .black

		label.backgroundColor = .clear

		label.accessibilityIdentifier = "sellerSalesLabel_installmentsLabel"

		return label
	}()

	private lazy var buyBtn = MLButton(frame: .zero, title: "Comprar ahora", bgColor: .mlBlue, textColor: .white)

	private lazy var addToCartBtn = MLButton(frame: .zero, title: "Agregar al carrito", bgColor: .mlGlitter, textColor: .mlBlue)

	private lazy var separatorView: UIView = {

		let view  = UIView()

		view.translatesAutoresizingMaskIntoConstraints = false

		view.backgroundColor = .mlHaze

		return view
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		setLayout()

		shareBtn.addTarget(self, action: #selector(shareTap), for: .touchUpInside)
	}

	// MARK: Layout

	private func setLayout() {

		translatesAutoresizingMaskIntoConstraints = false

		addSubview(stateLabel)

		addSubview(titleText)

		addSubview(thumbImg)

		addSubview(shareBtn)

		addSubview(priceLabel)

		addSubview(installmentsImg)

		addSubview(installmentsLabel)

		addSubview(shippingImg)

		addSubview(shippingLabel)

		addSubview(sellerLabel)

		addSubview(sellerSalesLabel)

		addSubview(buyBtn)

		addSubview(addToCartBtn)

		addSubview(separatorView)

		NSLayoutConstraint.activate([
			stateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
			stateLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			stateLabel.rightAnchor.constraint(equalTo: rightAnchor),

			titleText.topAnchor.constraint(equalTo: stateLabel.bottomAnchor, constant: 4),
			titleText.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			titleText.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),

			thumbImg.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 16),
			thumbImg.leftAnchor.constraint(equalTo: leftAnchor),
			thumbImg.rightAnchor.constraint(equalTo: rightAnchor),
			thumbImg.heightAnchor.constraint(equalToConstant: 90),

			shareBtn.topAnchor.constraint(equalTo: thumbImg.bottomAnchor, constant: -38),
			shareBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			shareBtn.heightAnchor.constraint(equalToConstant: 34),
			shareBtn.widthAnchor.constraint(equalToConstant: 34),

			priceLabel.topAnchor.constraint(equalTo: thumbImg.bottomAnchor, constant: 16),
			priceLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			priceLabel.rightAnchor.constraint(equalTo: rightAnchor),

			installmentsImg.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 16),
			installmentsImg.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			installmentsImg.heightAnchor.constraint(equalToConstant: 18),
			installmentsImg.widthAnchor.constraint(equalToConstant: 18),

			installmentsLabel.centerYAnchor.constraint(equalTo: installmentsImg.centerYAnchor),
			installmentsLabel.leftAnchor.constraint(equalTo: installmentsImg.rightAnchor, constant: 8),

			shippingImg.topAnchor.constraint(equalTo: installmentsImg.bottomAnchor, constant: 16),
			shippingImg.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			shippingImg.heightAnchor.constraint(equalToConstant: 18),
			shippingImg.widthAnchor.constraint(equalToConstant: 18),

			shippingLabel.centerYAnchor.constraint(equalTo: shippingImg.centerYAnchor),
			shippingLabel.leftAnchor.constraint(equalTo: shippingImg.rightAnchor, constant: 8),

			sellerLabel.topAnchor.constraint(equalTo: shippingLabel.bottomAnchor, constant: 16),
			sellerLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),

			sellerSalesLabel.topAnchor.constraint(equalTo: sellerLabel.bottomAnchor, constant: 4),
			sellerSalesLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),

			buyBtn.topAnchor.constraint(equalTo: sellerSalesLabel.bottomAnchor, constant: 16),
			buyBtn.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			buyBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			buyBtn.heightAnchor.constraint(equalToConstant: 44),

			addToCartBtn.topAnchor.constraint(equalTo: buyBtn.bottomAnchor, constant: 8),
			addToCartBtn.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
			addToCartBtn.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
			addToCartBtn.heightAnchor.constraint(equalToConstant: 44),

			separatorView.bottomAnchor.constraint(equalTo: bottomAnchor),
			separatorView.leftAnchor.constraint(equalTo: leftAnchor),
			separatorView.rightAnchor.constraint(equalTo: rightAnchor),
			separatorView.heightAnchor.constraint(equalToConstant: 1)
		])

	}

	// MARK: Actions

	@objc private func shareTap() {

		onShare?()
	}

	func setInfo(_ result: SearchResult) {

		let condition = result.condition == "new" ? "Nuevo" : "Usado"

		let sold = result.sold_quantity

		let price = NumberFormatter.currency.string(from: result.price as NSNumber) ?? ""

		let freeShipping = result.shipping?.free_shipping ?? false

		let quantity = result.installments?.quantity ?? 1

		let seller = result.seller?.id

		stateLabel.text = "\(condition) | \(sold) vendidos"

		titleText.text = result.title

		thumbImg.setImage(with: result.thumbnail) { size in
			Logger.log(size)
		}

		priceLabel.text = price

		installmentsLabel.text = "Hasta \(quantity) cuotas"

		shippingLabel.text = freeShipping ? "Envio gratis" : "llega entre"
	}

	func setSeller(_ seller: ItemSeller) {

		sellerLabel.text = "Vendido por \(seller.nickname)"

		let sales = seller.seller_reputation?.metrics?.sales.completed ?? 0

		sellerSalesLabel.text = "\(sales) ventas"
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

