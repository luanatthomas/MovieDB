//
//  Movie.swift
//  MovieDB
//
//  Created by Luana Tais Thomas on 29/03/23.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var title: String
    var rate: String
    var description: String
    private var imageName: String
    var genres: String
    
    var image: Image {
        Image(imageName)
    }
}
