//
//  SwiftUIView.swift
//  
//
//  Created by Matt Pfeiffer on 9/26/23.
//

import SwiftUI

struct SplitBarView: View {
    var body: some View {
        Rectangle()
            .fill(.black)
            .frame(width: 10)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .fill(Color.gray)
                    .frame(height: 50)
                    .padding(.horizontal, 3)
            )
            .ignoresSafeArea()
    }
}

struct SplitBarView_Previews: PreviewProvider {
    static var previews: some View {
        SplitBarView()
    }
}
