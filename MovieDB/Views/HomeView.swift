//
//  HomeView.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import SwiftUI

struct HomeView: View {
    var movies: [Movie] = ModelData().movies
    @State private var query: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    NowPlayingList()
                    Divider()
                    PopularMoviesList()
                }
            }
            .navigationTitle("MovieDB")
            .toolbarBackground(.visible, for: .navigationBar)
        }
        .searchable(text: $query)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
