//
//  MovieViewModel.swift
//  MovieListFirestoreExample
//
//  Created by Tom Huynh on 9/3/22.
//

import Foundation
import FirebaseFirestore

class MovieViewModel: ObservableObject {
    @Published var movies = [Movie]()

    private var db = Firestore.firestore()
    
    func getAllMovieData() {
        db.collection("movies").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }

            self.movies = documents.map { (queryDocumentSnapshot) -> Movie in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                return Movie(name: name)
            }
        }
    }

    func addNewMovieData(name: String) {
        db.collection("movies").addDocument(data: ["name": name])
    }

}
