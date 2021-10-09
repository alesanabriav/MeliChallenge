//
//  NetworkTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import XCTest
@testable import Meli_Challenge

class NetworkTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testShouldGet() {

		let network = Network.shared

		network.get(SearchResponse.self, from: "/search?q=iphone") { result in

			switch result {
			case .success(let searchRes):

				print(searchRes)

			case .failure(let err):

				print(err)
			}
		}
        
    }

}
