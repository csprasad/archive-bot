//
//  Models.swift
//  archive_bot
//
//  Contains shared data models used across the app:
//  - RepoStatus: Stores a repository's URL and its archive status.
//


import Foundation

enum Models {
    struct RepoStatus {
        let url: String
        let status: String?
    }
}