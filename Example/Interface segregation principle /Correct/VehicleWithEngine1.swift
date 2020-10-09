//
//  VehicleWithEngine.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class VehicleWithEngine1: TransportationDevice1, MaintenanceEngines {
    let engine = Engine1()
    
    func startEngine() {
        engine.startEngine()
    }
    
    func startMoving() {
        // start moving
    }
    
    /* Implement MaintenanceEngines Interfaces | IDE will throw an error if we didn't implement the functions that inside interface we've use */
    func changeEngines() {
        // change engines
    }
}


protocol MaintenanceEngines {
    func changeEngines()
}
