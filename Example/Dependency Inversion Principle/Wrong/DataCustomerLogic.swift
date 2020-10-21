//
//  DataCustomerLogic.swift
//  Viper App Wrong Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class DataCustomerLogic {
    init() {
        /* Instantiate dataAccess with DataAccessFactory.getDataAccessObject */
        let dataAccess = DataAccessFactory.getDataAccessObject()

        /* Call dataAccess.getCustomerName function */
        _ = dataAccess.getCustomerName(id: 1)
    }
}
