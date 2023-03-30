//
//  PlayingNowList.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import SwiftUI

struct NowPlayingList: View {
    @EnvironmentObject var modelData: ModelData
    var movies: [Movie] = ModelData().movies
    
    var body: some View {
        VStack {
            HStack {
                Text("Now Playing")
                    .font(.headline)
                Spacer()
                Text("See all")
                    .font(.subheadline)
            }
            
            ScrollView (.horizontal) {
                HStack (spacing: 10) {
                    ForEach(movies){ movie in
                        NavigationLink {
                            MovieDetailView(movie: movie)
                        } label: {
                            MoviePanelView(movie: movie)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .padding()
    }
}

struct NowPlayingList_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingList()
    }
}
