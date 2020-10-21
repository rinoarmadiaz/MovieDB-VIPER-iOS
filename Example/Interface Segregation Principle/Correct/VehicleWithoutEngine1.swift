//
//  VehicleWithoutEngine.swift
//  Viper App
//
//  Created by Rino Armadiaz on 09/10/20.
//

class VehicleWithoutEngine1: TransportationDevice, MaintenanceParts {
    func startMoving() {
        // Move the vehicle
    }

    /*
     Implement MaintenanceParts Interfaces
     (NOTE: IDE will throw an error if we didn't implement the functions that inside interface we've use)
     */
    func changeSparepart() {
        // Changing parts
    }
}

protocol MaintenanceParts {
    func changeSparepart()
}
