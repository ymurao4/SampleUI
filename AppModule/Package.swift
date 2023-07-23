// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppModule",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AppModule",
            targets: ["AppModule"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AppModule",
            dependencies: [
                .appDelegate,
                .repository,
                .youTube
            ]
        ),
        .target(
            name: .appDelegate
        ),
        .target(
            name: .repository
        ),
        .target(
            name: .youTube,
            dependencies: [.repository]
        )
    ]
)

extension String {
    static let appDelegate = "AppDelegate"
    static let repository = "Repository"
    static let youTube = "YouTube"
}

extension Target.Dependency {
    static let appDelegate = Self(stringLiteral: .appDelegate)
    static let repository = Self(stringLiteral: .repository)
    static let youTube = Self(stringLiteral: .youTube)
}
