//
//  DateHelpers.swift
//  archive_bot
//
//  Helper functions for date manipulation.
//

import Foundation

enum DateHelpers {
    
    /// Calculate years between two dates
    static func yearsBetween(_ from: Date, to: Date) -> Int {
        let calendar = Calendar.current
        return calendar.dateComponents([.year], from: from, to: to).year ?? 0
    }
    
    /// Format date for display in README
    static func formatForDisplay(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }
    
    /// Check if a date is older than given years
    static func isOlderThan(years: Int, date: Date) -> Bool {
        return yearsBetween(date, to: Date()) >= years
    }
    
    /// Get current date as ISO string for API conditional requests
    static func isoString(from date: Date = Date()) -> String {
        let formatter = ISO8601DateFormatter()
        return formatter.string(from: date)
    }
}