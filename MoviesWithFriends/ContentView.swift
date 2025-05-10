//
//  ContentView.swift
//  MoviesWithFriends
//
//  Created by student on 5/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FriendList()
                .tabItem {
                    Label("Friends", systemImage: "person.and.person")
                }
            MovieList()
                .tabItem {
                    Label("Movies", systemImage: "film.stack")
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
