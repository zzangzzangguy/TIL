//
//  ViewController.swift
//  SearchMovieApp
//
//  Created by t2023-m0096 on 2023/08/14.
//

//데이터 뿌려주기 

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var MainView: UICollectionView!
    
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        MainView.dataSource = self
        MainView.delegate = self
        //        ShowMovie()
        //    }
        //
        //    func ShowMovie() {
        APIcaller.shared.getTrendingMovies(completion: { [weak self] result in
            switch result {
            case .success(let movies):
                self?.movies = movies
                DispatchQueue.main.async {
                    self?.MainView.reloadData()
                }
            case .failure(let error):
                print("Error fetching movies: \(error)")
            }
        })
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
        //        cell.rating.text = movie.voteAverage
        
        if let url = URL(string: "https://image.tmdb.org/t/p/w500/\(movie.posterPath)") {
            DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    cell.thumbnail.image = UIImage(data: data)
                    // 수정 -> 이유
                    
                }
            }
        }
    }
            
            
            return cell
        }
        
    }
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width / 3 - 15
        let height = width * 1.5
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10 // 셀 세로간격 설정
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat { // 셀 가로간격 설정
        return 10
    }
}
    
    extension ViewController: UICollectionViewDelegate {
    }
