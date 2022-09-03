//
//  MovieListFirestoreExampleApp.swift
//  MovieListFirestoreExample
//
//  Created by Tom Huynh on 9/3/22.
//

import SwiftUI
import Firebase

@main
struct MovieListFirestoreExampleApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
