//
//  DashboardWireframe.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//
import UIKit

final class DashboardWireframe: BaseWireframe {
    // MARK: - Module setup -
    init() {
        let moduleViewController = DashboardViewController(nibName: "DashboardViewController", bundle: nil)
        super.init(viewController: moduleViewController)
        let interactor = DashboardInteractor()
        let presenter = DashboardPresenter(wireframe: self, view: moduleViewController, interactor: interactor)
        moduleViewController.presenter = presenter
    }
    
    private func _navigateToMovieDetail(_ movieID: String) {
        navigationController?.pushWireframe(MovieDetailWireframe(movieID))
    }
}

// MARK: - Extensions -
extension DashboardWireframe: DashboardWireframeInterface {
    func navigate(to option: DashboardNavigationOption) {
        switch option {
        case .movieDetail(let movieID):
            _navigateToMovieDetail(movieID)
        }
    }
}
