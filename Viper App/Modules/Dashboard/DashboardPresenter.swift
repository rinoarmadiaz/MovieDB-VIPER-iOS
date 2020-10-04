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
    
    init(wireframe: DashboardWireframeInterface, view: DashboardViewInterface, interactor: DashboardInteractorInterface) {
        _view = view
        _wireframe = wireframe
        _interactor = interactor
    }
}

extension DashboardPresenter: DashboardPresenterInterface {
    func didPressNavigateToMovieDetail(_ movieDetail: String) {
        _wireframe.navigate(to: .movieDetail(movieDetail))
    }
    
    func viewDidLoad() {
        
    }
}
