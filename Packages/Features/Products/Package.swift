// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Products",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ProductsUI",
            targets: ["ProductsUI"]),
        .library(name: "ProductsProtocol", targets: ["ProductsProtocol"]),
        .library(name: "ProductEntities", targets: ["ProductEntities"])
    ],
    dependencies: [
        .package(name: "PKSTheme", path: "../Core/PKSTheme"),
        .package(url: "https://github.com/ohk/PKSNavigation.git", exact: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ProductsUI",
            dependencies: ["PKSTheme", "PKSNavigation", "ProductsProtocol"]
        ),
        .target(
            name: "ProductsProtocol",
            dependencies: ["PKSNavigation"]
        ),
        .target(name: "ProductEntities"),
        .testTarget(
            name: "ProductsTests",
            dependencies: ["ProductsUI"]
        ),
    ]
)
