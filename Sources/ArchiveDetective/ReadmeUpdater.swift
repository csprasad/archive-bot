import Foundation

enum ReadmeUpdater {
    static let readmePath = "README.md"
    static let marker = "## Repository Archive Status"

    static func update(with results: [RepoStatus]) throws {
        let content = try String(contentsOfFile: readmePath, encoding: .utf8)

        guard let markerRange = content.range(of: marker) else {
            print("Marker not found in README.")
            return
        }

        var tableLines = [
            "| Repository URL | Status |",
            "|----------------|--------|"
        ]

        for result in results where result.status != nil {
            tableLines.append("| \(result.url) | \(result.status!) |")
        }

        let timestamp = "*Last updated: \(formattedDate())*"
        tableLines.append("")
        tableLines.append(timestamp)

        let newSection = "\(marker)\n\n" + tableLines.joined(separator: "\n")
        let updatedContent = content[..<markerRange.lowerBound] + newSection

        try updatedContent.write(toFile: readmePath, atomically: true, encoding: .utf8)
        print("README.md updated.")
    }

    private static func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss 'UTC'"
        formatter.timeZone = TimeZone(abbreviation: "UTC")
        return formatter.string(from: Date())
    }
}
