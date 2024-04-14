//
//  ContentView.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 14/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView(honeymoon: honeymoonData[1])
        }
    }
}

#Preview {
    ContentView()
}
