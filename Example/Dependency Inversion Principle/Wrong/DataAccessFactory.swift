//
//  DataAccessFactory.swift
//  Viper App Wrong Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

public class DataAccessFactory {
    /*
     Create static function that returns DataAccess class
     (PROBLEM: we're returning concrete class (DataAccess) which violates our Dependency Inversion principle (DIP))
     */
    static func getDataAccessObject() -> DataAccess {
        return DataAccess()
    }
}
