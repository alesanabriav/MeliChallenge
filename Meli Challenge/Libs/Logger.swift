//
//  Logger.swift
//  Meli Challenge
//
//  Created by Alejandro Sanabria on 9/10/21.
//

import Foundation

struct Logger {

	enum LogType {
		case message
		case error
	}

	@discardableResult
	static func log(_ msg: Any) -> String {

		let date = Date()

		let logMsg = "Message: \(String(describing: msg)) at \(date)"

		debugPrint(logMsg)

		return logMsg
	}

	@discardableResult
	static func error(_ err: Error, extraInfo: Any? = nil) -> String {

		// send report to some tool
		#if DEBUG

		let date = Date()

		var errMsg = "Error: \(err) at \(date)"

		if let info = extraInfo {

			errMsg = "Error: \(err) \(String(describing: info)) at \(date)"
		}

		NSLog(errMsg)

		return errMsg

		#endif
	}
}
