import Foundation

@main
struct ArchiveDetective {
    static func main() async {
        let jsonData: [String: Any]
        do {
            jsonData = try await JSONFetcher.fetch()
        } catch {
            print("Failed to fetch JSON: \(error)")
            return
        }

        let repoLinks = RepoExtractor.extract(from: jsonData)
        print("\(repoLinks.count) repositories to check.")

        var results: [Models.RepoStatus] = []
        do {
            results = try await withThrowingTaskGroup(of: Models.RepoStatus.self) { group -> [Models.RepoStatus] in
                for url in repoLinks {
                    group.addTask {
                        return await RepoStatusChecker.checkStatus(for: url)
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


        do {
            try ReadmeUpdater.update(with: results)
        } catch {
            print("Failed to update README: \(error)")
        }

        let archived = results.filter { $0.status == "Archived" }.count
        let notFound = results.filter { $0.status == "Not Found" }.count
        let forbidden = results.filter { $0.status?.contains("Forbidden") == true }.count
        print("Archived: \(archived)", "Not Found: \(notFound)", "Forbidden: \(forbidden)")
    }
}
