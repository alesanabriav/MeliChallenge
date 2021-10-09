//
//  LoggerTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class LoggerTests: XCTestCase {

	enum TestError : Error {
		case meliTestErr
	}

    func testShouldGiveErrorMessage() throws {

		let msg = Logger.log(.error, error: TestError.meliTestErr)

		XCTAssertEqual(msg, "ERROR: meliTestErr")

    }

	func testShouldGiveMessage() throws {

		let msg = Logger.log(.message, msg: "Hi Meli")

		XCTAssertEqual(msg, "MSG: Hi Meli")
	}

	func testShouldGiveEmptyMessage() throws {

		let msg = Logger.log(.message)

		XCTAssertEqual(msg, "MSG: ")
	}
}
