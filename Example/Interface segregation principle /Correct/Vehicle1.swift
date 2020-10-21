//
//  Vehicle.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class bicycle1: VehicleWithoutEngine1 {
    override func startMoving() {
        // move vehicle
        _ = getSpeed()
        _ = getName()
    }
    
    override func changeSparepart() { /* CORRECT: class bicycle1 now can access changeSparepart interface */
        super.changeSparepart()
    }
}

class car1: VehicleWithEngine1 {
    override func startEngine() {
        // start engine
    }

    override func startMoving() {
        // start moving
    }
    
    override func changeEngines() { /* CORRECT: class Car1 now can access changeEngines interface */
        super.changeEngines()
    }
}
