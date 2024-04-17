//
//  ContentView.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 14/4/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    //MARK: - CARD VIEWS
    var cardViews: [CardView] = {
        var views = [CardView]()
        for index in 0..<2 {
            views.append(CardView(honeymoon: honeymoonData[index]))
        }
        return views
    }()
    
    //MARK: - TOP CARD
    private func isTopCard(cardView: CardView)-> Bool{
        guard let index = cardViews.firstIndex(where: { $0.id == cardView.id }) else {return false}
        return index == 0
    }


    var body: some View {
        VStack {
            //MARK: - HEADER
            HeaderView(showGuedeView: $showGuide, showInfoView: $showInfo)
            Spacer()
            
            //MARK: - CARDS
            ZStack{
                ForEach(cardViews){ cardView in
                    cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1:0)
                }//: LOOP
            }//: ZSTACK
            .padding(.horizontal)
            
            Spacer()
            
            //MARK: - FOOTER
            FooterView(showBookingAlert: $showAlert)
        }//:VSTACK
        .alert(isPresented: $showAlert){
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
                dismissButton: .default(Text("Happy Honeymoon"))
            )
        }
    }
}

#Preview {
    ContentView()
}
