// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NetworkProvider",
    products: [
        .library(
            name: "NetworkProvider",
            targets: ["NetworkProvider"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NetworkProvider",
            dependencies: []),
        .testTarget(
            name: "NetworkProviderTests",
            dependencies: ["NetworkProvider"]),
    ]
)
