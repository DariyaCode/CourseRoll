//
//  HomeView.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 19.02.2023.
//

import SwiftUI

struct HomeView: View {
    @State var hasScrolled = false
    
    var body: some View {
        ScrollView {
            GeometryReader{ proxy in
                Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
            }
            .frame(height: 0)
            
            TabView {
                ForEach(courses) { item in
                    FeaturedItem(course: item)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(height: 430)
            .background(Image("Blob 1").offset(x: 250, y: -100))
            
            Color.clear.frame(height: 1000)
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
            
            withAnimation(.easeInOut) {
                if value < 0{
                    hasScrolled = true
                } else{
                    hasScrolled = false
                }
            }
        })
        .safeAreaInset(edge: .top, content: {
            Color.clear.frame(height: 70)
        })
        .overlay(
            NavigationBar(title: "Home", hasScrolled: $hasScrolled)
                
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
