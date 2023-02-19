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
    var tab: Tab
}

var tabItems = [
    TableItem(text: "Learn now!", icon: "house", tab: .home),
    TableItem(text: "Explore", icon: "magnifyingglass", tab: .explore),
    TableItem(text: "Notifications", icon: "bell", tab: .notifications),
    TableItem(text: "Library", icon: "rectangle.stack", tab: .library),
]

enum Tab: String{
    case home
    case explore
    case notifications
    case library
}
