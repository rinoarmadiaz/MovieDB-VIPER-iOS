//
//  BoilerplateWireframe.swift
//  Viper App
//
//  Created by Rino Armadiaz on 21/10/20.
//

/// The Wireframe for Boilerplate module
final class BoilerplateWireframe: BaseWireframe {
    /**
     Initialize Wireframe for Boilerplate module, including: ViewController, Interactor & Presenter
     */
    init() {
        let moduleViewController = BoilerplateViewController(nibName: "BoilerplateViewController", bundle: nil)
        super.init(viewController: moduleViewController)
        let interactor = BoilerplateInteractor()
        let presenter = BoilerplatePresenter(view: moduleViewController, wireframe: self, interactor: interactor)
        moduleViewController.presenter = presenter
    }
}

// MARK: - Boilerplate Wireframe Extensions
/// Extend BoilerplateWireframe from BoilerplateWireframeInterface
extension BoilerplateWireframe: BoilerplateWireframeInterface { }
