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
            url: "https://github.com/delysis/TiktokenSwift/releases/download/1.0.2/TiktokenFFI.xcframework.zip",
            checksum: "4b938538d05da81e4c5ed1bef7c10fd09dd635ffd45f46475675c364a245bbbe"
        ),
        .testTarget(
            name: "TiktokenSwiftTests",
            dependencies: ["TiktokenSwift"],
            path: "Tests/TiktokenSwiftTests"
        ),
    ]
)
