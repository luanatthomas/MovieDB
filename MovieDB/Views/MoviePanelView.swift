//
//  MoviePanelView.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import SwiftUI

struct MoviePanelView: View {
    var movie: Movie

    var body: some View {
        VStack (alignment: .leading){
            movie.image
                .resizable()
                .cornerRadius(15)
                .frame(height: 200)
            
            Text(movie.title)
                .font(.headline)
                .lineLimit(1)
                        
            HStack {
                Image(systemName: "star")
                    .foregroundColor(.gray)
                Text(movie.rate)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .frame(width: 130)
    }
}

struct MoviePanelView_Previews: PreviewProvider {
    static var movies = ModelData().movies
    static var previews: some View {
        Group {
            MoviePanelView(movie: movies[0])
            MoviePanelView(movie: movies[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
