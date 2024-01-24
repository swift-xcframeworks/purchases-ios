// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let purchasesVersion = "4.32.1" // Updated by workflow action
let purchasesChecksum = "33a716dc50d243417354c62064e2ae6811f5b9b02815306cbb86f837b29b9bda" // Updated by workflow action


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
