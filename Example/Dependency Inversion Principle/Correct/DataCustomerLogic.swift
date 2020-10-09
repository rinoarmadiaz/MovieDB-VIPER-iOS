//
//  DataCustomerLogic.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataCustomerLogic {
    let dataAccess: DataAccessInterface
    init() {
        dataAccess = DataAccessFactory.getCustomerDataObject()
    }
    
    private func _getCustomerName(id: Int) -> String {
        dataAccess.getCustomerName(id: id)
    }
}
