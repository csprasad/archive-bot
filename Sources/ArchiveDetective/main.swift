import Foundation

struct ArchiveDetective {
    static func main() async {
        print("🔥 ArchiveDetective is running")
        print("🧪 Test build with random number: \(Int.random(in: 0...999))")
        fatalError("🔥 FORCING A CRASH TO CONFIRM EXECUTION")
    }
}
