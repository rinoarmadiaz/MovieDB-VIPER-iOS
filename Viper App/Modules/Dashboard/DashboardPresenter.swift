//
//  DashboardPresenter.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

final class DashboardPresenter {
    private let _wireframe: DashboardWireframeInterface
    private unowned let _view: DashboardViewInterface
    private let _interactor: DashboardInteractorInterface
    
    var movieList: MovieList? {
        didSet {
            _view.reloadView()
        }
    }
    
    init(wireframe: DashboardWireframeInterface, view: DashboardViewInterface, interactor: DashboardInteractorInterface) {
        _view = view
        _wireframe = wireframe
        _interactor = interactor
    }
}

extension DashboardPresenter: DashboardPresenterInterface {
    func didPressNavigateToMovieDetail(_ result: Result) {
        _wireframe.navigate(to: .movieDetail(result))
    }
    
    func viewDidLoad() {
        _interactor.fetchFilms { (movieList: MovieList) in
            self.movieList = movieList
        }
        self.viewWillAppear(animated: true)
    }
}
