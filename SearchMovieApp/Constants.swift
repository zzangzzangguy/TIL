//
//  Constants.swift
//  SearchMovieApp
//
//  Created by t2023-m0096 on 2023/08/16.
//

import Foundation

struct Constants {
    static let headers = [
        "accept": "application/json",
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNzAyMjNiZGEwYmE0YTViNzdlNGRhMjFhNzY0OWExYiIsInN1YiI6IjYzZGM2YTk3Y2QyMDQ2MDA3OTZmZjk2MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.dy2M_Mm7WKgzf0IW0faRoIkFZfQTjm3rltEA76BZEVE"
        ]
    static let baseURL = "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1"
    
    private init() {}
}
