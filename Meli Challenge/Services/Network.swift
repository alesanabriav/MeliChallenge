//
//  Network.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class Network {

	public static let shared = Network(site: .COL)

	private lazy var session = URLSession(configuration: .default)

	private lazy var decoder = JSONDecoder()

	private let baseUri = "https://api.mercadolibre.com/sites/"

	enum Site : String {
		case COL = "MCO"
		case ARG = "MLA"
	}

	private var siteId: String

	init(site: Site) {

		siteId = site.rawValue
	}

	public func get<T: Codable>(_ type: T.Type, from path: String, completion: @escaping (Result<T, Error>) -> Void) {

		let uri = "\(baseUri)\(siteId)\(path)"

		Logger.log(.message, msg: uri)
	}

	func decode<T: Codable>(_ type: T.Type, data: Data) -> Result<T, Error> {

		do {

			decoder.keyDecodingStrategy = .convertFromSnakeCase

			let model = try decoder.decode(type, from: data)

			return .success(model)

		} catch {

			return .failure(error)

		}
	}

}
