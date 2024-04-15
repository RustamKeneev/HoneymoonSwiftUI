//
//  GuideComponent.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 15/4/24.
//

import SwiftUI

struct GuideComponent: View {
    //MARK: - PROPERTIES
    var title: String
    var subTitle: String
    var description: String
    var icon: String

    var body: some View {
        HStack(alignment: .center, spacing: 20 ) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            VStack(alignment: .leading, spacing: 4){
                HStack{
                    Text(title.uppercased())
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(subTitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.pink)
                }
                Divider()
                    .padding(.bottom, 4)
                Text(description)
                    .font(.footnote)
                    .foregroundColor(Color.secondary)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            }
        }//: HSTACK
    }
}

#Preview {
    GuideComponent(
        title: "Title",
        subTitle: "Swipe right",
        description: "This is a placeholder sentence",
        icon: "heart.circle")
        .previewLayout(.sizeThatFits)
}
