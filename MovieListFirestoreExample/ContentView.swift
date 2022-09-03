//
//  ContentView.swift
//  MovieListFirestoreExample
//
//  Created by Tom Huynh on 9/3/22.
//

import SwiftUI

struct ContentView: View {
    @State private var movie:String = ""
    
    // our movie view model object
    @StateObject private var movieViewModel = MovieViewModel()

    var body: some View {
        VStack{
            // input field for a movie name
            TextField("Enter a movie name...", text: $movie)
                .padding()
                .border(Color.black)
                .frame(width: 230, height: 40, alignment: .leading)

            // button to add a movie
            Button {
                self.movieViewModel.addNewMovieData(name: movie)
            } label: {
                Text("Add Movies")
                .padding()
                .foregroundColor(.white)
                .background(Color.black)
            }
            
            // List of all movies name fetched from firestore
            NavigationView {
                List(movieViewModel.movies) { movie in
                    VStack(alignment: .leading) {
                        Text(movie.name ?? "")
                    }
                }.onAppear() {
                    self.movieViewModel.getAllMovieData()
                    print(movieViewModel.movies)
                }.navigationTitle("All Movies")
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
