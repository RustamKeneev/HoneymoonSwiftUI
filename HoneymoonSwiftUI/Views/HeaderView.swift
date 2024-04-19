//
//  HeaderView.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 15/4/24.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @Binding var showGuedeView: Bool
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()


    var body: some View {
        HStack {
            Button(action: {
                //ACTION
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
                print("Info")
            }){
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
                    .accentColor(Color.primary)
            }
            .sheet(isPresented: $showInfoView){
                InfoView() 
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
                playSound(sound: "sound-click", type: "mp3")
                self.haptics.notificationOccurred(.success)
                self.showGuedeView.toggle()
            }){
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
                    .accentColor(Color.primary)
            }
            .sheet(isPresented: $showGuedeView){
                GuideView()
            }
        }//: HSTACK
        .padding()
    }
}




struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(showGuedeView: .constant(false), showInfoView: .constant(false))
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
