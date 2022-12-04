// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GPhotos",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v6)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GPhotos",
            targets: ["GPhotos"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/google/GTMAppAuth", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", .upToNextMajor(from: "4.0.0")),
        .package(url: "https://github.com/Moya/Moya", .upToNextMajor(from: "15.0.0")),
        .package(url: "https://github.com/openid/AppAuth-iOS.git", .upToNextMajor(from: "1.3.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GPhotos",
            dependencies: [
                "GTMAppAuth",
                "ObjectMapper",
                "Moya",
                .product(name: "AppAuth", package: "AppAuth-iOS"),
            ]),
        .testTarget(
            name: "GPhotosTests",
            dependencies: []),
    ]
)
