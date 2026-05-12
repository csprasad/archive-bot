//
//  App.swift
//  archive_bot
//
//  Entry point of the archive_bot.
//  Initializes and executes the archive checking workflow.
//
//  1. Fetches JSON from the external source (dkhamsing repo).
//  2. Extracts GitHub URLs not already marked as archived.
//  3. Checks each repository's actual archived status using GitHub API.
//  4. Updates README.md with the results and timestamp.
//

//
//  App.swift
//  archive_bot
//
//  Entry point of the archive_bot.
//  Initializes and executes the archive checking workflow.
//

import Foundation

@main
struct ArchiveDetective {
    static func main() async {
        // Parse command line arguments
        let args = CommandLine.arguments
        let isDevMode = args.contains("--dev")
        let skipCache = args.contains("--skip-cache") || args.contains("--skip-cache true")
        
        if isDevMode {
            print("⚠️  RUNNING IN DEV MODE ⚠️")
            print("   - Cache TTL reduced to 1 hour")
            print("   - Manual trigger only")
            print("   - Skip cache: \(skipCache)")
        }
        
        // Set cache TTL based on mode
        if isDevMode {
            CacheService.setDevMode(true)
        }
        
        if skipCache {
            CacheService.clearCache()
            print("🧹 Cache cleared by user request")
        }

        // Fetches JSON
        let jsonData: [String: Any]
        do {
            jsonData = try await JSONFetcher.fetch()
        } catch {
            print("Failed to fetch JSON: \(error)")
            return
        }

        // Extracts GitHub URLs
        let repoLinks = RepoExtractor.extract(from: jsonData)
        print("\(repoLinks.count) repositories to check.")

        // GitHub API Checks with cache
        var results: [Models.RepoStatus] = []
        do {
            results = try await withThrowingTaskGroup(of: Models.RepoStatus.self) { group -> [Models.RepoStatus] in
                for url in repoLinks {
                    group.addTask {
                        return await RepoStatusChecker.checkStatusWithCache(for: url)
                    }
                }
        
                var all: [Models.RepoStatus] = []
                for try await result in group {
                    all.append(result)
                }
                return all
            }
        } catch {
            print("Error while checking repository statuses: \(error)")
            return
        }

        // Updates README
        do {
            try ReadmeUpdater.update(with: results)
        } catch {
            print("Failed to update README: \(error)")
        }

        // Save cache after all checks
        CacheService.save()
        
        // Filtering & Counting for debugging
        let archived = results.filter { $0.status == "Archived" }.count
        let notFound = results.filter { $0.status == "Not Found" }.count
        let forbidden = results.filter { $0.status?.contains("Forbidden") == true }.count
        let stale = results.filter { $0.isStale == true }.count
        
        print("Archived: \(archived)", "Not Found: \(notFound)", "Forbidden: \(forbidden)", "Stale: \(stale)")
    }
}