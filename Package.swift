// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "FMPhotoPicker",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "FMPhotoPicker",
            targets: ["FMPhotoPicker"])
    ],
    dependencies: [
       .package(name: "iOSPhotoEditor", path: "../iOSPhotoEditor"),
    ],
    targets: [
        .target(
            name: "FMPhotoPicker",
            dependencies: [
                .product(name: "iOSPhotoEditor", package: "../iOSPhotoEditor"),
            ],
            path: "FMPhotoPicker/FMPhotoPicker",
            exclude: ["./Info.plist"],
            resources: [
                .process("./source/Assets.xcassets"),
            ]),
    ],
    swiftLanguageVersions: [.v5]
)
