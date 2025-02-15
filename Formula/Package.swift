// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rugby",
    platforms: [.macOS(.v11)],
    products: [
        .executable(name: "rugby", targets: ["rugby"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.4.3"),
        .package(url: "https://github.com/onevcat/Rainbow", from: "4.0.0"),
        .package(url: "https://github.com/JohnSundell/Files", from: "4.2.0"),
        .package(name: "XcodeProj", url: "https://github.com/tuist/xcodeproj", from: "7.22.0"),
        .package(url: "https://github.com/eneko/RegEx.git", from: "0.3.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut", from: "2.3.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "4.0.6")
    ],
    targets: [
        .target(name: "rugby", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
            "Rainbow",
            "Files",
            "XcodeProj",
            "RegEx",
            "ShellOut",
            "Yams"
        ])
    ]
)
