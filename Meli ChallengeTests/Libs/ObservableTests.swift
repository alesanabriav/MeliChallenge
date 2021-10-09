//
//  ObservableTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class ObservableTests: XCTestCase {

    func testShouldObserveValue() throws {

		let exp = expectation(description: "change value")

		exp.expectedFulfillmentCount = 3

		let observeBool = Observable<Bool>(false)

		observeBool.observe { b in

			exp.fulfill()
		}

		observeBool.value = true

		observeBool.value = false

		observeBool.value = true

		waitForExpectations(timeout: 3, handler: nil)
    }

	func testShouldObserveMultipleTimes() throws {

		let exp = expectation(description: "multiple observers")

		exp.expectedFulfillmentCount = 3

		let observeBool = Observable<Bool>(false)

		observeBool.observe { b in

			XCTAssert(b)

			exp.fulfill()
		}

		observeBool.observe { b in

			XCTAssert(b)

			exp.fulfill()
		}

		observeBool.observe { b in

			XCTAssert(b)

		    exp.fulfill()
		}

		observeBool.value = true

		waitForExpectations(timeout: 3, handler: nil)
	}

}
