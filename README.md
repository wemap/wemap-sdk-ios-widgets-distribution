# Wemap widget SDKs for iOS

[![Latest release](https://img.shields.io/github/v/release/wemap/wemap-sdk-ios-widgets-distribution?sort=semver&label=release&color=blue)](https://github.com/wemap/wemap-sdk-ios-widgets-distribution/releases/latest)

Ready-made UI controls for the Wemap SDKs, for SwiftUI and UIKit. Distributed via Swift Package Manager.

This package hosts one product per Wemap UI SDK. Today that is:

| Product | Controls |
|---|---|
| `WemapMapWidgetsSDK` | for `WemapMapSDK` — the levels rail, the itinerary form, the map point picker |

Add only the products you use; the rest are not linked into your app.

## Versioning

**These SDKs are pre-1.0 and share one `0.x` line**, independent of the Wemap base SDKs. One version covers
every product here, so a release may carry changes to only some of them — the change log says which. Per
[SemVer §4](https://semver.org/#spec-item-4), anything may change in any `0.x` release. Pin a minor range
and read the release notes before moving:

```swift
.package(url: "https://github.com/wemap/wemap-sdk-ios-widgets-distribution.git", .upToNextMinor(from: "0.1.0"))
```

Each release pins the exact version of the base SDKs it was built against. That pairing is not something
you choose — resolving this package resolves that version of
[`wemap-sdk-ios-distribution`](https://github.com/wemap/wemap-sdk-ios-distribution) with it. To move the
base SDKs, move this package to a release that pins the version you want.

## Requirements

- iOS 15.0 or newer
- Xcode 26.0 or newer (Swift 6.2)

The SDKs ship as binary XCFrameworks, and a binary Swift framework can only be consumed by the toolchain
that built it and newer — so Xcode 26.0 is a hard minimum, not a recommendation.

## Installation

1. In your Xcode project or workspace, choose `File > Add Package Dependencies…`.
2. Enter `https://github.com/wemap/wemap-sdk-ios-widgets-distribution`.
3. Choose **Up to Next Minor Version** as the dependency rule.
4. Add the products you need to your app target.
5. Verify that you can `import WemapMapWidgetsSDK`.

You do not need to add `wemap-sdk-ios-distribution` separately — it comes with this package. Adding it
yourself at a different version will fail to resolve.

## Documentation

Guides and API reference: [the Wemap SDKs for iOS documentation](https://developers.getwemap.com/docs/ios-native/1.x/getting-started).

## Report a bug

Please use the [bug template](https://github.com/wemap/wemap-sdk-sample-apps-ios/blob/main/.github/ISSUE_TEMPLATE/bug_report.md)
in the sample apps repository.
