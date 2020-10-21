//
//  BoilerplateViewController.swift
//  Viper App
//
//  Created by Rino Armadiaz on 21/10/20.
//

import UIKit

/// The ViewController for Boilerplate module
class BoilerplateViewController: UIViewController {
    /// The holder for Boilerplate's module presenter
    var presenter: BoilerplatePresenterInterface!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Boilerplate ViewController Extension
/// Extend BoilerplateViewController from BoilerplateViewInterface
extension BoilerplateViewController: BoilerplateViewInterface { }
