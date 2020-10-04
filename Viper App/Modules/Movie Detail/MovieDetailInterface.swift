//
//  MovieDetailInterface.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

protocol MovieDetailPresenterInterface: PresenterInterface {
    var result: Result? { get }
}

protocol MovieDetailViewInterface: ViewInterface {
    func reloadView()
}

protocol MovieDetailInteractorInterface: InteractorInterface {
    
}

protocol MovieDetailWireframeInterface: WireframeInterface {
    
}
