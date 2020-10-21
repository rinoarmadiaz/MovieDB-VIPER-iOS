//
//  DataAccess.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

// Create DataAccess class extending DataAccessInterface
class DataAccess: DataAccessInterface {
    /*
     Create function to getCutomerName
     (NOTE: IDE will force you to conform getCustomerName function
     since DataAccess class are now extending DataAccessInterface)
     */
    func getCustomerName(id: Int) -> String {
        return "Dummy Customer Name"
    }
}

/* Create Interface for calling getCustomerName function */
protocol DataAccessInterface {
    func getCustomerName(id: Int) -> String
}
