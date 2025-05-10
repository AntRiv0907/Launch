//
//  Movie.swift
//  MoviesWithFriends
//
//  Created by student on 5/10/25.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static let sampleData = [
        Movie(title: "Sinners",
              releaseDate: Date(timeIntervalSinceReferenceDate: 766_617_600)),
        
        Movie(title: "Interstellar",
              releaseDate: Date(timeIntervalSinceReferenceDate: 436_924_800)),
        
        Movie(title: "Fight Club",
              releaseDate: Date(timeIntervalSinceReferenceDate: 38_337_600)),
        
        Movie(title: "Avengers: Endgame",
              releaseDate: Date(timeIntervalSinceReferenceDate: 557_824_000)),
        
        Movie(title: "Where the Wild Things Are",
              releaseDate: Date(timeIntervalSinceReferenceDate: 227_586_400)),
        
        Movie(title: "Nightcrawler",
              releaseDate: Date(timeIntervalSinceReferenceDate: 436_492_800)),
    ]
}
