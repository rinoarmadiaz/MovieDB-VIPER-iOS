//
//  TransportationDevice.swift
//  Viper App
//
//  Created by Rino Armadiaz on 09/10/20.
//

class TransportationDevice {
    var engine: Engine
    var name: String
    var speed: Double
    
    init(name: String, speed: Double, engine: Engine) {
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
    
    func getEngine() -> Engine {
        return self.engine
    }
    
    func startEngine() {
        self.engine.startEngine()
    }
}
