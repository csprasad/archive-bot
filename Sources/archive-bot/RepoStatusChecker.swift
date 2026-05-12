//
//  RepoStatusChecker.swift
//  archive_bot
//
//  Calls GitHub API to determine if a given repository is archived.
//  Returns status as: Archived, Not Found, Forbidden, or nil (active).
//


import Foundation

// Add this line after Foundation import
@_exported import struct Foundation.Date

enum RepoStatusChecker {
    static let apiBase = "https://api.github.com/repos"
    static let token = ProcessInfo.processInfo.environment["GITHUB_TOKEN"]
    static let headers: [String: String] = {
        var dict = ["Accept": "application/vnd.github.v3+json"]
        if let token { dict["Authorization"] = "token \(token)" }
        return dict
    }()

    static func checkStatus(for url: String) async -> Models.RepoStatus {
        guard let (owner, repo) = parseGitHubURL(url) else {
            return Models.RepoStatus(url: url, status: "Invalid URL")
        }

        let apiURLString = "\(apiBase)/\(owner)/\(repo)"
        guard let apiURL = URL(string: apiURLString) else {
            return Models.RepoStatus(url: url, status: "Malformed API URL")
        }

        var request = URLRequest(url: apiURL)
        headers.forEach { key, value in request.setValue(value, forHTTPHeaderField: key) }

        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                return Models.RepoStatus(url: url, status: "Invalid response")
            }

            switch httpResponse.statusCode {
            case 200:
                if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
                   let isArchived = json["archived"] as? Bool {
                    return Models.RepoStatus(url: url, status: isArchived ? "Archived" : nil)
                }
                return Models.RepoStatus(url: url, status: "Parse Error")

            case 404:
                return Models.RepoStatus(url: url, status: "Not Found")
            case 403:
                return Models.RepoStatus(url: url, status: "Forbidden (rate limit?)")
            default:
                return Models.RepoStatus(url: url, status: "Error \(httpResponse.statusCode)")
            }
        } catch {
            return Models.RepoStatus(url: url, status: "Exception: \(error.localizedDescription)")
        }
    }

    private static func parseGitHubURL(_ url: String) -> (String, String)? {
        let regex = try! NSRegularExpression(pattern: #"https:\/\/github\.com\/([^\/]+)\/([^\/]+)"#)
        let range = NSRange(url.startIndex..., in: url)
        if let match = regex.firstMatch(in: url, range: range),
           let ownerRange = Range(match.range(at: 1), in: url),
           let repoRange = Range(match.range(at: 2), in: url) {
            return (String(url[ownerRange]), String(url[repoRange]))
        }
        return nil
    }


        // NEW METHOD: Check status with cache support
    static func checkStatusWithCache(for url: String) async -> Models.RepoStatus {
        // Parse URL to get owner/repo for cache key
        guard let (owner, repo) = parseGitHubURL(url) else {
            return Models.RepoStatus(url: url, status: "Invalid URL")
        }
        
        let cacheKey = "\(owner)/\(repo)"
        
        // Check cache
        if let cached = CacheService.get(for: cacheKey), !CacheService.shouldRefetch(cached) {
            print("📦 Cache hit: \(cacheKey) (last checked: \(cached.lastChecked))")
            return Models.RepoStatus(
                url: url,
                status: cached.status,
                lastCommitDate: cached.lastCommitDate,
                isArchived: cached.isArchived,
                exists: true
            )
        }
        
        print("🌐 Cache miss or expired: \(cacheKey) - fetching from API")
        
        // Fetch from API
        let result = await checkStatusWithCommitDate(for: url)
        
        // Cache the result if successful
        if let lastCommitDate = result.lastCommitDate {
            let entry = CacheEntry(
                url: url,
                owner: owner,
                repo: repo,
                isArchived: result.isArchived,
                status: result.status,
                lastCommitDate: lastCommitDate,
                lastChecked: Date()
            )
            CacheService.set(for: cacheKey, entry: entry)
        }
        
        return result
    }
    
    // NEW METHOD: Check status including last commit date
    static func checkStatusWithCommitDate(for url: String) async -> Models.RepoStatus {
        guard let (owner, repo) = parseGitHubURL(url) else {
            return Models.RepoStatus(url: url, status: "Invalid URL")
        }

        let apiURLString = "\(apiBase)/\(owner)/\(repo)"
        guard let apiURL = URL(string: apiURLString) else {
            return Models.RepoStatus(url: url, status: "Malformed API URL")
        }

        var request = URLRequest(url: apiURL)
        headers.forEach { key, value in request.setValue(value, forHTTPHeaderField: key) }

        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let httpResponse = response as? HTTPURLResponse else {
                return Models.RepoStatus(url: url, status: "Invalid response")
            }

            switch httpResponse.statusCode {
            case 200:
                if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any] {
                    let isArchived = json["archived"] as? Bool ?? false
                    let lastCommitDate = StalenessAnalyzer.extractLastCommitDate(from: json)
                    
                    let status: String? = isArchived ? "Archived" : nil
                    
                    return Models.RepoStatus(
                        url: url,
                        status: status,
                        lastCommitDate: lastCommitDate,
                        isArchived: isArchived,
                        exists: true
                    )
                }
                return Models.RepoStatus(url: url, status: "Parse Error")

            case 404:
                return Models.RepoStatus(url: url, status: "Not Found", exists: false)
            case 403:
                return Models.RepoStatus(url: url, status: "Forbidden (rate limit?)", exists: false)
            default:
                return Models.RepoStatus(url: url, status: "Error \(httpResponse.statusCode)", exists: false)
            }
        } catch {
            return Models.RepoStatus(url: url, status: "Exception: \(error.localizedDescription)", exists: false)
        }
    }
}
