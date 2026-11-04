//
// RepoExtractor.swift
// Extracts unique, canonical GitHub repository URLs from the source list.
//

import Foundation

struct GitHubRepositoryURL {
    let owner: String
    let name: String

    init?(_ rawValue: String) {
        guard let components = URLComponents(string: rawValue),
              components.scheme?.lowercased() == "https",
              components.host?.lowercased() == "github.com",
              components.query == nil,
              components.fragment == nil else {
            return nil
        }

        let pathParts = components.path.split(separator: "/").map(String.init)
        guard pathParts.count == 2 else { return nil }

        let owner = pathParts[0]
        var name = pathParts[1]
        if name.lowercased().hasSuffix(".git") {
            name.removeLast(4)
        }
        guard !owner.isEmpty, !name.isEmpty,
              owner.range(of: #"^[A-Za-z0-9-]+$"#, options: .regularExpression) != nil,
              name.range(of: #"^[A-Za-z0-9_.-]+$"#, options: .regularExpression) != nil else {
            return nil
        }

        self.owner = owner
        self.name = name
    }

    var canonicalURL: String { "https://github.com/\(owner)/\(name)" }
    var apiPath: String { "\(owner)/\(name)" }
}

enum RepoExtractor {
    static func extract(from data: [String: Any]) -> [String] {
        var repoLinks = Set<String>()

        for value in data.values {
            guard let apps = value as? [[String: Any]] else { continue }
            for app in apps {
                if let tags = app["tags"] as? [String], tags.contains("archive") {
                    continue
                }
                guard let source = app["source"] as? String,
                      let repository = GitHubRepositoryURL(source) else {
                    continue
                }
                repoLinks.insert(repository.canonicalURL)
            }
        }

        return repoLinks.sorted()
    }
}
