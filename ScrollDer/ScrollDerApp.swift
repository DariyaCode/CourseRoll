//
//  ScrollDerApp.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 15.02.2023.
//

import SwiftUI

@main
struct ScrollDerApp: App {
    @StateObject var model = Model()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
