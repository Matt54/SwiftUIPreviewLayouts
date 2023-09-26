import XCTest
import SwiftUI
@testable import SwiftUIPreviewLayouts

final class SwiftUIPreviewLayoutsTests: XCTestCase {
    func testGetDeviceString() {
        let preview = PreviewLayouts(devices: [.iPad_10, .iPhone_15], content: { TestView() })
        XCTAssertEqual(preview.getDeviceString(.iPad_10), " - \(Device.iPad_10.rawValue)")
        XCTAssertEqual(preview.getDeviceString(.iPhone_15), " - \(Device.iPhone_15.rawValue)")
        
        let singleDevicePreview = PreviewLayouts(devices: [.iPad_10], content: { TestView() })
        XCTAssertEqual(singleDevicePreview.getDeviceString(.iPad_10), "")
    }
}

struct TestView: View {
    var body: some View {
        Text("Hello, Test!")
    }
}
