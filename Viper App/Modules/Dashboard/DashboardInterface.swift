//
//  DashboardInterface.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import Foundation

enum DashboardNavigationOption {
    case movieDetail(_ result: Result)
}

protocol DashboardWireframeInterface: WireframeInterface {
    func navigate(to option: DashboardNavigationOption)
}

protocol DashboardPresenterInterface: PresenterInterface {
    func didPressNavigateToMovieDetail(_ movieDetail: Result)
    var movieList: MovieList? { get }
}

protocol DashboardViewInterface: ViewInterface {
    func reloadView()
}

protocol DashboardInteractorInterface: InteractorInterface {
    func fetchFilms(completionHandler: @escaping (MovieList) -> Void)
}
