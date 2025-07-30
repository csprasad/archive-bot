import Foundation

@main
struct ArchiveDetective {
    static func main() async {
        print("Fetching JSON from source..."); fflush(stdout)

        let jsonData: [String: Any]
        do {
            jsonData = try await JSONFetcher.fetch()
        } catch {
            print("Failed to fetch JSON: \(error)"); fflush(stdout)
            return
        }

        print("Extracting GitHub repository links..."); fflush(stdout)
        let repoLinks = RepoExtractor.extract(from: jsonData)
        print("\(repoLinks.count) repositories to check."); fflush(stdout)

        let results = try await withThrowingTaskGroup(of: Models.RepoStatus.self) { group -> [Models.RepoStatus] in
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

        print("Updating README..."); fflush(stdout)
        do {
            try ReadmeUpdater.update(with: results)
        } catch {
            print("Failed to update README: \(error)"); fflush(stdout)
        }

        print("\n Summary:"); fflush(stdout)
        let archived = results.filter { $0.status == "Archived" }.count
        let notFound = results.filter { $0.status == "Not Found" }.count
        let forbidden = results.filter { $0.status?.contains("Forbidden") == true }.count
        print(" Archived: \(archived)"); fflush(stdout)
        print(" Not Found: \(notFound)"); fflush(stdout)
        print(" Forbidden: \(forbidden)"); fflush(stdout)
    }
}
