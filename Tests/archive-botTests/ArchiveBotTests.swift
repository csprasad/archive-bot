import Foundation
import XCTest
@testable import archive_bot

final class ArchiveBotTests: XCTestCase {
    private let startMarker = ReadmeUpdater.startMarker
    private let endMarker = ReadmeUpdater.endMarker

    private func readme(lastUpdated: String = "October 1, 2026 at 1:00 AM UTC", body: String? = nil) -> String {
        let report = body ?? """
        ### 🏛️ Archived Repositories

        > No archived repositories found.

        ### ⚠️ Stale Repositories (8+ years without recorded push)

        > No stale repositories found.
        """
        return """
        # Sample README

        Intro that must remain.

        \(startMarker)

        \(report)

        **Last updated:** \(lastUpdated)
        **Last checked:** October 1, 2026 at 1:00 AM UTC

        \(endMarker)

        ## Manually maintained documentation

        This section must remain after every update.
        """
    }

    func testUnchangedReportPreservesLastUpdatedAndAdvancesLastChecked() throws {
        let oldDate = "October 1, 2026 at 1:00 AM UTC"
        let now = ISO8601DateFormatter().date(from: "2026-10-10T02:00:00Z")!
        let output = try ReadmeUpdater.updatedContent(in: readme(lastUpdated: oldDate), results: [], now: now)

        XCTAssertTrue(output.contains("**Last updated:** \(oldDate)"))
        XCTAssertTrue(output.contains("**Last checked:** October 10, 2026 at 2:00 AM UTC"))
        XCTAssertTrue(output.contains("This section must remain after every update."))
    }

    func testChangedReportUpdatesLastUpdatedAndKeepsManualSections() throws {
        let now = ISO8601DateFormatter().date(from: "2026-10-10T02:00:00Z")!
        let result = Models.RepoStatus(
            url: "https://github.com/example/archived",
            status: "Archived",
            isArchived: true,
            exists: true
        )
        let output = try ReadmeUpdater.updatedContent(in: readme(), results: [result], now: now)

        XCTAssertTrue(output.contains("**Last updated:** October 10, 2026 at 2:00 AM UTC"))
        XCTAssertTrue(output.contains("https://github.com/example/archived"))
        XCTAssertTrue(output.contains("This section must remain after every update."))
    }

    func testMissingMarkersThrowsInsteadOfSilentlySkipping() {
        XCTAssertThrowsError(try ReadmeUpdater.updatedContent(in: "# README without markers", results: [], now: Date()))
    }

    func testUnavailableAndInconclusiveResultsAreReportedAlongsideArchives() throws {
        let now = Date()
        let results = [
            Models.RepoStatus(url: "https://github.com/example/archived", status: "Archived", isArchived: true),
            Models.RepoStatus(url: "https://github.com/example/missing", status: "Not Found", exists: false),
            Models.RepoStatus(url: "https://github.com/example/limited", status: "Check Inconclusive (GitHub API rate limit reached)", exists: false)
        ]
        let output = try ReadmeUpdater.updatedContent(in: readme(), results: results, now: now)

        XCTAssertTrue(output.contains("Unavailable Repositories"))
        XCTAssertTrue(output.contains("https://github.com/example/missing"))
        XCTAssertTrue(output.contains("Checks Requiring Review"))
        XCTAssertTrue(output.contains("https://github.com/example/limited"))
    }

    func testExtractorNormalizesAndDeduplicatesGitHubURLsAndSkipsArchivedTags() {
        let input: [String: Any] = [
            "Apps": [
                ["source": "https://github.com/example/App/", "tags": [String]()],
                ["source": "https://github.com/example/App.git", "tags": [String]()],
                ["source": "https://github.com/example/Old", "tags": ["archive"]],
                ["source": "https://github.com.evil.test/example/Repo", "tags": [String]()],
                ["source": "https://github.com/example/Repo/issues", "tags": [String]()]
            ]
        ]

        XCTAssertEqual(RepoExtractor.extract(from: input), ["https://github.com/example/App"])
    }

    func testCurrentReadmeMarkersPreserveProjectDocumentationAndTimestampWhenDataMatches() throws {
        let readmeURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath).appendingPathComponent("README.md")
        let content = try String(contentsOf: readmeURL, encoding: .utf8)
        let now = ISO8601DateFormatter().date(from: "2026-10-27T02:00:00Z")!
        let result = Models.RepoStatus(
            url: "https://github.com/marty-suzuki/iOSDesignPatternSamples",
            status: "Archived",
            isArchived: true,
            exists: true
        )

        let output = try ReadmeUpdater.updatedContent(in: content, results: [result], now: now)
        XCTAssertTrue(output.contains("## Understanding the Results"))
        XCTAssertTrue(output.contains("## About This Project"))
        XCTAssertTrue(output.contains("[MIT License](LICENSE)"))
        XCTAssertTrue(output.contains("**Last updated:** October 11, 2026 at 2:45 AM UTC"))
        XCTAssertTrue(output.contains("**Last checked:** October 27, 2026 at 2:00 AM UTC"))
    }

    func testStalenessRequiresPushedAtRatherThanUpdatedAtFallback() {
        XCTAssertNil(StalenessAnalyzer.extractLastCommitDate(from: ["updated_at": "2010-01-01T00:00:00Z"]))
        XCTAssertNotNil(StalenessAnalyzer.extractLastCommitDate(from: ["pushed_at": "2010-01-01T00:00:00Z"]))
    }

    func testCachePersistsEntriesAndHonorsSevenDayTTL() async throws {
        let directory = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString, isDirectory: true)
        try FileManager.default.createDirectory(at: directory, withIntermediateDirectories: true)
        defer { try? FileManager.default.removeItem(at: directory) }
        let cache = CacheService(cacheURL: directory.appendingPathComponent(".cache.json"))
        let checked = ISO8601DateFormatter().date(from: "2026-10-01T00:00:00Z")!
        let entry = CacheEntry(
            url: "https://github.com/example/repo",
            owner: "example",
            repo: "repo",
            isArchived: false,
            status: nil,
            lastCommitDate: checked,
            lastChecked: checked
        )

        try await cache.set(for: "example/repo", entry: entry)
        // A second actor instance forces a disk read instead of using the first actor's memory.
        let reloadedCache = CacheService(cacheURL: directory.appendingPathComponent(".cache.json"))
        let loaded = await reloadedCache.getFresh(for: "example/repo", now: checked.addingTimeInterval(6 * 24 * 60 * 60))
        XCTAssertEqual(loaded?.repo, "repo")
        XCTAssertEqual(loaded?.lastCommitDate, checked)

        let expired = await reloadedCache.getFresh(for: "example/repo", now: checked.addingTimeInterval(8 * 24 * 60 * 60))
        XCTAssertNil(expired)
    }
}
