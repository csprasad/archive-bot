//
//  ReadmeUpdater.swift
//  archive_bot
//
//  Updates the README.md file:
//  - Replaces the section after the marker with a new archive status table.
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

        var tableLines = [
            "| # | Repository URL | Status |",
            "|---|----------------|--------|"
        ]

        let filteredResults = results.enumerated().filter { $0.element.status != nil }

        for (index, result) in filteredResults {
            let status = result.status!.trimmingCharacters(in: .whitespacesAndNewlines)
            tableLines.append("| \(index + 1) | \(result.url) | \(status) |")
        }

        let now = formattedDate()
        let lastUpdated: String = filteredResults.isEmpty
            ? extractPreviousUpdatedDate(from: content) ?? now : now

        tableLines.append("") // blank line before timestamps
        tableLines.append("*Last updated: \(lastUpdated)*  ")
        tableLines.append("*Last checked: \(now)*")

        let newSection = "\(marker)\n\n" + tableLines.joined(separator: "\n")
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
