//
//  DashboardViewController.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import UIKit

final class DashboardViewController: UIViewController {
    
    var presenter: DashboardPresenterInterface!

    @IBOutlet weak var navigateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        navigateButton.addTarget(self, action: #selector(self._didPressNavigate), for: .touchUpInside)
    }
    
    @objc
    private func _didPressNavigate() {
        presenter.didPressNavigateToMovieDetail("12345678")
    }
}

extension DashboardViewController: DashboardViewInterface {
    
}
