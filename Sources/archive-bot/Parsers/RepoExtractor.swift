//
//  RepoExtractor.swift
//  archive_bot
//
//  Parses the fetched JSON content.
//  Extracts GitHub URLs from the "source" field, skipping entries already tagged as archived.
//


import Foundation

enum RepoExtractor {
    static func extract(from data: [String: Any]) -> [String] {
        var repoLinks = Set<String>()

        for (_, apps) in data {
            guard let appsArray = apps as? [[String: Any]] else { continue }

            for app in appsArray {
                if let tags = app["tags"] as? [String], tags.contains("archive") {
                    continue
                }

                if let source = app["source"] as? String,
                   source.starts(with: "https://github.com"),
                   isValidGitHubRepoURL(source) {
                    repoLinks.insert(source)
                }
            }
        }

        return repoLinks.sorted()
    }

    private static func isValidGitHubRepoURL(_ url: String) -> Bool {
        let regex = #"^https:\/\/github\.com\/[^\/]+\/[^\/]+\/?$"#
        return url.range(of: regex, options: .regularExpression) != nil
    }
}
