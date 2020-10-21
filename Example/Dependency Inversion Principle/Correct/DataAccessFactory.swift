//
//  DataAccessFactory.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataAccessFactory {
    /*
     Create getCustomerDataObject function, returning DataAccess class
     (CORRECT: We're returning an DataAccess class that inherrit DataAccessInterface)
     */
    static func getCustomerDataObject() -> DataAccessInterface {
        return DataAccess()
    }
}
