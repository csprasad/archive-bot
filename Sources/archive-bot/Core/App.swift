//
// App.swift
// Orchestrates the archive-bot run. Fatal failures propagate to the process exit status.
//

import Foundation

@main
struct ArchiveDetective {
    private static let maxConcurrentRequests = 10

    enum RunError: LocalizedError {
        case noRepositoriesExtracted
        case noConfirmedChecks

        var errorDescription: String? {
            switch self {
            case .noRepositoriesExtracted:
                return "No GitHub repositories were extracted from the source list; refusing to overwrite the report."
            case .noConfirmedChecks:
                return "Every repository check was inconclusive; refusing to publish a potentially misleading report."
            }
        }
    }

    static func main() async throws {
        if CommandLine.arguments.contains("--skip-cache") {
            try await CacheService.shared.clearCache()
        }

        let jsonData = try await JSONFetcher.fetch()
        let repoLinks = RepoExtractor.extract(from: jsonData)
        guard !repoLinks.isEmpty else {
            throw RunError.noRepositoriesExtracted
        }
        print("\(repoLinks.count) repositories to check.")

        var results: [Models.RepoStatus] = []
        results.reserveCapacity(repoLinks.count)

        // Bound concurrency to avoid spawning a task for every repository at once.
        for start in stride(from: 0, to: repoLinks.count, by: maxConcurrentRequests) {
            let end = min(start + maxConcurrentRequests, repoLinks.count)
            let batch = Array(repoLinks[start..<end])
            let batchResults = await withTaskGroup(of: Models.RepoStatus.self) { group in
                for url in batch {
                    group.addTask {
                        await RepoStatusChecker.checkStatusWithCache(for: url)
                    }
                }
                var collected: [Models.RepoStatus] = []
                collected.reserveCapacity(batch.count)
                for await result in group {
                    collected.append(result)
                }
                return collected
            }
            results.append(contentsOf: batchResults)
        }

        // Do not publish an all-error report if the API is unavailable or rate-limited.
        // Print a useful breakdown first: this is essential when running locally,
        // where GITHUB_TOKEN may not be configured, or when GitHub throttles requests.
        let confirmedChecks = results.filter { $0.exists || $0.status == "Not Found" }.count
        let statusCounts = Dictionary(grouping: results) { result in
            result.status ?? (result.exists ? "OK (not archived)" : "Unknown / invalid URL")
        }.mapValues(\.count)
        print("\nRepository check diagnostics:")
        print("  Confirmed checks: \(confirmedChecks)/\(results.count)")
        print("  GitHub token configured: \(RepoStatusChecker.isTokenConfigured ? "yes" : "no (using unauthenticated API quota)")")
        for (status, count) in statusCounts.sorted(by: { $0.key < $1.key }) {
            print("  \(count)x \(status)")
        }

        guard confirmedChecks > 0 else {
            throw RunError.noConfirmedChecks
        }

        // Deterministic ordering keeps unchanged reports unchanged between runs.
        results.sort { $0.url.localizedStandardCompare($1.url) == .orderedAscending }
        try ReadmeUpdater.update(with: results)

        let archived = results.filter { $0.status == "Archived" }.count
        let notFound = results.filter { $0.status == "Not Found" }.count
        let inconclusive = results.filter { $0.status?.hasPrefix("Check Inconclusive") == true }.count
        let stale = results.filter { $0.isStale && $0.status == nil && $0.exists }.count
        print("Archived: \(archived), Not found: \(notFound), Inconclusive: \(inconclusive), Stale: \(stale)")
    }
}
