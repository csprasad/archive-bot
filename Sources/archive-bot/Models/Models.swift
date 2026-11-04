//
// Models.swift
// Shared repository status model.
//

import Foundation

enum Models {
    struct RepoStatus {
        let url: String
        let status: String?
        let lastCommitDate: Date?
        let isArchived: Bool
        let exists: Bool

        var yearsSinceLastCommit: Int? {
            yearsSinceLastCommit(asOf: Date())
        }

        func yearsSinceLastCommit(asOf now: Date) -> Int? {
            guard let lastCommitDate else { return nil }
            return DateHelpers.yearsBetween(lastCommitDate, to: now)
        }

        var isStale: Bool {
            isStale(asOf: Date())
        }

        func isStale(asOf now: Date) -> Bool {
            guard let lastCommitDate else { return false }
            return DateHelpers.isOlderThan(years: 8, date: lastCommitDate, now: now)
        }

        init(
            url: String,
            status: String?,
            lastCommitDate: Date? = nil,
            isArchived: Bool = false,
            exists: Bool = true
        ) {
            self.url = url
            self.status = status
            self.lastCommitDate = lastCommitDate
            self.isArchived = isArchived
            self.exists = exists
        }
    }
}
