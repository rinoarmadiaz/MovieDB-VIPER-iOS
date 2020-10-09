//
//  Vehicle.swift
//  Viper App Wrong Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class Car1: TransportationDevice1 {
    override func changeEngine() {
        // changeEngine (looks OK!)
        super.changeEngine()
    }
}

class Bicycle1: TransportationDevice1 {
    override func changeEngine() { /* Wrong ... */
        // Now it's a problem!
        // Yes, a bicycle is a transportation device, however, it does not have an engine and hence, the interface changeEngine cannot be implemented.
        super.changeEngine()
    }
}
