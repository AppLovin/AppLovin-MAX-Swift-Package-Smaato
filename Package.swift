// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
//  Copyright © 2026 AppLovin. All rights reserved.

import PackageDescription

let package = Package(
    name: "AppLovinMediationSmaatoAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppLovinMediationSmaatoAdapter",
            targets: ["AppLovinMediationSmaatoAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", from: "13.0.0"),
        .package(url: "https://github.com/vervegroup/Smaato-ios-sdk-standalone.git", exact: "23.2.2")
    ],
    targets: [
        .target(
            name: "AppLovinMediationSmaatoAdapterTarget",
            dependencies: [
                .target(name: "AppLovinMediationSmaatoAdapter"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .product(name: "SmaatoSDK", package: "Smaato-ios-sdk-standalone"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AppLovinMediationSmaatoAdapter",
            url: "https://artifacts.applovin.com/ios/com/applovin/mediation/smaato-adapter/AppLovinMediationSmaatoAdapter-23.2.2.0.zip",
            checksum: "a781fc466946f01f26451402401bf8ad6a89a4d12eecc0ee2c02f528fe7081f2"
        )
    ]
)
