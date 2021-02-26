// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTryCatch",
    products: [
        .library(name: "SwiftTryCatch", targets: ["SwiftTryCatch"]),
    ],
    targets: [
        .target(name: "SwiftTryCatch", dependencies: [], path: "Sources", sources: ["SwiftTryCatch.m", "include/SwiftTryCatch.h"]),
    ]
)