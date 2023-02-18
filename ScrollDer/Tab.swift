//
//  Tab.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 19.02.2023.
//

import SwiftUI

struct TableItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
}

var tabItems = [
    TableItem(text: "Learn now!", icon: "house"),
    TableItem(text: "Explore", icon: "magnifyingglass"),
    TableItem(text: "Notifications", icon: "bell"),
    TableItem(text: "Library", icon: "rectangle.stack"),
]
