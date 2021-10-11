//
//  Network.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class Network {

	public static let shared = Network(site: .COL)

	var session: URLSessionProtocol = URLSession(configuration: .default)

	private lazy var decoder = JSONDecoder()

	private let baseUri = "https://api.mercadolibre.com"

	enum Site : String {
		case COL = "MCO"
		case ARG = "MLA"
	}

	private var siteId: String

	init(site: Site) {

		siteId = site.rawValue
	}

	enum NetworkError : Error {
		case invalidURL
		case emptyData
		case invalidHttpUrlResponse
		case statusCode(_ code: Int)
	}

	public func get<T: Codable>(_ type: T.Type, from path: String, completion: @escaping (Result<T, Error>) -> Void) {

		let uri = "\(baseUri)\(path)"

		Logger.log(uri)

		guard let url = URL(string: uri) else {

			completion(.failure(NetworkError.invalidURL))

			return
		}

		let req = URLRequest(url: url)

		let dataTask = session.dataTask(with: req) { [weak self] data, URLRes, err in

			guard let self = self else {
				return
			}

			guard let HTTPURLRes = URLRes as? HTTPURLResponse else {

				completion(.failure(NetworkError.invalidHttpUrlResponse))

				return
			}

			if !(200..<300).contains(HTTPURLRes.statusCode) {

				completion(.failure(NetworkError.statusCode(HTTPURLRes.statusCode)))

				return
			}

			guard let data = data else {

				completion(.failure(NetworkError.emptyData))

				return
			}

			switch self.decode(type, data: data) {

			case .success(let model):

				completion(.success(model))

			case .failure(let err):

				completion(.failure(err))
			}

		}

		dataTask.resume()
	}

	func decode<T: Codable>(_ type: T.Type, data: Data) -> Result<T, Error> {

		do {

			let model = try decoder.decode(type, from: data)

			return .success(model)

		} catch {

			return .failure(error)

		}
	}

}
