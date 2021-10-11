//
//  CacheTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 10/10/21.
//

import XCTest
@testable import Meli_Challenge

class CacheTests: XCTestCase {

    func testShouldStoreString() throws {

		let cache = Cache.shared

		let text = "Hi Meli"

		let key = "meli_greeting"

		cache.store(text, forKey: key)

		let textStored = cache.get(forKey: key)

		XCTAssertEqual(text, textStored)
    }

	func testShouldStoreCodable() throws {

		let cache = Cache.shared

		let model = CacheTestModel(id: 7, title: "meli challenge")

		let key = "meli_cacheModel"

		let err = cache.store(model, forKey: key)

		if err != nil {
			XCTFail()
		}

		let modelStored = cache.get(CacheTestModel.self, forKey: key)

		XCTAssertEqual(model, modelStored)
	}

	func testShouldGetKeys() throws {

		let cache = Cache.shared

		let text = "Hi Meli"

		let key = "meli_greeting"

		var keysExpected: [String] = []

		for i in (0...9) {

			let forKey = "\(key)_\(i)"

			keysExpected.append(forKey)

			cache.store(text, forKey: forKey)
		}

		let keys = cache.keys(by: key)

		XCTAssertEqual(keys.count, keysExpected.count)
	}


	func testShouldRemoveObject() throws {

		let cache = Cache.shared

		let text = "Hi Meli"

		let key = "meli_greeting"

		cache.store(text, forKey: key)

		let textStored = cache.get(forKey: key)

		XCTAssertEqual(text, textStored)

		cache.remove(forKey: key)

		let textDelete = cache.get(forKey: key)

		XCTAssertNil(textDelete)
	}


}
