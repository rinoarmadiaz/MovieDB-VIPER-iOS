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
    
    var result: Result?
    
    init(wireframe: MovieDetailWireframeInterface, view: MovieDetailViewInterface, interactor: MovieDetailInteractorInterface, _ result: Result) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
        self.result = result
    }
    
}

extension MovieDetailPresenter: MovieDetailPresenterInterface {
    func viewDidLoad() {
        
    }
}
