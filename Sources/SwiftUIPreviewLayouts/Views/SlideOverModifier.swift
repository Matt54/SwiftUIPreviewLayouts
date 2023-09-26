// SPDX-License-Identifier: MIT

import SwiftUI

struct SlideOverModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .overlay(
                VStack {
                    HStack(spacing: 4) {
                        Circle().frame(width: 4)
                        Circle().frame(width: 4)
                        Circle().frame(width: 4)
                    }
                    Spacer()
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 100, height: 4)
                }
                .foregroundColor(Color.init(white: 0.3))
                .padding(.vertical, 8)
            )
            .cornerRadius(10)
            .padding(.vertical, 24)
            .padding(.trailing, 48)
    }
}

extension View {
    func slideOverModifier() -> some View {
        self.modifier(SlideOverModifier())
    }
}

struct SlideOverModifier_Previews: PreviewProvider {
    static var previews: some View {
        ExampleAppView()
            .slideOverModifier()
    }
}
