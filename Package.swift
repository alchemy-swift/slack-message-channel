// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "slack-notification-channel",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(name: "slack-notification-channel", targets: ["slack-notification-channel"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alchemy-swift/alchemy", branch: "main"),
    ],
    targets: [
        .target(
            name: "slack-notification-channel",
            dependencies: [
                .product(name: "Alchemy", package: "alchemy"),
            ]),
    ]
)
