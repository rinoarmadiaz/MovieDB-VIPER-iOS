//
//  File.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//


final class MovieDetailWireframe: BaseWireframe {
    init(_ movieID: String) {
        let moduleViewController = MovieDetailViewController(nibName: "MovieDetailViewController", bundle: nil)
        super.init(viewController: moduleViewController)
        let interactor = MovieDetailInteractor()
        let presenter = MovieDetailPresenter(wireframe: self, view: moduleViewController, interactor: interactor, movieID: movieID)
        moduleViewController.presenter = presenter
    }
}

extension MovieDetailWireframe: MovieDetailWireframeInterface {

}
