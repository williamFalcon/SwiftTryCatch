// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTryCatch",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v5),
        .macOS(.v10_14),
    ],
    products: [
        .library(
            name: "SwiftTryCatch",
            targets: ["SwiftTryCatch"]),
    ],
    targets: [
        .target(
            name: "SwiftTryCatch",
            dependencies: [],
            publicHeadersPath: "./")
    ]
)
let version = Version(1, 0, 0)
