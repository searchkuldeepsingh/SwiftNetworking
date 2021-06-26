//
//  ViewController.swift
//  SwiftNetworking
//
//  Created by Kuldeep on 26/06/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var overviewTextView: UITextView!
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var loadingView: UIActivityIndicatorView!

    private let dataTransferService: DataTransferService = DIContainer.shared.apiDataTransferService
    private let imageTransferService: DataTransferService = DIContainer.shared.imageDataTransferService

    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }

    func loadData() {

        let endpoint = APIEndpoints.getMovies(with: MoviesRequest(query: "Batman Begins", page: 1))
        dataTransferService.request(with: endpoint) { result in

            guard case let .success(response) = result, let movie = response.movies.first else { return }
            self.title = movie.title
            self.overviewTextView.text = movie.overview

            guard let posterPath = movie.posterPath else { return }
            self.imageTransferService.request(with: APIEndpoints.getMovieImage(path: posterPath)) { result in
                guard case let .success(imageData) = result else { return }
                self.imageView.image = UIImage(data: imageData)
            }
        }
    }

}

