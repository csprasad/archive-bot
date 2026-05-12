//
//  Models.swift
//  archive_bot
//
//  Contains shared data models used across the app:
//  - RepoStatus: Stores a repository's URL, archive status, and last commit date.
//

import Foundation

enum Models {
    struct RepoStatus {
        let url: String
        let status: String?  // Archived, Not Found, Forbidden, etc.
        let lastCommitDate: Date?
        let isArchived: Bool
        let exists: Bool
        
        // Computed property for staleness (8+ years)
        var isStale: Bool {
            guard let lastCommitDate = lastCommitDate else { return false }
            let calendar = Calendar.current
            let years = calendar.dateComponents([.year], from: lastCommitDate, to: Date()).year ?? 0
            return years >= 8
        }
        
        // Computed property for years since last commit
        var yearsSinceLastCommit: Int? {
            guard let lastCommitDate = lastCommitDate else { return nil }
            let calendar = Calendar.current
            return calendar.dateComponents([.year], from: lastCommitDate, to: Date()).year ?? 0
        }
        
        // Initializer for creating from API response
        init(url: String, status: String?, lastCommitDate: Date? = nil, isArchived: Bool = false, exists: Bool = true) {
            self.url = url
            self.status = status
            self.lastCommitDate = lastCommitDate
            self.isArchived = isArchived
            self.exists = exists
        }
    }
}