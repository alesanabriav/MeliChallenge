//
//  Observable.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

class Observable<T> {

	public typealias DidChange = (T) -> Void

	private var observables: [String : DidChange] = [:]

	public init(_ defaultValue: T? = nil) {

		value = defaultValue
	}

	public var value: T? {

		didSet {

			notify()
		}
	}

	@discardableResult
	public func observe(_ didChange: @escaping DidChange) -> String {

		let id = UUID().uuidString

		observables[id] = didChange

		return id
	}

	public func remove(_ id: String?) {

		guard let key = id else {
			return
		}

		observables.removeValue(forKey: key)
	}

	public func clean() {

		observables.removeAll()
	}

	func notify() {

		guard let val = self.value else { return }

		for (_, fn) in self.observables {

			fn(val)
		}
	}

	deinit {

		clean()

		value = nil
	}

}
