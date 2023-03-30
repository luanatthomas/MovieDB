//
//  MovieRowView.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import SwiftUI

struct MovieRowView: View {
    var movie: Movie
    
    var body: some View {
        
        HStack (spacing: 15) {
            movie.image
                .resizable()
                .frame(width: 100)
                .cornerRadius(15)
                            
            VStack (alignment: .leading, spacing: 10) {
                Text (movie.title)
                    .font(.headline)
                    .lineLimit(1)
                Text (movie.description)
                    .font(.subheadline)
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
        .frame(height: 150)
    }
}

struct MovieRowView_Previews: PreviewProvider {
    static var movies = ModelData().movies
    static var previews: some View {
        Group {
            MovieRowView(movie: movies[0])
            MovieRowView(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
