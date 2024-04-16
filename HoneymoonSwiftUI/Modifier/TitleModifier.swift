//
//  TitleModifier.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 16/4/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

