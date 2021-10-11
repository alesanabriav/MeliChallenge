//
//  Cache.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import Foundation

class Cache {

	static let shared = Cache()

	private let userDefaults = UserDefaults.standard

	private let encoder = JSONEncoder()

	private let decoder = JSONDecoder()

	enum CacheError : Error {
		case emptyData
	}

	enum Key : String {
		case recentQuery
		case favoriteItem
	}

	func store(_ string: String, forKey: String) {

		userDefaults.setValue(string, forKey: forKey)
	}

	@discardableResult
	func store<T: Codable>(_ model: T, forKey: String) -> Error? {

		do {

			let data = try encoder.encode(model)

			userDefaults.set(data, forKey: forKey)

			return nil

		} catch {

			Logger.error(error)

			return error
		}
	}

	func get(forKey: String) -> String? {

		return userDefaults.string(forKey: forKey)
	}

	func get<T: Codable>(_ type: T.Type, forKey: String) -> T? {

		guard let data = userDefaults.data(forKey: forKey) else {

			Logger.error(CacheError.emptyData)

			return nil
		}

		do {

			let model = try decoder.decode(type, from: data)

			return model

		} catch {

			Logger.error(error)

			return nil
		}

	}

	func remove(forKey: String) {

		userDefaults.removeObject(forKey: forKey)
	}

	func keys(by query: String) -> [String] {

		var keys: [String] = []

		for key in userDefaults.dictionaryRepresentation().keys {

			if key.contains(query) {

				keys.append(key)
			}
		}

		return keys
	}

}
