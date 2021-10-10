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
	static func log(_ type: LogType, error: Error? = nil, msg: String = "") -> String {

		var logMsg = ""

		switch type {

		case .error:

			if let err = error {

				logMsg = "ERROR: \(err)"

			} else {

				logMsg = "ERROR: \(msg)"
			}

			#if DEBUG

			NSLog(logMsg)

			#endif
		case .message:

			logMsg = "MSG: \(msg)"

			print(logMsg)
		}

		return logMsg
	}
}
