//
//  MovieDetailViewController.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import UIKit

final class MovieDetailViewController: UIViewController {
    
    var presenter: MovieDetailPresenterInterface!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

extension MovieDetailViewController: MovieDetailViewInterface {
    
}
