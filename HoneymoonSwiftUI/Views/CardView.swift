//
//  CardView.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 14/4/24.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    let id = UUID()
    var honeymoon: Destination
    //MARK: - BODY
    var body: some View {
        Image(honeymoon.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12){
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(Color.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 86)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(
                            Capsule()
                                .fill(Color.white)
                        )
                }//: VSTACK
                    .frame(minWidth: 280)
                    .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

//MARK: - PREVIEWS
#Preview {
    CardView(honeymoon: honeymoonData[1])
        .previewLayout(.fixed(width: 376, height: 600))
}
