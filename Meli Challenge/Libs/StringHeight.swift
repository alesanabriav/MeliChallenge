//
//  StringHeight.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import UIKit

struct StringHeight {

	static func getHeight(from string: String, font: UIFont, width: CGFloat) -> CGFloat {

		let attributedStr = NSMutableAttributedString.init(string: string)

		let pStyle = NSMutableParagraphStyle()

		attributedStr.addAttributes([ .font : font as Any, .paragraphStyle: pStyle],
									range: NSRange.init(location: 0, length: attributedStr.length))

		let rect = attributedStr.boundingRect(with: CGSize.init(width: width, height:
																	CGFloat.greatestFiniteMagnitude), options: NSStringDrawingOptions.usesLineFragmentOrigin,
											  context: nil)

		let size = CGSize.init(width: width, height: rect.height)

		return size.height
	}

}
