// SPDX-License-Identifier: MIT

#if os(iOS)
import SwiftUI

struct OtherView: View {
    var body: some View {
        GeometryReader { geo in
            Rectangle()
                .fill(.primary)
                .ignoresSafeArea()
                .overlay(
                    VStack {
                        Text("SOME OTHER APP")
                        Text(String(format: "%.0f by %.0f", geo.size.width, geo.size.height))
                    }
                    .font(.title)
                    .foregroundStyle(.background)
                )
        }
    }
}

struct OtherView_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
}
#endif
