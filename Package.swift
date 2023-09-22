// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let purchasesVersion = "4.26.1" // Updated by workflow action
let purchasesChecksum = "93103ef597321263594719870e863dc5b2b851d56d88e0356e9e4615edf8f6f2" // Updated by workflow action


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
