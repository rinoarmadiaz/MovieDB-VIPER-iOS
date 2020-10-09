//
//  DataAccess.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataAccess: DataAccessInterface {
    func getCustomerName(id: Int) -> String {
        return "Dummy Customer Name"
    }
}

protocol DataAccessInterface {
    func getCustomerName(id: Int) -> String
}
