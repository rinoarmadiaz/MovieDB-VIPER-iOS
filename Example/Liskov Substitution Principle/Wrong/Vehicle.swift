//
//  Vehicle.swift
//  Viper App Wrong Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class Car: TransportationDevice {
    override func startEngine() {
        // start engine (looks OK!)
    }
}

class Bicycle: TransportationDevice {
    override func startEngine() { /* Wrong ... */
        /*
         (PROBLEM a bicycle is a transportation device, however, it does not have an engine and hence, the method startEngine() cannot be implemented.)
         */
    }
}
