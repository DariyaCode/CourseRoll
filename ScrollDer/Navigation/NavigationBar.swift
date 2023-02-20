//
//  NavigationBar.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 20.02.2023.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
            ZStack{
                Color.clear
                    .background(.ultraThinMaterial)
                    .blur(radius: 10)
                
                Text("Featured")
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
            }
                .frame(height: 70)
                .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
