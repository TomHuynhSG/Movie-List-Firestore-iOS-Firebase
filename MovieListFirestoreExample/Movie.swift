//
//  Movie.swift
//  MovieListFirestoreExample
//
//  Created by Tom Huynh on 9/3/22.
//

import Foundation

struct Movie: Codable, Identifiable {
    var id: String = UUID().uuidString
    var name: String?
}
