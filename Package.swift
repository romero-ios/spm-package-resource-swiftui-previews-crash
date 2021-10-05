// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "spm-bug",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "LibraryA", targets: ["LibraryA"]),
        .library(name: "LibraryB", targets: ["LibraryB"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LibraryA",
            dependencies: ["LibraryB"]),
        .target(
            name: "LibraryB",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
