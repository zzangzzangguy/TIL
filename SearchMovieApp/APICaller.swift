////
////  APICaller.swift
////  SearchMovieApp
////
////  Created by t2023-m0096 on 2023/08/14.
////
//
//import Foundation
//
//struct APICaller {
//
//    static func fetchMovies(completion: @escaping
//                            (Result<[Movie], Error>) -> Void)
//    {
//        let headers = [
//            "accept": "application/json"
////            "Authorization": "Bearer d70223bda0ba4a5b77e4da21a7649a1b"
//        ]
//        let urlString = "https://api.themoviedb.org/3/movie/popular?api_key=d70223bda0ba4a5b77e4da21a7649a1b?language=en-US&page=1"
//        guard let url = URL(string: urlString) else {
//            fatalError("Invalid URL")
//        }
////
////        let request = NSMutableURLRequest(url: NSURL(string: "https://api.themoviedb.org/3/movie/popular?language=en-US&page=1")! as URL,
////                                          cachePolicy: .useProtocolCachePolicy,
////                                          timeoutInterval: 10.0)
//                var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = headers
//
//
//        let session = URLSession.shared
//        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//            if (error != nil) {
//                print("Oops")
//            } else {
//                let httpResponse = response as? HTTPURLResponse
//                print(httpResponse)
//            }
//        })
//
//
//        //        DispatchQueue.main.async {
//        //            let titles = MovieManager?.results.map{$0.title}
//        //            let average = MovieManager?.results.map{$0.voteAverage}
//        //            let posterPath = MovieManager?.results.map{$0.posterPath}
//        //            completion(titles, average, posterPath)
//        //
//        //
//        //        }
//        let endpoint = "/movie/popular"
//        //        let urlString = "\(request)\(endpoint)?token=\(headers)"
//
//        if let url = URL(string: urlString) {
//            let task = URLSession.shared.dataTask(with: url) { data, response, error in
//                if let error = error {
//                    completion(.failure(error))
//                    return
//                }
//                print(String(data: data!, encoding: .utf8))
//                if let data = data {
//                    do {
//                        let movieResponse = try JSONDecoder().decode(MovieManager.self, from: data)
//                        let movies = movieResponse.results
//                        completion(.success(movies))
//                    } catch {
//                        completion(.failure(error))
//                    }
//                }
//            }
//
//            task.resume()
//        }
//    }
//}
