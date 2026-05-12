//
//  StalenessAnalyzer.swift
//  archive_bot
//
//  Analyzes repository staleness based on last commit date.
//

import Foundation

enum StalenessAnalyzer {
    
    /// Extracts last commit date from GitHub API JSON response
    static func extractLastCommitDate(from json: [String: Any]) -> Date? {
        // Try pushed_at first (most accurate for activity)
        if let pushedAt = json["pushed_at"] as? String {
            return parseGitHubDate(pushedAt)
        }
        
        // Fallback to updated_at
        if let updatedAt = json["updated_at"] as? String {
            return parseGitHubDate(updatedAt)
        }
        
        return nil
    }
    
    /// Parses GitHub's ISO 8601 date format
    private static func parseGitHubDate(_ dateString: String) -> Date? {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withInternetDateTime, .withFractionalSeconds]
        
        if let date = formatter.date(from: dateString) {
            return date
        }
        
        // Try without fractional seconds
        formatter.formatOptions = [.withInternetDateTime]
        return formatter.date(from: dateString)
    }
    
    /// Returns a readable staleness description
    static func stalenessDescription(years: Int?) -> String {
        guard let years = years else { return "Unknown" }
        
        switch years {
        case 0..<1:
            return "Active (<1 year)"
        case 1..<2:
            return "Lightly maintained (1-2 years)"
        case 2..<5:
            return "Dormant (2-5 years)"
        case 5..<8:
            return "Very dormant (5-8 years)"
        default:
            return "STALE (8+ years)"
        }
    }
}