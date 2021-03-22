// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftTryCatch",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "SwiftTryCatch", targets: ["SwiftTryCatch"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "SwiftTryCatch", path: "./",
                exclude: ["LICENSE", "README.md", "SwiftTryCatch.podspec"])
    ]
)
    
