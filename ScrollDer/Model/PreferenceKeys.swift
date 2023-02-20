//
//  PreferenceKeys.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 20.02.2023.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey{
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
