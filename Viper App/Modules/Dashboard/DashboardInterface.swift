//
//  DashboardInterface.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import Foundation

enum DashboardNavigationOption {
    case movieDetail(_ movieID: String)
}

protocol DashboardWireframeInterface: WireframeInterface {
    func navigate(to option: DashboardNavigationOption)
}

protocol DashboardPresenterInterface: PresenterInterface {
    func didPressNavigateToMovieDetail(_ movieDetail: String)
}

protocol DashboardViewInterface: ViewInterface {
    
}

protocol DashboardInteractorInterface: InteractorInterface {
    
}
