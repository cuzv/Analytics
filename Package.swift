// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Infrastructure",
  platforms: [
    .iOS(.v13),
  ],
  products: [
    .library(
      name: "Analytics",
      targets: ["Analytics"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "Analytics",
      path: "Sources"
    ),
  ],
  swiftLanguageVersions: [.v5]
)
