//
//  Styles.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 16.02.2023.
//

import SwiftUI

struct StrokeStyle: ViewModifier{
    var cornerRadius: CGFloat
    func body(content: Content) -> some View {
        content.overlay(
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous).stroke(LinearGradient(colors: [.white.opacity(0.3), .black.opacity(0.1)], startPoint: .top, endPoint: .bottom)
                .blendMode(.overlay))
        )
    }
}
    
extension View{
    func strokeStyle(cornerRadius: CGFloat = 30) -> some View {
        modifier(StrokeStyle(cornerRadius: cornerRadius))
    }
}
