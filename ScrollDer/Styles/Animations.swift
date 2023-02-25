//
//  Animations.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 25.02.2023.
//

import SwiftUI

extension Animation{
    static let openCard = Animation.spring(response: 0.5, dampingFraction: 0.7)
    static let closeCard = Animation.spring(response: 0.6, dampingFraction: 0.9)
}
