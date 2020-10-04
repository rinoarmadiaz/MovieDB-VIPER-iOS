//
//  MovieDetailPresenter.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

final class MovieDetailPresenter {
    
    private let _wireframe: MovieDetailWireframeInterface
    private unowned let _view: MovieDetailViewInterface
    private let _interactor: MovieDetailInteractorInterface
    
    init(wireframe: MovieDetailWireframeInterface, view: MovieDetailViewInterface, interactor: MovieDetailInteractorInterface, movieID: String) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }
    
}

extension MovieDetailPresenter: MovieDetailPresenterInterface {
    func viewDidLoad() {
        
    }
}
