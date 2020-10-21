//
//  BoilerplatePresenter.swift
//  Viper App
//
//  Created by Rino Armadiaz on 21/10/20.
//

/// The Presenter for Boilerplate module
final class BoilerplatePresenter {
    /// The holder for Boilerplate's module wireframe
    private let _wireframe: BoilerplateWireframeInterface
    /// The holder for Boilerplate's module view
    private let _view: BoilerplateViewInterface
    /// The holder for Boilerplate's module interactor
    private let _interactor: BoilerplateInteractorInterface
    
    /**
     Initialize Presenter with provided wireframe, view & interactor
     - Parameters:
        - view: Boilerplate ViewController
        - wireframe: Boilerplate Wireframe
        - interactor : Boilerplate Interactor
     */
    init(view: BoilerplateViewInterface, wireframe: BoilerplateWireframeInterface, interactor: BoilerplateInteractorInterface) {
        self._wireframe = wireframe
        self._view = view
        self._interactor = interactor
    }
}

// MARK: - Boilerplate Presenter Extensions
/// Extend BoilerplatePresenter from BoilerplatePresenterInterface
extension BoilerplatePresenter: BoilerplatePresenterInterface { }
