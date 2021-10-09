//
//  NumberFormatter.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

extension NumberFormatter {

	static var currency: NumberFormatter {

		let formatter = NumberFormatter()

		formatter.numberStyle = .currency

		formatter.locale = Locale(identifier: "es_CO")

		return formatter
	}
}
