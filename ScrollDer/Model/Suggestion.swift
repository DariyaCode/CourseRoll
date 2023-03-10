//
//  Suggestion.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 09.03.2023.
//

import SwiftUI

struct Suggestion: Identifiable{
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]
