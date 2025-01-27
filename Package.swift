// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "DeviceID",
    products: [
        .library(
            name: "DeviceID",
            targets: ["DeviceID"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "DeviceID",
                      url: "https://github.com/wacumov/device-id/releases/download/0.1.0/DeviceID.xcframework.zip",
                      checksum: "362882b11d78e8465d511732d23b14896aadd64708357e40e1b3bcfa856d323f"),
    ]
)
