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

		let msg = Logger.error(TestError.meliTestErr)

		XCTAssert(msg.contains("Error: meliTestErr"))
    }

	func testShouldGiveErrorWithExtraInfo() throws {

		let msg = Logger.error(TestError.meliTestErr, extraInfo: "from test")

		XCTAssert(msg.contains("Error: meliTestErr from test"))
	}

	func testShouldGiveMessage() throws {

		let msg = Logger.log("Hi Meli")

		XCTAssert(msg.contains("Hi Meli at "))
	}
}
