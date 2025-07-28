import Foundation

enum ReadmeUpdater {
    static let readmePath = "README.md"
    static let marker = "## Repository Archive Status"

    static func update(with results: [Models.RepoStatus]) throws {
        let content = try String(contentsOfFile: readmePath, encoding: .utf8)

        guard let markerRange = content.range(of: marker) else {
            print("Marker not found in README."); fflush(stdout)
            return
        }

        // Build table content
        var tableLines = [
            "| Repository URL | Status |",
            "|----------------|--------|"
        ]

        let filteredResults = results.filter { $0.status != nil }

        for result in filteredResults {
            tableLines.append("| \(result.url) | \(result.status!) |")
        }

        // Timestamps
        let now = formattedDate()
        let lastUpdated: String
        if filteredResults.isEmpty {
            lastUpdated = extractPreviousUpdatedDate(from: content) ?? now
        } else {
            lastUpdated = now
        }

        tableLines.append("") // blank line before timestamps
        tableLines.append("*Last updated: \(lastUpdated)*")
        tableLines.append("*Last checked: \(now)*")

        // Inject new section
        let newSection = "\(marker)\n\n" + tableLines.joined(separator: "\n")
        let updatedContent = content[..<markerRange.lowerBound] + newSection

        try updatedContent.write(toFile: readmePath, atomically: true, encoding: .utf8)
        print("README.md updated."); fflush(stdout)
    }

    private static func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss 'UTC'"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        return formatter.string(from: Date())
    }

    private static func extractPreviousUpdatedDate(from content: String) -> String? {
        let pattern = #"\*Last updated: (.*?)\*"#
        if let match = content.range(of: pattern, options: .regularExpression) {
            let line = String(content[match])
            return line
                .replacingOccurrences(of: "*Last updated: ", with: "")
                .replacingOccurrences(of: "*", with: "")
                .trimmingCharacters(in: .whitespacesAndNewlines)
        }
        return nil
    }
}
