//
//  MovieDetailView.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import SwiftUI

struct MovieDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var movie: Movie
    var movieIndex: Int {
        modelData.movies.firstIndex(where: { $0.id == movie.id})!
    }
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 15){
                HStack (alignment: .bottom, spacing:16){
                    movie.image
                        .resizable()
                        .frame(width: 150)
                        .cornerRadius(15)
                    
                    VStack (alignment: .leading, spacing: 8) {
                        Text (movie.title)
                            .font(.title2)
                            .bold()
                        Text (movie.genres)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                        HStack {
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                            Text(movie.rate)
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .frame(height: 230)
                
                Text("Overview")
                    .font(.headline)
                
                Text(movie.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
        }
        .navigationTitle(movie.title)
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.light, for: .navigationBar)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        MovieDetailView(movie: modelData.movies[0])
            .environmentObject(modelData)
    }
}



