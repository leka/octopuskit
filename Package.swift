// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// https://github.com/InvadingOctopus/octopuskit

import PackageDescription

let package = Package(
    name: "OctopusKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "OctopusKit",
            targets: ["OctopusKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/InvadingOctopus/octopuscore", exact: "3fb99b2bcb79765fb613ecd05942593cbccef7ca")
        
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "OctopusKit",
            dependencies: ["OctopusCore"],
            exclude: [
                "Apple API Extensions/SwiftUI/OctopusUI.md"]
//          , swiftSettings: [                // MARK: - Conditional Compilation Flags
//                .define("LOGECSVERBOSE"),   // Log detailed ECS core events. ⚠️ May decrease performance.
//                .define("LOGECSDEBUG"),     // Log ECS debugging info. ⚠️ Will decrease performance.
//                .define("LOGINPUTEVENTS"),  // Log detailed mouse/touch/pointer input events. ⚠️ May decrease performance.
//                .define("LOGPHYSICS"),      // Log physics contact/collision events. ⚠️ May decrease performance.
//                .define("LOGTURNBASED")     // Log each begin/update/end cycle for turn-based components. ⚠️ May decrease performance.
//            ]                               // Remember to uncomment this if you uncomment any of the lines above ^^
        ),
        .testTarget(
            name: "OctopusKitTests",
            dependencies: ["OctopusKit"]),
    ],
    swiftLanguageVersions: [.v5]
)

