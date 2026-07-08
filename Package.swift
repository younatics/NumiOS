// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "NumiOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "NumiOS", targets: ["NumiOS"])
    ],
    targets: [
        .target(
            name: "NumiOS",
            path: "NumiOS",
            exclude: [
                "NumiOS.h",
                "Info.plist"
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        ),
        .testTarget(
            name: "NumiOSTests",
            dependencies: ["NumiOS"],
            path: "NumiOSTests",
            exclude: [
                "Info.plist"
            ],
            swiftSettings: [
                .swiftLanguageMode(.v6)
            ]
        )
    ]
)
