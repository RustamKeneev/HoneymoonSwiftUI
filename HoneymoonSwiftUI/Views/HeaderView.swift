//
//  HeaderView.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 15/4/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                //ACTION
                print("Info")
            }){
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
                    .accentColor(Color.primary) // Перенесено сюда
            }
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            Button(action: {
                //ACTION
                print("Guid")
            }){
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
                    .accentColor(Color.primary) // Перенесено сюда
            }
        }//: HSTACK
        .padding()
    }
}


#Preview {
    HeaderView()
        .previewLayout(.fixed(width: 376, height: 80))
}
