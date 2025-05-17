//
//  MoviesWithFriendsApp.swift
//  MoviesWithFriends
//
//  Created by student on 5/10/25.
//

import SwiftUI

@main
struct MoviesWithFriendsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Movie.self, Friend.self])
    }
}
