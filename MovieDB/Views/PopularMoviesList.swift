//
//  PopularMoviesList.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import SwiftUI

struct PopularMoviesList: View {
    @EnvironmentObject var modelData: ModelData

    var movies: [Movie] = ModelData().movies
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Section {
                    Text("Popular Movies")
                        .font(.headline)
                    ForEach(movies){ movie in
                        NavigationLink {
                            MovieDetailView(movie: movie)

                        } label: {
                            MovieRowView(movie: movie)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .padding()
        }
    }
}

struct PopularMoviesList_Previews: PreviewProvider {
    static var previews: some View {
        PopularMoviesList()
            .environmentObject(ModelData())
    }
}

