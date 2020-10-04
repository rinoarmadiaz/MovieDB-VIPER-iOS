//
//  MovieDetailViewController.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import UIKit

final class MovieDetailViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scheduleLabel: UILabel!
    @IBOutlet weak var movieLanguageLabel: UILabel!
    @IBOutlet weak var averageRatingLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private let _mainURL = "https://image.tmdb.org/t/p/w500"
    var presenter: MovieDetailPresenterInterface!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        // Make the navigation bar background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        guard let result = presenter.result else { return }
        imageView.imageFromServerURL(_mainURL + result.backdropPath)
        imageView.contentMode = .scaleAspectFill
        scheduleLabel.text = result.releaseDate
        movieLanguageLabel.text = result.originalLanguage.uppercased()
        averageRatingLabel.text = String(result.voteAverage)
        titleLabel.text = result.title
        descriptionLabel.text = result.overview
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Restore the navigation bar to default
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
    }
}

extension MovieDetailViewController: MovieDetailViewInterface {
    func reloadView() {
        
    }
}
