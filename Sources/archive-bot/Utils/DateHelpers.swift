//
// DateHelpers.swift
// Deterministic date calculations and UTC report formatting.
//

import Foundation

enum DateHelpers {
    private static var utcCalendar: Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        return calendar
    }

    static func yearsBetween(_ from: Date, to: Date) -> Int {
        utcCalendar.dateComponents([.year], from: from, to: to).year ?? 0
    }

    static func formatForDisplay(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter.string(from: date)
    }

    static func isOlderThan(years: Int, date: Date, now: Date = Date()) -> Bool {
        yearsBetween(date, to: now) >= years
    }

    static func isoString(from date: Date = Date()) -> String {
        ISO8601DateFormatter().string(from: date)
    }
}
