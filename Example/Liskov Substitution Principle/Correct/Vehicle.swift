//
//  Vehicle.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class bicycle: VehicleWithoutEngine {
    /*
     (CORRECT: now bicycle only have startMoving functions, it cannot call startEngine)
     */
    override func startMoving() {
        // move vehicle
        _ = getSpeed()
        _ = getName()
    }
}

class car: VehicleWithEngine {
    override func startEngine() {
        // start engine
    }

    override func startMoving() {
        // start moving
    }
}
