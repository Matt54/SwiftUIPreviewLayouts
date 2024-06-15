// SPDX-License-Identifier: MIT

import SwiftUI

struct SlideOverModifier: ViewModifier {
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            HStack(spacing: 4) {
                Circle().frame(width: 4)
                Circle().frame(width: 4)
                Circle().frame(width: 4)
            }
            .padding(.bottom, 12)
            .foregroundColor(Color.init(white: 0.3))
            .frame(height: 28)
            .frame(maxWidth: .infinity)
            .background(Color.red)
            
            content
                .overlay(
                    VStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: 4)
                            .frame(width: 100, height: 4)
                    }
                        .foregroundColor(Color.init(white: 0.3))
                        .padding(.vertical, 8)
                )
        }
        .background(Color.black)
        .cornerRadius(10)
        .frame(width: 320)
        .padding(.trailing, 24)
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
