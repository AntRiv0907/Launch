//
//  MovieList.swift
//  MoviesWithFriends
//
//  Created by student on 5/10/25.
//

import SwiftUI
import SwiftData

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies: [Movie]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(movies) { movie in
                    NavigationLink(movie.title) {
                        MovieDetail(movie: movie)
                    }
                }
                .onDelete(perform: deleteMovies(indexes:))
            }
            .navigationTitle("Movies")
            .toolbar {
                ToolbarItem {
                    Button("Add Movie", systemImage: "plus", action: addMovie)
                }
                ToolbarItem {
                    EditButton()
                }
            }
        } detail: {
            Text("Select a movie")
                .navigationTitle(Text("Movies"))
                .navigationBarTitleDisplayMode(.inline)
        }
    }
    private func addMovie() {
        context.insert(Movie(title: "New Movie", releaseDate: .now))
    }
    
    private func deleteMovies(indexes: IndexSet) {
        
    }
}

#Preview {
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
