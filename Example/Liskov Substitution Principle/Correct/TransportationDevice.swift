//
//  TransportationDevice.swift
//  Viper App
//
//  Created by Rino Armadiaz on 09/10/20.
//

class TransportationDevice {
    var name: String
    var speed: Double
    
    init(name: String, speed: Double) {
        self.name = name
        self.speed = speed
    }
    
    func getName() -> String {
        return self.name
    }
    
    func getSpeed() -> Double {
        return self.speed
    }
}
