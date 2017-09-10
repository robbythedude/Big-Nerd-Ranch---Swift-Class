//
//  Town.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

struct Town {

    
    init(region: String, population: Int, stopLights: Int){
        self.region = region
        self.population = population
        self.numberOfStopLights = stopLights
    }
    
    init?(population: Int){
        guard population > 0 else {
            return nil
        }
        
        self.init(region: "N/A", population: population, stopLights: 0)
    }
    
    init(population: Int, stopLights: Int){
        self.init(region: "N/A", population: population, stopLights: stopLights)
    }
    
    let region: String
    var population: Int {
        didSet(oldPopulation){
            if population < oldPopulation{
                print("The population has changed to \(population) from \(oldPopulation)")
                townMayor?.printMessage()
                townMayor?.incAnxiety()
            }
        }
    }
    var numberOfStopLights: Int
    var townMayor : Mayor?
    
    enum Size {
        case small
        case medium
        case large
    }
    
    var townSize: Size {
        get{
            switch self.population{
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    func printDescription(){
        print("Population: \(population) \t Number of Stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
