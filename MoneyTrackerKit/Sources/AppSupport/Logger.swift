//
//  Logger.swift
//  MoneyTrackerKit
//
//  Created by evan on 19/11/26.
//

import Foundation
import OSLog

public enum LogCategory: String, Sendable {
    case app
    case data
    case ui
    case recurring
}

public enum Log {
    private static let subsystem =
        Bundle.main.bundleIdentifier ?? "com.evanProject.MoneyTracker"

    public static func logger(_ category: LogCategory) -> Logger {
        Logger(subsystem: subsystem, category: category.rawValue)
    }
}
