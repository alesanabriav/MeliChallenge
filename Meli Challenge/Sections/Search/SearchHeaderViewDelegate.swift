//
//  SearchHeaderViewDelegate.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

protocol SearchHeaderViewDelegate : AnyObject {

	func searchFocus()

	func searchCancel()

	func searchEnd(_ query: String)

	func searchChange(_ query: String)
}
