//
//  UIImageView.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//
import UIKit

extension UIImageView {

	open func getImage(with uri: String, completion: @escaping (UIImage?) -> Void) {

		guard let url = URL(string: uri) else {

			completion(nil)

			return
		}

		let request = URLRequest(url: url)

		let dataTask = URLSession.shared.dataTask(with: request) { data, _, err in

			if let err = err {

				print("error getting img", err)

				completion(nil)
			}

			guard let data = data else {

				completion(nil)

				return
			}

			guard let img = UIImage(data: data) else {

				completion(nil)

				return
			}

			completion(img)
		}

		dataTask.resume()

	}

	open func setImage(with uri: String?, size: CGSize) {

		if let uri = uri {

			self.getImage(with: uri) { [weak self] img in

				guard let self = self else { return }

				guard let img = img else { return }

				self.resizeImg(img, with: size) { resizedImg in

					DispatchQueue.main.async {

						UIView.animate(withDuration: 0.1, animations: {
							self.layer.opacity = 0
						}) { _ in

							self.image = resizedImg

							UIView.animate(withDuration: 0.3) {

								self.layer.opacity = 1
							}
						}
					}

				}

			}
		}
	}

	open func setImage(with uri: String?, completion: ((CGSize) -> Void)? = nil) {

		if let uri = uri {

			self.getImage(with: uri) { [weak self] img in

				guard let self = self else { return }

				guard let img = img else { return }

				DispatchQueue.main.async {

					UIView.animate(withDuration: 0.1, animations: {

						self.layer.opacity = 0

					}) { _ in

						self.image = img

						completion?(img.size)

						UIView.animate(withDuration: 0.3) {

							self.layer.opacity = 1
						}
					}
				}

			}
		}
	}

	open func resizeImg(_ img: UIImage, with size: CGSize, completion: @escaping (UIImage) -> Void) {

		DispatchQueue.init(label: "resizeImg", qos: .userInteractive).async {

			let widthRatio = size.width / img.size.width

			let heightRatio = size.height / img.size.height

			let scaleFactor = min(widthRatio, heightRatio)

			let width = (img.size.width * scaleFactor) * 2

			let height = (img.size.height * scaleFactor) * 2

			let resize = CGSize(width: width, height: height)

			let renderer = UIGraphicsImageRenderer(size: resize)

			let resizedImg = renderer.image { _ in

				img.draw(in: CGRect(origin: .zero, size: resize))
			}

			completion(resizedImg)
		}
	}
}
