//
// RepoStatusChecker.swift
// Checks GitHub repository metadata and uses the persistent cache when fresh.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

enum RepoStatusChecker {
    static let apiBase = "https://api.github.com/repos"
    private static let token = ProcessInfo.processInfo.environment["GITHUB_TOKEN"]
    static var isTokenConfigured: Bool {
        guard let token, !token.isEmpty else { return false }
        return true
    }

    private static var headers: [String: String] {
        var values = [
            "Accept": "application/vnd.github+json",
            "X-GitHub-Api-Version": "2022-11-28",
            "User-Agent": "archive-bot"
        ]
        if let token, !token.isEmpty {
            values["Authorization"] = "Bearer \(token)"
        }
        return values
    }

    static func checkStatusWithCache(for url: String) async -> Models.RepoStatus {
        guard let repository = GitHubRepositoryURL(url) else {
            return Models.RepoStatus(url: url, status: "Invalid GitHub repository URL", exists: false)
        }

        let cacheKey = repository.apiPath.lowercased()
        if let cached = await CacheService.shared.getFresh(for: cacheKey) {
            return Models.RepoStatus(
                url: repository.canonicalURL,
                status: cached.status,
                lastCommitDate: cached.lastCommitDate,
                isArchived: cached.isArchived,
                exists: true
            )
        }

        let result = await fetchStatus(for: repository)
        if result.exists, let lastCommitDate = result.lastCommitDate {
            let entry = CacheEntry(
                url: repository.canonicalURL,
                owner: repository.owner,
                repo: repository.name,
                isArchived: result.isArchived,
                status: result.status,
                lastCommitDate: lastCommitDate,
                lastChecked: Date()
            )
            do {
                try await CacheService.shared.set(for: cacheKey, entry: entry)
            } catch {
                fputs("Warning: unable to persist cache: \(error.localizedDescription)\n", stderr)
            }
        }
        return result
    }

    private static func fetchStatus(for repository: GitHubRepositoryURL) async -> Models.RepoStatus {
        guard let apiURL = URL(string: "\(apiBase)/\(repository.owner)/\(repository.name)") else {
            return Models.RepoStatus(url: repository.canonicalURL, status: "Invalid API URL", exists: false)
        }

        var request = URLRequest(url: apiURL)
        request.timeoutInterval = 20
        headers.forEach { request.setValue($1, forHTTPHeaderField: $0) }

        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                return inconclusive(repository, "non-HTTP response")
            }

            switch httpResponse.statusCode {
            case 200:
                guard let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
                      let isArchived = json["archived"] as? Bool else {
                    return inconclusive(repository, "invalid GitHub API response")
                }
                let lastPushDate = StalenessAnalyzer.extractLastCommitDate(from: json)
                return Models.RepoStatus(
                    url: repository.canonicalURL,
                    status: isArchived ? "Archived" : nil,
                    lastCommitDate: lastPushDate,
                    isArchived: isArchived,
                    exists: true
                )

            case 404:
                // GitHub also returns 404 for some private/inaccessible repositories.
                return Models.RepoStatus(url: repository.canonicalURL, status: "Not Found", exists: false)

            case 403:
                let remaining = httpResponse.value(forHTTPHeaderField: "X-RateLimit-Remaining")
                if remaining == "0" {
                    return inconclusive(repository, "GitHub API rate limit reached")
                }
                return inconclusive(repository, "HTTP 403; access restriction or rate limit")

            case 429:
                return inconclusive(repository, "GitHub API rate limit reached (HTTP 429)")

            default:
                return inconclusive(repository, "GitHub API returned HTTP \(httpResponse.statusCode)")
            }
        } catch {
            return inconclusive(repository, "network error: \(error.localizedDescription)")
        }
    }

    private static func inconclusive(_ repository: GitHubRepositoryURL, _ reason: String) -> Models.RepoStatus {
        Models.RepoStatus(
            url: repository.canonicalURL,
            status: "Check Inconclusive (\(reason))",
            exists: false
        )
    }
}
