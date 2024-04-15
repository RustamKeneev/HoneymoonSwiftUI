//
//  HeaderComponent.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 15/4/24.
//

import SwiftUI

struct HeaderComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(Color.secondary)
                .opacity(0.2)
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }//: VSTACK
    }
}

#Preview {
    HeaderComponent()
        .previewLayout(.fixed(width: 376, height: 128))
}
