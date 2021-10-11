//
//  ItemQuestion.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import Foundation

struct ItemQuestion : Codable {

	var id: Int
	var date_created: String
	var item_id: String
	var status: String
	var text: String
	var answer: Answer?

	struct Answer : Codable {
		var text: String
		var date_created: String
		var status: String
	}
}

struct ItemQuestions : Codable {

	var questions: [ItemQuestion]
}
