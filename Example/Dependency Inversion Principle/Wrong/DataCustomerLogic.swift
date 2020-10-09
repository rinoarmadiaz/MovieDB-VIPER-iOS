//
//  DataCustomerLogic.swift
//  Viper App Wrong Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataCustomerLogic {
    private func _getCustomerName(id: Int) -> String {
        let dataAccess = DataAccessFactory.getDataAccessObject()
        return dataAccess.getCustomerName(id: 1)
    }
}
