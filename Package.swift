// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ComputableLayout",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "ComputableLayout",
      targets: ["ComputableLayout"]
    ),
  ],
  dependencies: [
    .package(
      url: "https://github.com/dominicstop/DGSwiftUtilities",
      .upToNextMajor(from: "0.11.0")
    ),
  ],
  targets: [
    .target(
      name: "ComputableLayout",
      dependencies: [
        "DGSwiftUtilities"
      ],
      path: "Sources",
      linkerSettings: [
				.linkedFramework("UIKit"),
			]
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
