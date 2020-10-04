//
//  MovieCell.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var imageItemView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    private let _mainURL = "https://image.tmdb.org/t/p/w500"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func setupView(_ data: Result) {
        titleLabel.text = data.title
        subtitleLabel.text = data.overview
        imageItemView.imageFromServerURL(_mainURL + data.posterPath)
        imageItemView.contentMode = .scaleAspectFill
    }
}
