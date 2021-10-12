//
//  ItemRepositoryTests.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 11/10/21.
//

import XCTest
@testable import Meli_Challenge

class ItemRepositoryTests: XCTestCase {

	let session = URLSessionMock()

    override func setUpWithError() throws {

		session.dataStub = nil
    }

    func testShouldGetSeller() throws {

		let exp = expectation(description: "get seller")

		session.dataStub = sellerResponseJSON.data(using: .utf8, allowLossyConversion: true)

		Network.shared.session =  session

		let repo = ItemRepository()

		let id = 162681369

		repo.getSeller(by: id) { res in

			switch res {

			case .success(let sellerRes):

				XCTAssertEqual(sellerRes.seller.nickname, "CELUMOVIL STORE")

				XCTAssertEqual(sellerRes.seller.id, id)

				exp.fulfill()

			case .failure(let err):

				XCTFail("\(err)")
			}
			
		}

		waitForExpectations(timeout: 3, handler: nil)
    }

	func testShouldGetQuestions() throws {

		let exp = expectation(description: "get questions")

		session.dataStub = QuestionsResponseJSON.data(using: .utf8, allowLossyConversion: true)

		Network.shared.session =  session

		let repo = ItemRepository()

		let id = "MCO608640998"

		repo.getQuestions(by: id) { res in

			switch res {

			case .success(let questions):

				XCTAssertEqual(questions.count, 50)

				XCTAssertEqual(questions.first?.item_id, id)

				exp.fulfill()

			case .failure(let err):

				XCTFail("\(err)")
			}
		}

		waitForExpectations(timeout: 3, handler: nil)

	}

	func testShouldGetDescription() throws {

		let exp = expectation(description: "get description")

		session.dataStub = DescriptionResponseJSON.data(using: .utf8, allowLossyConversion: true)

		Network.shared.session =  session

		let repo = ItemRepository()

		let id = "MCO608640998"

		repo.getDescription(by: id) { res in

			switch res {

			case .success(let des):

				XCTAssert(des.contains("Fotos amplias y perfectas de día"))

				exp.fulfill()

			case .failure(let err):

				XCTFail("\(err)")
			}
		}

		waitForExpectations(timeout: 3, handler: nil)
	}


}
