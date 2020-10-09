//
//  DataAccessFactory.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataAccessFactory {
    static func getCustomerDataObject() -> DataAccessInterface {
        return DataAccess()
    }
}
