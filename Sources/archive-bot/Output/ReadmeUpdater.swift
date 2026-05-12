//
//  ReadmeUpdater.swift
//  archive_bot
//
//  Updates the README.md file:
//  - Replaces the section after the marker with a new archive status table.
//  - Adds stale repositories table (8+ years without commit)
//  - Includes 'Last updated' and 'Last checked' timestamps.
//

import Foundation

enum ReadmeUpdater {
    static let readmePath = "README.md"
    static let marker = "## Repository Archive Status"

    static func update(with results: [Models.RepoStatus]) throws {
        let content = try String(contentsOfFile: readmePath, encoding: .utf8)

        guard let markerRange = content.range(of: marker) else {
            print("Marker not found in README.")
            return
        }

        let now = formattedDate()
        
        // Separate results by category
        let archivedResults = results.filter { $0.status == "Archived" }
        let staleResults = results.filter { $0.isStale && $0.status == nil && $0.exists }
        let notFoundResults = results.filter { $0.status == "Not Found" }
        
        let lastUpdated: String = (archivedResults.isEmpty && staleResults.isEmpty)
            ? extractPreviousUpdatedDate(from: content) ?? now
            : now

        var sectionLines: [String] = []
        
        // Archived repos table
        if archivedResults.isEmpty {
            sectionLines.append("")
            sectionLines.append("### 🏛️ Archived Repositories")
            sectionLines.append("")
            sectionLines.append("> No archives found in this project.")
        } else {
            sectionLines.append("")
            sectionLines.append("### 🏛️ Archived Repositories")
            sectionLines.append("")
            sectionLines.append("| # | Repository URL | Status |")
            sectionLines.append("|---|----------------|--------|")
            for (index, result) in archivedResults.enumerated() {
                let status = result.status!.trimmingCharacters(in: .whitespacesAndNewlines)
                sectionLines.append("| \(index + 1) | \(result.url) | \(status) |")
            }
        }
        
        // Stale repos table (8+ years without commit)
        if !staleResults.isEmpty {
            sectionLines.append("")
            sectionLines.append("### ⚠️ Stale Repositories (8+ years without commit)")
            sectionLines.append("")
            sectionLines.append("| # | Repository URL | Last Commit Date | Years Inactive |")
            sectionLines.append("|---|----------------|------------------|----------------|")
            for (index, result) in staleResults.enumerated() {
                let dateString = result.lastCommitDate.map { DateHelpers.formatForDisplay($0) } ?? "Unknown"
                let years = result.yearsSinceLastCommit.map { "\($0) years" } ?? "Unknown"
                sectionLines.append("| \(index + 1) | \(result.url) | \(dateString) | \(years) |")
            }
        } else {
            sectionLines.append("")
            sectionLines.append("### ⚠️ Stale Repositories (8+ years without commit)")
            sectionLines.append("")
            sectionLines.append("> No stale repositories found. All active projects have recent commits within the last 8 years.")
        }
        
        // Not found repos (optional - keeping your existing behavior)
        if !notFoundResults.isEmpty && archivedResults.isEmpty && staleResults.isEmpty {
            sectionLines.append("")
            sectionLines.append("### ‼️ Unavailable Repositories")
            sectionLines.append("")
            sectionLines.append("| # | Repository URL | Status |")
            sectionLines.append("|---|----------------|--------|")
            for (index, result) in notFoundResults.enumerated() {
                sectionLines.append("| \(index + 1) | \(result.url) | \(result.status ?? "Not Found") |")
            }
        }

        sectionLines.append("")
        sectionLines.append("*Last updated: \(lastUpdated)*  ")
        sectionLines.append("*Last checked: \(now)*")

        let newSection = "\(marker)\n\n" + sectionLines.joined(separator: "\n")
        let updatedContent = content[..<markerRange.lowerBound] + newSection

        try updatedContent.write(toFile: readmePath, atomically: true, encoding: .utf8)
    }

    private static func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(identifier: "UTC")
        formatter.dateFormat = "MMMM d, yyyy 'at' h:mm a 'UTC'"
        return formatter.string(from: Date())
    }

    private static func extractPreviousUpdatedDate(from content: String) -> String? {
        let pattern = #"\*Last updated: (.*?)\*"#
        guard let match = content.range(of: pattern, options: .regularExpression) else {
            return nil
        }

        let line = String(content[match])
        return line
            .replacingOccurrences(of: "*Last updated: ", with: "")
            .replacingOccurrences(of: "*", with: "")
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }
}