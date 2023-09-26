// SPDX-License-Identifier: MIT

#if os(iOS)
import SwiftUI

public struct PreviewLayouts<Content>: View where Content: View {
    let devices: [Device]
    let includeMultitasking: Bool
    let content: ()->Content
    
    public init(devices: [Device] = [.iPad_10], includeMultitasking: Bool = true, content: @escaping () -> Content) {
        self.devices = devices
        self.includeMultitasking = includeMultitasking
        self.content = content
    }
    
    // for conditionally appending "- device.rawValue" to preview display name
    func getDeviceString(_ device: Device) -> String {
        guard devices.count > 1 else { return "" }
        
        return " - \(device.rawValue)"
    }
    
    public var body: some View {
        ForEach(devices, id: \.self) { device in
            Group {
                HStack(spacing: 0) {
                    content()
                }
                .previewInterfaceOrientation(.portrait)
                .previewDisplayName("Portrait\(getDeviceString(device))")
                
                HStack(spacing: 0) {
                    content()
                    Rectangle()
                        .frame(width: 0)
                }
                .previewInterfaceOrientation(.landscapeLeft)
                .previewDisplayName("Landscape\(getDeviceString(device))")
                
                if device.isPad && includeMultitasking {
                    HStack(spacing: 0) {
                        content()
                        SplitBarView()
                        OtherView()
                            .frame(width: 375)
                    }
                    .previewInterfaceOrientation(.landscapeLeft)
                    .previewDisplayName("Landscape Large Split\(getDeviceString(device))")
                    
                    HStack(spacing: 0) {
                        content()
                        SplitBarView()
                        OtherView()
                    }
                    .previewInterfaceOrientation(.landscapeLeft)
                    .previewDisplayName("Landscape Half Split\(getDeviceString(device))")
                    
                    HStack(spacing: 0) {
                        content()
                            .frame(width: 375)
                        SplitBarView()
                        OtherView()
                    }
                    .previewInterfaceOrientation(.landscapeLeft)
                    .previewDisplayName("Landscape Small Split\(getDeviceString(device))")
                    
                    HStack(spacing: 0) {
                        content()
                        SplitBarView()
                        OtherView()
                            .frame(width: 375)
                    }
                    .previewInterfaceOrientation(.portrait)
                    .previewDisplayName("Portrait Large Split \(getDeviceString(device))")
                    
                    HStack(spacing: 0) {
                        content()
                            .frame(width: 375)
                        SplitBarView()
                        OtherView()
                    }
                    .previewInterfaceOrientation(.portrait)
                    .previewDisplayName("Portrait Small Split \(getDeviceString(device))")
                    
                    ZStack {
                        OtherView()
                        HStack(spacing: 0) {
                            Spacer()
                            content()
                                .frame(width: 375)
                                .slideOverModifier()
                        }
                    }
                    .previewInterfaceOrientation(.landscapeLeft)
                    .previewDisplayName("Landscape Slide \(getDeviceString(device))")
                    
                    ZStack {
                        OtherView()
                        
                        HStack(spacing: 0) {
                            Spacer()
                            content()
                                .frame(width: 375)
                                .slideOverModifier()
                        }
                    }
                    .previewInterfaceOrientation(.portrait)
                    .previewDisplayName("Portrait Slide \(getDeviceString(device))")
                }
            }
            .previewDevice(PreviewDevice(rawValue: device.rawValue))
        }
    }
}

struct PreviewLayoutsView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewLayouts(devices: [.iPad_10], includeMultitasking: true) {
            ExampleAppView()
        }
        .preferredColorScheme(.dark)
    }
}
#endif
