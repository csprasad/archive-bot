//
//  CacheService.swift
//  archive_bot
//
//  Simple persistent cache using UserDefaults to avoid memory crashes.
//

import Foundation

struct CacheEntry {
    let url: String
    let owner: String
    let repo: String
    let isArchived: Bool
    let status: String?
    let lastCommitTimestamp: TimeInterval?  // Store as TimeInterval instead of Date
    let lastCheckedTimestamp: TimeInterval  // Store as TimeInterval instead of Date
    
    // Computed properties for Date conversion
    var lastCommitDate: Date? {
        guard let timestamp = lastCommitTimestamp else { return nil }
        return Date(timeIntervalSince1970: timestamp)
    }
    
    var lastChecked: Date {
        return Date(timeIntervalSince1970: lastCheckedTimestamp)
    }
    
    init(url: String, owner: String, repo: String, isArchived: Bool, status: String?, lastCommitDate: Date?, lastChecked: Date) {
        self.url = url
        self.owner = owner
        self.repo = repo
        self.isArchived = isArchived
        self.status = status
        self.lastCommitTimestamp = lastCommitDate?.timeIntervalSince1970
        self.lastCheckedTimestamp = lastChecked.timeIntervalSince1970
    }
}

// Cache manager using UserDefaults
class CacheService {
    static let shared = CacheService()
    private let defaults = UserDefaults.standard
    private let cacheKey = "archive_bot_cache"
    private let lastGlobalCheckKey = "archive_bot_last_global_check"
    
    private init() {}
    
    var cacheTTL: TimeInterval {
        return 7 * 24 * 60 * 60  // 7 days
    }
    
    // Save all entries to UserDefaults
    private func saveEntries(_ entries: [String: [String: Any]]) {
        defaults.set(entries, forKey: cacheKey)
    }
    
    // Load all entries from UserDefaults
    private func loadEntries() -> [String: [String: Any]] {
        return defaults.dictionary(forKey: cacheKey) as? [String: [String: Any]] ?? [:]
    }
    
    // Save last global check timestamp
    private func saveLastGlobalCheck(_ date: Date) {
        defaults.set(date.timeIntervalSince1970, forKey: lastGlobalCheckKey)
    }
    
    private func loadLastGlobalCheck() -> Date? {
        let timestamp = defaults.double(forKey: lastGlobalCheckKey)
        guard timestamp > 0 else { return nil }
        return Date(timeIntervalSince1970: timestamp)
    }
    
    func clearCache() {
        saveEntries([:])
        saveLastGlobalCheck(Date())
        print("🧹 Cache cleared")
    }
    
    func get(for key: String) -> CacheEntry? {
        let entries = loadEntries()
        guard let dict = entries[key] else { return nil }
        
        // Reconstruct CacheEntry from dictionary
        guard let url = dict["url"] as? String,
              let owner = dict["owner"] as? String,
              let repo = dict["repo"] as? String,
              let isArchived = dict["isArchived"] as? Bool,
              let lastCheckedTimestamp = dict["lastCheckedTimestamp"] as? TimeInterval else {
            return nil
        }
        
        let status = dict["status"] as? String
        let lastCommitTimestamp = dict["lastCommitTimestamp"] as? TimeInterval
        
        return CacheEntry(
            url: url,
            owner: owner,
            repo: repo,
            isArchived: isArchived,
            status: status,
            lastCommitDate: lastCommitTimestamp.map { Date(timeIntervalSince1970: $0) },
            lastChecked: Date(timeIntervalSince1970: lastCheckedTimestamp)
        )
    }
    
    func set(for key: String, entry: CacheEntry) {
        var entries = loadEntries()
        
        // Store as dictionary (safe for UserDefaults)
        var dict: [String: Any] = [
            "url": entry.url,
            "owner": entry.owner,
            "repo": entry.repo,
            "isArchived": entry.isArchived,
            "lastCheckedTimestamp": entry.lastCheckedTimestamp
        ]
        
        if let status = entry.status {
            dict["status"] = status
        }
        
        if let timestamp = entry.lastCommitTimestamp {
            dict["lastCommitTimestamp"] = timestamp
        }
        
        entries[key] = dict
        saveEntries(entries)
        saveLastGlobalCheck(Date())
    }
    
    func isFresh(_ entry: CacheEntry) -> Bool {
        let age = Date().timeIntervalSince(entry.lastChecked)
        return age < cacheTTL
    }
    
    func shouldRefetch(_ entry: CacheEntry?) -> Bool {
        guard let entry = entry else { return true }
        return !isFresh(entry)
    }
}