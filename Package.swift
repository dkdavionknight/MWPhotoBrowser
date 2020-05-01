// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MWPhotoBrowser",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MWPhotoBrowser",
            targets: ["MWPhotoBrowser"])
    ],
    dependencies: [
        .package(url: "https://github.com/jdg/MBProgressHUD.git", from: "1.2.0"),
        .package(url: "https://github.com/dkdavionknight/DACircularProgress.git", from: "2.3.2"),
        .package(url: "https://github.com/dkdavionknight/SDWebImage.git", from: "4.4.8")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "MWPhotoBrowser",
            dependencies: ["MBProgressHUD", "DACircularProgress", "SDWebImage"],
            path: "Pod",
            sources: ["Classes"],
            publicHeadersPath: "Classes")
    ]
)
