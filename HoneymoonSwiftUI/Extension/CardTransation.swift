//
//  CardTransation.swift
//  HoneymoonSwiftUI
//
//  Created by Rustam Keneev on 20/4/24.
//

import SwiftUI

extension AnyTransition {
    static var trailingBottom: AnyTransition{
        AnyTransition.asymmetric(insertion: identity,
                                 removal: AnyTransition.move(edge: .trailing)
            .combined(with: .move(edge: .bottom)))
    }
    static var leadingBottom: AnyTransition{
        AnyTransition.asymmetric(insertion: identity,
                                 removal: AnyTransition.move(edge: .leading)
            .combined(with: .move(edge: .bottom)))
    }
}
