// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swift-force",
    platforms: [
        .macOS(.v27),
        .iOS(.v27),
        .tvOS(.v27),
        .watchOS(.v27),
        .visionOS(.v27),
    ],
    products: [
        .library(name: "Force", targets: ["Force"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-atoms/swift-quantity.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-mass.git", branch: "main"),
        .package(url: "https://github.com/swift-atoms/swift-acceleration.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Force",
            dependencies: [
                .product(name: "Quantity", package: "swift-quantity"),
                .product(name: "Mass", package: "swift-mass"),
                .product(name: "Acceleration", package: "swift-acceleration"),
            ]
        ),
        .testTarget(
            name: "Force Tests",
            dependencies: [
                .target(name: "Force")
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings =
        (target.swiftSettings ?? []) + [
            .strictMemorySafety(),
            .enableUpcomingFeature("ExistentialAny"),
            .enableUpcomingFeature("InternalImportsByDefault"),
            .enableUpcomingFeature("MemberImportVisibility"),
            .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
            .enableUpcomingFeature("InferIsolatedConformances"),
            .enableExperimentalFeature("Lifetimes"),
            .treatAllWarnings(as: .error),
        ]
}
