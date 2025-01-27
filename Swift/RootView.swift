import DeviceID
import SwiftUI

struct RootView: View {
    @State private var deviceID: String?

    var body: some View {
        VStack {
            Text(deviceID ?? "...")
                .font(.headline)
                .multilineTextAlignment(.center)
        }
        .padding()
        .task {
            deviceID = await DeviceID.getDeviceID()
        }
    }
}
