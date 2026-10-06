// swift-tools-version:6.2
import PackageDescription

let version = "0.1.0"

let baseURL = "https://s3.eu-west-1.amazonaws.com/mobile.getwemap.com/releases/ios"

let package = Package(
    name: "WemapMapWidgetsSDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "WemapMapWidgetsSDK", targets: ["WemapMapWidgetsSDKWrapper"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/wemap/wemap-sdk-ios-distribution.git",
            exact: "1.0.0-beta.1"
        ),
        .package(
            url: "https://github.com/maplibre/maplibre-gl-native-distribution.git",
            exact: "6.30.0"
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
            checksum: "90472f887c80284098aefe71018a8b305c6a76d3837e9c4c274eaa8fd084ac5f"
        )
    ]
)
