// swift-tools-version:5.6
import PackageDescription
let package = Package(
    name: "SwiftWasm",
    platforms: [.macOS(.v11), .iOS(.v13)],
    products: [
        .executable(name: "SwiftWasm", targets: ["SwiftWasm"])
    ],
    dependencies: [
        .package(name: "Tokamak", url: "https://github.com/TokamakUI/Tokamak", from: "0.10.0")
    ],
    targets: [
        .target(
            name: "SwiftWasm",
            dependencies: [
                .product(name: "TokamakShim", package: "Tokamak")
            ]),
        .testTarget(
            name: "SwiftWasmTests",
            dependencies: ["SwiftWasm"]),
    ]
)