// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(OSX)
  let pkgConfigName = "python3"
#else
  // for Ubuntu 20.04: python-3.8
  // for Ubuntu 18.04: python-3.6
  // for Ubuntu 16.04: python-3.5
  let pkgConfigName = "python-3.8"
#endif

let package = Package(
  name: "PerfectPython3API",
  products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "PerfectPython3API",
            targets: ["PerfectPython3API"]),
  ],
  targets: [
    .systemLibrary(
        name: "PerfectPython3API",
        pkgConfig: pkgConfigName,
        providers:[
          .brew(["python"]),
          .apt(["libpython3-dev"]),
        ]),
    .testTarget(
        name: "PerfectPython3APITests",
        dependencies: ["PerfectPython3API"]),
  ]
)