//
//  CacheTestModel.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import Foundation

struct CacheTestModel : Codable {
	var id: Int
	var title: String
}

extension CacheTestModel : Equatable {

	static func == (lhs: CacheTestModel, rhs: CacheTestModel) -> Bool {

		return lhs.id == rhs.id && lhs.title == rhs.title
	}

}
