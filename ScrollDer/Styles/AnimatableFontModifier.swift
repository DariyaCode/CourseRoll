//
//  AnimatableFontModifier.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 20.02.2023.
//

import SwiftUI

struct AnimatableFontModifier: AnimatableModifier{
    var size: Double
    var weight: Font.Weight = .regular
    var design: Font.Design = .default
    
    var animatableData: Double{
        get {size}
        set {size = newValue}
        
        
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: design))
    }
}

extension View{
    func animatableFont(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default) -> some View{
        self.modifier(AnimatableFontModifier(size: size, weight: weight, design: design))
    }
}
