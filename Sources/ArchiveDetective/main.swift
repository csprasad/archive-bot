import Foundation

@main
struct ArchiveDetective {
    static func main() async {
        // print("Fetching JSON from source...")

        // let jsonData: [String: Any]
        // do {
        //     jsonData = try await JSONFetcher.fetch()
        // } catch {
        //     print("Failed to fetch JSON: \(error)")
        //     return
        // }

        // print("Extracting GitHub repository links...")
        // let repoLinks = RepoExtractor.extract(from: jsonData)
        // print("\(repoLinks.count) repositories to check.")

        // var results: [Models.RepoStatus] = []
        // for (i, url) in repoLinks.enumerated() {
        //     print("Checking [\(i + 1)/\(repoLinks.count)]: \(url)")
        //     let status = await RepoStatusChecker.checkStatus(for: url)
        //     results.append(status)
        //     try? await Task.sleep(nanoseconds: 50_000_000) // 50ms delay
        // }

        // print("Updating README...")
        // do {
        //     try ReadmeUpdater.update(with: results)
        // } catch {
        //     print("Failed to update README: \(error)")
        // }

        // print("\n Summary:")
        // let archived = results.filter { $0.status == "Archived" }.count
        // let notFound = results.filter { $0.status == "Not Found" }.count
        // let forbidden = results.filter { $0.status?.contains("Forbidden") == true }.count
        // print(" Archived: \(archived)")
        // print(" Not Found: \(notFound)")
        // print(" Forbidden: \(forbidden)")
    }
}
