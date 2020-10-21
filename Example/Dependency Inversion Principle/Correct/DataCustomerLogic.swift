//
//  DataCustomerLogic.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataCustomerLogic {
    /* Declare dataAccess Interface */
    let dataAccess: DataAccessInterface
    
    init() {
        /* Initialize dataAccess interface with DataAccessFactory */
        dataAccess = DataAccessFactory.getCustomerDataObject()
        
        /* Call dataAccess.getCustomerName function */
        _ = dataAccess.getCustomerName(id: 1)
    }
}
