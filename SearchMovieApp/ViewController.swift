//
//  ViewController.swift
//  SearchMovieApp
//
//  Created by t2023-m0096 on 2023/08/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MainView: UICollectionView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainView.dataSource = self
        
        APICaller.fetchMovies { result in
            switch result {
            case .success(let movies):
                self.movies = movies
                DispatchQueue.main.async {
                    self.MainView.reloadData()
                }
            case .failure(let error):
                print("Error fetching movies: \(error)")
            }
        }
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GirdCell", for: indexPath) as? GirdCell else {
            return UICollectionViewCell()
        }
        
        let movie = movies[indexPath.row]
        
        
        cell.title.text = movie.title
        // Set the poster image using movie.posterPath and URLSession
        
        return cell
    }
}
