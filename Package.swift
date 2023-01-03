// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ios-ipfs-lite",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "IpfsLiteApi",
            targets: ["IpfsLiteApi"]),
    ],
    dependencies: [
//        .package(name: "Protobuf", path: "/Users/llunesu/repos/protobuf")
        .package(url: "https://github.com/lionello/protobuf.git", branch: "add-package-swift")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "IpfsLiteApi",
            dependencies: [
                .product(name: "Protobuf", package: "Protobuf")
//                "Protobuf"
            ],
            path: "IpfsLiteApi",
            publicHeadersPath: "Classes"),
    ]
)
