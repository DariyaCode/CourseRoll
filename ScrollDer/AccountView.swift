//
//  AccountView.swift
//  ScrollDer
//
//  Created by Dariya Gecher on 16.02.2023.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    
    var body: some View {
        NavigationView {
            List{
                VStack(spacing: 8) {
                    Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(Image(systemName: "hexagon")
                            .symbolVariant(.fill)
                            .foregroundStyle(.blue)
                            .font(.system(size: 200))
                            .offset(x: -50, y: -100)
                    )
                    Text("Dariya Gecher")
                        .font(.title.weight(.semibold))
                    HStack {
                        Image(systemName: "location")
                            .foregroundColor(.secondary)
                        Text("Kazakhstan")
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                Section {
                    NavigationLink(destination: ContentView()) {
                        Label("Settings", systemImage: "gear")
                    }
                    NavigationLink { ContentView() } label: {
                        Label("Pricing", systemImage: "creditcard")
                    }
                    NavigationLink { ContentView() } label: {
                        Label("Help", systemImage: "questionmark")
                    }
                }
                .foregroundColor(.primary)
                .listRowSeparator(.hidden)
                
                
                Section {
                    if !isDeleted {
                        Link(destination: URL(string: "https://github.com/DariyaCode/CourseRoll")!) {
                            HStack {
                                Label("Website", systemImage: "house")
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.secondary)
                            }
                        }
                        .swipeActions(edge: .leading) {
                            Button(action: {isDeleted = true})
                            {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                            Button {} label: {
                                Label("Pin", systemImage: "pin")
                            }
                            .tint(.yellow)
                    }
                    }
                    Link(destination: URL(string: "https://youtube.com")!) {
                        HStack {
                            Label("Youtube", systemImage: "tv")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .foregroundColor(.primary)
                .listRowSeparator(.hidden)

                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
