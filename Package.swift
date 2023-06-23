// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let purchasesVersion = "4.23.0" // Updated by workflow action
let purchasesChecksum = "c81f02d8600ef2b0f18826abed9b11a9d73b70c077cbbf972c18b5cd6dc21a50" // Updated by workflow action


let package = Package(
    name: "purchases-ios",
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
