//
// JSONFetcher.swift
// Fetches and validates the upstream open-source-ios-apps JSON directory.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

enum JSONFetcher {
    static let jsonURL = URL(string: "https://raw.githubusercontent.com/dkhamsing/open-source-ios-apps/master/contents.json")!

    static func fetch() async throws -> [String: Any] {
        var request = URLRequest(url: jsonURL)
        request.timeoutInterval = 30
        request.setValue("ArchiveBot", forHTTPHeaderField: "User-Agent")

        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse else {
            throw FetchError.invalidResponse
        }
        guard (200..<300).contains(httpResponse.statusCode) else {
            throw FetchError.httpStatus(httpResponse.statusCode)
        }

        let json = try JSONSerialization.jsonObject(with: data)
        guard let dictionary = json as? [String: Any] else {
            throw FetchError.invalidJSONRoot
        }
        return dictionary
    }

    enum FetchError: LocalizedError {
        case invalidResponse
        case httpStatus(Int)
        case invalidJSONRoot

        var errorDescription: String? {
            switch self {
            case .invalidResponse:
                return "The source-list request returned a non-HTTP response."
            case .httpStatus(let status):
                return "The source-list request failed with HTTP \(status)."
            case .invalidJSONRoot:
                return "The source list's JSON root is not an object."
            }
        }
    }
}
