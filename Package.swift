// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "WolfBase62",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "WolfBase62",
            targets: ["WolfBase62"]),
    ],
    dependencies: [
        .package(name: "AnyBase", url: "https://github.com/jrikhof/any-base-swift", from: "1.0.0"),
        .package(name: "WolfBase", url: "https://github.com/WolfMcNally/WolfBase", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WolfBase62",
            dependencies: ["WolfBase", "AnyBase"]),
        .testTarget(
            name: "WolfBase62Tests",
            dependencies: ["WolfBase62"]),
    ]
)
