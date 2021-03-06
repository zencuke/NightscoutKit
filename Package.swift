// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "NightscoutKit",
    products: [
        .library(name: "NightscoutKit", targets: ["NightscoutKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/mpangburn/Oxygen", .branch("master"))
    ],
    targets: [
        .target(
            name: "NightscoutKit",
            dependencies: ["Oxygen"] 
        )
    ]
)
