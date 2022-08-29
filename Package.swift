// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "slack-message-channel",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .library(name: "SlackMessageChannel", targets: ["SlackMessageChannel"]),
    ],
    dependencies: [
        .package(url: "https://github.com/alchemy-swift/alchemy", branch: "main"),
    ],
    targets: [
        .target(
            name: "SlackMessageChannel",
            dependencies: [
                .product(name: "Alchemy", package: "alchemy"),
            ]),
    ]
)
