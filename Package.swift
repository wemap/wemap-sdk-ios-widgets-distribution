// swift-tools-version:6.2
import PackageDescription

let version = "0.2.0"

let baseURL = "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios"

let package = Package(
    name: "WemapMapWidgetsSDK",
    defaultLocalization: "en",
    platforms: [.iOS("15.5")],
    products: [
        .library(name: "WemapMapWidgetsSDK", targets: ["WemapMapWidgetsSDKWrapper"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/wemap/wemap-sdk-ios-distribution.git",
            exact: "1.0.0-beta.2"
        ),
        .package(
            url: "https://github.com/maplibre/maplibre-gl-native-distribution.git",
            exact: "7.0.0"
        )
    ],
    targets: [
        .target(
            name: "WemapMapWidgetsSDKWrapper",
            dependencies: [
                .product(name: "WemapCoreSDK", package: "wemap-sdk-ios-distribution"),
                .product(name: "WemapMapSDK", package: "wemap-sdk-ios-distribution"),
                .product(name: "MapLibre", package: "maplibre-gl-native-distribution"),
                "WemapMapWidgetsSDKBinary"
            ]
        ),
        .binaryTarget(
            name: "WemapMapWidgetsSDKBinary",
            url: "\(baseURL)/widgets/map/\(version)/WemapMapWidgetsSDK.zip",
            checksum: "bc7bb950cb17b63270c31d4756aa48f5c8822ec0b7e7b8a9069bd3bc6a8ef1b4"
        )
    ]
)
