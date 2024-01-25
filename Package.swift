// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let purchasesVersion = "4.32.2" // Updated by workflow action
let purchasesChecksum = "04593ae44799d1000c2056bbbe41f6d6506a216888d36d13f0bda93a7092c4d4" // Updated by workflow action


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
