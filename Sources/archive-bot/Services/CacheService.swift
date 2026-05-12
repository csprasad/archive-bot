//
//  CacheService.swift
//  archive_bot
//
//  Persistent cache to avoid repeated API calls across runs.
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
}

struct CacheFile: Codable {
    var entries: [String: CacheEntry]  // key = "owner/repo"
    var lastGlobalCheck: Date?
}

enum CacheService {
    private static let cachePath = ".cache.json"
    private static var cache: CacheFile = CacheFile(entries: [:], lastGlobalCheck: nil)
    private static var isDevMode = false
    
    static func setDevMode(_ enabled: Bool) {
        isDevMode = enabled
        load()
    }
    
    static var cacheTTL: TimeInterval {
        return isDevMode ? 1 * 60 * 60 : 7 * 24 * 60 * 60  // 1 hour dev, 7 days prod
    }
    
    static func load() {
        guard FileManager.default.fileExists(atPath: cachePath),
              let data = try? Data(contentsOf: URL(fileURLWithPath: cachePath)),
              let loaded = try? JSONDecoder().decode(CacheFile.self, from: data) else {
            cache = CacheFile(entries: [:], lastGlobalCheck: nil)
            return
        }
        cache = loaded
    }
    
    static func save() {
        guard let data = try? JSONEncoder().encode(cache) else { return }
        try? data.write(to: URL(fileURLWithPath: cachePath))
    }
    
    static func clearCache() {
        cache = CacheFile(entries: [:], lastGlobalCheck: nil)
        save()
    }
    
    static func get(for key: String) -> CacheEntry? {
        return cache.entries[key]
    }
    
    static func set(for key: String, entry: CacheEntry) {
        cache.entries[key] = entry
        cache.lastGlobalCheck = Date()
    }
    
    static func isFresh(_ entry: CacheEntry) -> Bool {
        return Date().timeIntervalSince(entry.lastChecked) < cacheTTL
    }
    
    static func shouldRefetch(_ entry: CacheEntry?) -> Bool {
        guard let entry = entry else { return true }
        return !isFresh(entry)
    }
}