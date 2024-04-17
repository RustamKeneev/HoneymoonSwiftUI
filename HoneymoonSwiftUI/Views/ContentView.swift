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

    var body: some View {
        VStack {
            HeaderView(showGuedeView: $showGuide, showInfoView: $showInfo)
            Spacer()
            CardView(honeymoon: honeymoonData[1])
                .padding()
            
            Spacer()
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
