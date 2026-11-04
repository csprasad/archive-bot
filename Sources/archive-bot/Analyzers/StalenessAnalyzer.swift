//
// StalenessAnalyzer.swift
// Reads the repository's last push timestamp from the GitHub API response.
//

import Foundation

enum StalenessAnalyzer {
    /// GitHub's `pushed_at` is the last push timestamp, not necessarily the last commit timestamp.
    static func extractLastCommitDate(from json: [String: Any]) -> Date? {
        guard let pushedAt = json["pushed_at"] as? String else { return nil }
        return parseGitHubDate(pushedAt)
    }

    private static func parseGitHubDate(_ dateString: String) -> Date? {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        if let date = formatter.date(from: dateString) { return date }
        formatter.formatOptions = [.withInternetDateTime]
        return formatter.date(from: dateString)
    }

    static func stalenessDescription(years: Int?) -> String {
        guard let years else { return "Unknown" }
        switch years {
        case 0..<1: return "Active (<1 year)"
        case 1..<2: return "Lightly maintained (1-2 years)"
        case 2..<5: return "Dormant (2-5 years)"
        case 5..<8: return "Very dormant (5-8 years)"
        default: return "STALE (8+ years)"
        }
    }
}
