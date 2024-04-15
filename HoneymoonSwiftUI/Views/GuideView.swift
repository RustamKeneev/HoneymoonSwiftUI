//
//  GuideView.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 15/4/24.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("Get Started")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .foregroundColor(Color.pink)
                Text("Discover and pick the perfect destination for you romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 10)
                VStack(alignment: .leading, spacing: 26){
                    GuideComponent(
                        title: "Like",
                        subTitle: "Swipe right",
                        description: "Do you like this destination? Touch the screen and swipe right. It will be saved to the favourite.",
                        icon: "heart.circle")
                    GuideComponent(
                      title: "Dismiss",
                      subTitle: "Swipe left",
                      description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it.",
                      icon: "xmark.circle")
                    
                    GuideComponent(
                      title: "Book",
                      subTitle: "Tap the button",
                      description: "Our selection of honeymoon resorts is perfect setting for you to embark your new life together.",
                      icon: "checkmark.square")
                }//: VSTACK
                Spacer(minLength: 10)
                Button(action:{
                    //ACTION
                     print("A button wass tapped")
                }){
                    Text("Continue".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(
                            Capsule()
                                .fill(Color.pink)
                        )
                        .foregroundColor(Color.white)
                }
            }//:VSTACK
        }//: SCROLL
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.top, 16)
        .padding(.bottom, 26)
        .padding(.horizontal, 26)
    }
}

#Preview {
    GuideView()
}
