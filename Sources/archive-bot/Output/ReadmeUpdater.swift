//
// ReadmeUpdater.swift
// Replaces only the explicitly marked generated report in README.md.
//

import Foundation

enum ReadmeUpdater {
    static let readmePath = "README.md"
    static let startMarker = "<!-- ARCHIVE-BOT:REPORT:START -->"
    static let endMarker = "<!-- ARCHIVE-BOT:REPORT:END -->"

    enum UpdateError: LocalizedError {
        case missingOrInvalidMarkers

        var errorDescription: String? {
            "README report markers are missing, duplicated, or out of order. Add exactly one start marker and one end marker around the generated report."
        }
    }

    static func update(with results: [Models.RepoStatus], now: Date = Date()) throws {
        let content = try String(contentsOfFile: readmePath, encoding: .utf8)
        let updatedContent = try updatedContent(in: content, results: results, now: now)
        guard updatedContent != content else {
            print("README report data is unchanged; only the check timestamp was evaluated.")
            return
        }
        try updatedContent.write(toFile: readmePath, atomically: true, encoding: .utf8)
    }

    static func updatedContent(
        in content: String,
        results: [Models.RepoStatus],
        now: Date
    ) throws -> String {
        guard let bounds = reportBounds(in: content) else {
            throw UpdateError.missingOrInvalidMarkers
        }

        let previousReport = String(content[bounds.contentRange])
        let previousData = normalizedReportData(previousReport)
        let newData = renderReportData(results, now: now)
        let previousLastUpdated = extractPreviousUpdatedDate(from: previousReport)

        let lastUpdated: String
        if previousData == normalizedReportData(newData), let previousLastUpdated {
            lastUpdated = previousLastUpdated
        } else {
            lastUpdated = formattedDate(now)
        }

        let generatedReport = "\n\n\(newData)\n\n**Last updated:** \(lastUpdated)\n**Last checked:** \(formattedDate(now))\n"
        return String(content[..<bounds.startUpperBound])
            + generatedReport
            + String(content[bounds.endLowerBound...])
    }

    private struct ReportBounds {
        let startUpperBound: String.Index
        let contentRange: Range<String.Index>
        let endLowerBound: String.Index
    }

    private static func reportBounds(in content: String) -> ReportBounds? {
        guard let start = content.range(of: startMarker),
              let end = content.range(of: endMarker, range: start.upperBound..<content.endIndex),
              content.range(of: startMarker, range: start.upperBound..<content.endIndex) == nil,
              content.range(of: endMarker, range: end.upperBound..<content.endIndex) == nil,
              start.upperBound <= end.lowerBound else {
            return nil
        }
        return ReportBounds(
            startUpperBound: start.upperBound,
            contentRange: start.upperBound..<end.lowerBound,
            endLowerBound: end.lowerBound
        )
    }

    private static func renderReportData(_ results: [Models.RepoStatus], now: Date) -> String {
        let sortedResults = results.sorted { $0.url.localizedStandardCompare($1.url) == .orderedAscending }
        let archived = sortedResults.filter { $0.status == "Archived" || $0.isArchived }
        let stale = sortedResults.filter { $0.isStale(asOf: now) && $0.status == nil && $0.exists && !$0.isArchived }
        let notFound = sortedResults.filter { $0.status == "Not Found" }
        let inconclusive = sortedResults.filter {
            guard let status = $0.status else { return false }
            return status != "Archived" && status != "Not Found" && status != ""
        }

        var lines: [String] = []
        lines += ["### 🏛️ Archived Repositories", ""]
        if archived.isEmpty {
            lines.append("> No archived repositories found.")
        } else {
            lines += ["| # | Repository | Status |", "|---:|---|---|"]
            for (index, result) in archived.enumerated() {
                lines.append("| \(index + 1) | \(result.url) | Archived |")
            }
        }

        lines += ["", "### ⚠️ Stale Repositories (8+ years without recorded push)", ""]
        if stale.isEmpty {
            lines.append("> No stale repositories found.")
        } else {
            lines += ["| # | Repository | Last Push Date | Years Inactive |", "|---:|---|---|---:|"]
            for (index, result) in stale.enumerated() {
                let date = result.lastCommitDate.map(DateHelpers.formatForDisplay) ?? "Unknown"
                let years = result.yearsSinceLastCommit(asOf: now).map(String.init) ?? "Unknown"
                lines.append("| \(index + 1) | \(result.url) | \(date) | \(years) |")
            }
        }

        if !notFound.isEmpty {
            lines += ["", "### ‼️ Unavailable Repositories (HTTP 404)", ""]
            lines += ["| # | Repository | Result |", "|---:|---|---|"]
            for (index, result) in notFound.enumerated() {
                lines.append("| \(index + 1) | \(result.url) | Not Found / inaccessible |")
            }
        }

        if !inconclusive.isEmpty {
            lines += ["", "### ❔ Checks Requiring Review", ""]
            lines += ["These checks did not establish the repository's status; they are not classified as deleted or inactive.", "", "| # | Repository | Check result |", "|---:|---|---|"]
            for (index, result) in inconclusive.enumerated() {
                let reason = (result.status ?? "Unknown error")
                    .replacingOccurrences(of: "|", with: "\\|")
                    .replacingOccurrences(of: "\n", with: " ")
                lines.append("| \(index + 1) | \(result.url) | \(reason) |")
            }
        }

        return lines.joined(separator: "\n")
    }

    private static func normalizedReportData(_ report: String) -> String {
        report
            .components(separatedBy: .newlines)
            .filter { line in
                let trimmed = line.trimmingCharacters(in: .whitespacesAndNewlines)
                return !trimmed.hasPrefix("**Last updated:**")
                    && !trimmed.hasPrefix("**Last checked:**")
                    && !trimmed.hasPrefix("*Last updated:")
                    && !trimmed.hasPrefix("*Last checked:")
            }
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .joined(separator: "\n")
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }

    private static func extractPreviousUpdatedDate(from report: String) -> String? {
        let patterns = [
            #"\*\*Last updated:\*\*\s*(.+)"#,
            #"\*Last updated:\s*(.+?)\*"#
        ]
        for pattern in patterns {
            guard let range = report.range(of: pattern, options: .regularExpression) else { continue }
            let line = String(report[range])
            let value = line
                .replacingOccurrences(of: "**Last updated:**", with: "")
                .replacingOccurrences(of: "*Last updated:", with: "")
                .replacingOccurrences(of: "*", with: "")
                .trimmingCharacters(in: .whitespacesAndNewlines)
            if !value.isEmpty { return value }
        }
        return nil
    }

    private static func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "MMMM d, yyyy 'at' h:mm a 'UTC'"
        return formatter.string(from: date)
    }
}
