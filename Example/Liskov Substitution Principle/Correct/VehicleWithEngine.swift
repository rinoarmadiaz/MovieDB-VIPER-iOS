//
//  VehicleWithEngine.swift
//  Viper App Correct Example
//
//  Created by Rino Armadiaz on 09/10/20.
//

class VehicleWithEngine: TransportationDevice {
    let engine = Engine()
    func startEngine() {
        engine.startEngine()
    }
    func startMoving() {
        // start moving
    }
}
