//
//  URLSessionMock.swift
//  Meli ChallengeTests
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation
@testable import Meli_Challenge

class URLSessionMock : URLSessionProtocol {

	var dataStub: Data?

	var errorStub: Error?

	var headersStub: [String : String] = [:]

	var statusCode: Int = 200

	func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {

		let url = request.url ?? URL(string: "https://api.mercadolibre.com/sites/")!

		let HTTPURLRes = HTTPURLResponse(url: url, statusCode: statusCode, httpVersion: "", headerFields: headersStub)

		completionHandler(dataStub, HTTPURLRes, errorStub)

		return URLSession.shared.dataTask(with: request)
	}



}
