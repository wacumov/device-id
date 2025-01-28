# DeviceID
This repository hosts the DeviceID library as an XCFramework, along with a demo project.

## Installation
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/wacumov/device-id", from: "0.1.0")
    ],
    ...
)
```

## Usage
```swift
import DeviceID

let deviceID = await DeviceID.getDeviceID()
```
