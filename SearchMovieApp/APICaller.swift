//
//  APICaller.swift
//  SearchMovieApp
//
//  Created by t2023-m0096 on 2023/08/14.
//

import Foundation

struct APICaller {
    
    static func fetchMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        let endpoint = "/movie/popular"
        let urlString = "\(Constants.baseURL)\(endpoint)?token=\(Constants.headers)"

        if let url = URL(string: urlString) {
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let error = error {
                    completion(.failure(error))
                    return
                }
                print(String(data: data!, encoding: .utf8))
                if let data = data {
                    do {
                        let movieResponse = try JSONDecoder().decode(MovieManager.self, from: data)
                        let movies = movieResponse.results
                        completion(.success(movies))
                    } catch {
                        completion(.failure(error))
                    }
                }
            }

            task.resume()
        }
    }
}
