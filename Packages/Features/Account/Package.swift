// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Account",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AccountUI",
            targets: ["AccountUI"]
        ),
        .library(
            name: "AccountProtocol",
            targets: ["AccountProtocol"]
        ),
    ],
    dependencies: [
        .package(
            name: "PKSTheme",
            path: "../Core/PKSTheme"
        ),
        .package(url: "https://github.com/POIKUS-LLC/PKSNavigation.git", branch: "develop")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AccountProtocol"
        ),
        .target(
            name: "AccountUI",
            dependencies: [
                "AccountProtocol",
                "PKSNavigation",
                "PKSTheme"
            ]
        ),

    ]
)
