//
//  TransportationDevice.swift
//  Viper App
//
//  Created by Rino Armadiaz on 09/10/20.
//

class TransportationDevice1: Maintenance { /* Implement Maintenance Interface */
    var engine: Engine1
    var name: String
    var speed: Double

    init(name: String, speed: Double, engine: Engine1) {
        self.name = name
        self.speed = speed
        self.engine = engine
    }

    func getName() -> String {
        return self.name
    }

    func getSpeed() -> Double {
        return self.speed
    }

    func getEngine() -> Engine1 {
        return self.engine
    }

    func startEngine() {
        self.engine.startEngine()
    }

    /*
     Implement Maintenance Interfaces
     (NOTE: IDE will throw an error if we didn't implement the functions that inside interface we've use )
     */
    func changeSpareparts() {
        // change spareparts
    }

    func changeEngine() {
        // change engine
    }
}

protocol Maintenance {
    func changeSpareparts()
    func changeEngine()
}
