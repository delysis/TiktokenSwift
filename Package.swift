// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TiktokenSwift",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "TiktokenSwift",
            type: .static,
            targets: ["TiktokenSwift"]),
    ],
    targets: [
        .target(
            name: "TiktokenSwift",
            dependencies: ["TiktokenFFI"],
            path: "Sources/TiktokenSwift"
        ),
        .binaryTarget(
            name: "TiktokenFFI",
            url: "https://github.com/delysis/TiktokenSwift/releases/download/1.0.3/TiktokenFFI.xcframework.zip",
            checksum: "ec198f03a63d61f60e8f3c33d71c85e9ae2b97fb6f802fc398d136e826b52fce"
        ),
        .testTarget(
            name: "TiktokenSwiftTests",
            dependencies: ["TiktokenSwift"],
            path: "Tests/TiktokenSwiftTests"
        ),
    ]
)
