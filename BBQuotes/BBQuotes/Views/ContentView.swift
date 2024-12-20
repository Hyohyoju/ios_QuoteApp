//
//  ContentView.swift
//  BBQuotes
//
//  Created by 이효주 on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuoteView(show: Constants.bbName)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label(Constants.bbName, systemImage: "tortoise")
                }
            
            QuoteView(show: Constants.bcsName)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label(Constants.bcsName, systemImage: "briefcase")
                }
            
            QuoteView(show: Constants.ecName)
                .toolbarBackground(.visible, for: .tabBar)
                .tabItem {
                    Label(Constants.ecName, systemImage: "car")
                }

        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
