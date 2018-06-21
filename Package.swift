// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(OSX)
  let pkgConfigName = "python3"
#else
  let pkgConfigName = "python-3.5"
#endif

let package = Package(
  name: "PerfectPython3API",
  pkgConfig: pkgConfigName,
  providers: [
      .brew(["python"]),
      .apt(["libpython3-dev"]),
  ]
)