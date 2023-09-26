// SPDX-License-Identifier: MIT

import SwiftUI

struct ExampleAppView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Rectangle()
                    .fill(.blue)
                    .overlay(
                        VStack {
                            Text("THIS IS YOUR APP")
                            Text(String(format: "%.0f by %.0f", geo.size.width, geo.size.height))
                        }
                        .font(.title)
                        .foregroundColor(.primary)
                    )
            }
            .ignoresSafeArea()
        }
    }
}

struct ExampleAppView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleAppView()
    }
}
