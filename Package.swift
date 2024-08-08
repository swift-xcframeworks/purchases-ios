// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let purchasesVersion = "5.2.3" // Updated by workflow action
let purchasesChecksum = "0c4ac8380d8f099bfe2b41b52b4329947df1a078ed2512c2baaeb7f8c3bfdd8c" // Updated by workflow action


let package = Package(
    name: "RevenueCat",
    platforms: [
        .macOS(.v10_13),
        .watchOS("6.2"),
        .tvOS(.v11),
        .iOS(.v11)
    ],
    products: [
        .library(name: "RevenueCat", targets: ["RevenueCat"]),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RevenueCat",
                      url: "https://github.com/swift-xcframeworks/purchases-ios/releases/download/\(purchasesVersion)/RevenueCat.xcframework.zip",
                      checksum: purchasesChecksum)
    ]
)
