//
// CacheService.swift
// Persists repository results between GitHub Actions runs in .cache.json.
//

import Foundation

struct CacheEntry: Codable {
    let url: String
    let owner: String
    let repo: String
    let isArchived: Bool
    let status: String?
    let lastCommitDate: Date?
    let lastChecked: Date

    init(
        url: String,
        owner: String,
        repo: String,
        isArchived: Bool,
        status: String?,
        lastCommitDate: Date?,
        lastChecked: Date
    ) {
        self.url = url
        self.owner = owner
        self.repo = repo
        self.isArchived = isArchived
        self.status = status
        self.lastCommitDate = lastCommitDate
        self.lastChecked = lastChecked
    }
}

actor CacheService {
    static let shared = CacheService()

    private let cacheURL: URL
    private let cacheTTL: TimeInterval = 7 * 24 * 60 * 60
    private var entries: [String: CacheEntry]?

    init(cacheURL: URL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        .appendingPathComponent(".cache.json")) {
        self.cacheURL = cacheURL
    }

    func getFresh(for key: String, now: Date = Date()) -> CacheEntry? {
        guard let entry = loadEntries()[key] else { return nil }
        let age = now.timeIntervalSince(entry.lastChecked)
        guard age >= 0, age < cacheTTL else { return nil }
        return entry
    }

    func set(for key: String, entry: CacheEntry) throws {
        var current = loadEntries()
        current[key] = entry
        try saveEntries(current)
    }

    func clearCache() throws {
        entries = [:]
        if FileManager.default.fileExists(atPath: cacheURL.path) {
            try FileManager.default.removeItem(at: cacheURL)
        }
        print("Cache cleared")
    }

    private func loadEntries() -> [String: CacheEntry] {
        if let entries { return entries }
        guard FileManager.default.fileExists(atPath: cacheURL.path) else {
            entries = [:]
            return [:]
        }

        do {
            let data = try Data(contentsOf: cacheURL)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let decoded = try decoder.decode([String: CacheEntry].self, from: data)
            entries = decoded
            return decoded
        } catch {
            fputs("Warning: cache could not be read and will be rebuilt: \(error.localizedDescription)\n", stderr)
            try? FileManager.default.removeItem(at: cacheURL)
            entries = [:]
            return [:]
        }
    }

    private func saveEntries(_ newEntries: [String: CacheEntry]) throws {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        let data = try encoder.encode(newEntries)
        try FileManager.default.createDirectory(
            at: cacheURL.deletingLastPathComponent(),
            withIntermediateDirectories: true
        )
        try data.write(to: cacheURL, options: .atomic)
        entries = newEntries
    }
}
