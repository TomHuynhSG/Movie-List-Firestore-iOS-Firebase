//
//  Movie.swift
//  MovieListFirestoreExample
//
//  Created by Tom Huynh on 04/09/2023.
//

import Foundation

struct Movie: Codable, Identifiable {
    var id: String = UUID().uuidString
    var name: String?
    var documentID: String?
}
