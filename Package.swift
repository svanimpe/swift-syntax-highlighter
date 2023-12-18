// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "swift-syntax-highlighter",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
        .package(url: "https://github.com/kkk669/swift-syntax.git", branch: "wasm32-wasi-test")
    ],
    targets: [
        .executableTarget(
            name: "swift-syntax-highlighter",
            dependencies: [
                .product(name: "SwiftParser", package: "swift-syntax"),
                .product(name: "SwiftSyntax", package: "swift-syntax")
            ],
            path: "Sources"
        ),
    ]
)
