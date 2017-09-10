//
//  Town.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

struct Town {

    var population = 0
    var numberOfStopLights = 4
    
    func printDescription(){
        print("Population: \(population) \t Number of Stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
