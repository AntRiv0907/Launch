//
//  Friend.swift
//  MoviesWithFriends
//
//  Created by student on 5/10/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Roel"),
        Friend(name: "Gael"),
        Friend(name: "Michael"),
        Friend(name: "Gavin"),
        Friend(name: "Ethan"),
        Friend(name: "Daoud"),

    ]
}
