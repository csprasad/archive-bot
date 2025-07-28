import Foundation

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
}
