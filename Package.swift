// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "archive-bot",
    platforms: [.macOS(.v13)],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "archive-bot",
            dependencies: []
        ),
        .testTarget(
            name: "archive-botTests",
            dependencies: ["archive-bot"]
        )
    ]
)
