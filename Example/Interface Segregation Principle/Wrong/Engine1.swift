//
//  Engine.swift
//  Viper App
//
//  Created by Rino Armadiaz on 09/10/20.
//

class Engine1 {
    var engine: Engine1

    init(engine: Engine1) {
        self.engine = engine
    }

    func getEngine() -> Engine1 {
        return engine
    }
    
    func startEngine() {
        // Do something
    }
}
