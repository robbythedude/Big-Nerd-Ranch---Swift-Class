//
//  Zombie.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

class Zombie : Monster {

    var walksWithLimp = true
    
    final override func terrorizeTown() {
        
        var decreaseBy: Int = 0
        
        if let town = town {
            if town.population < 10{
                decreaseBy = town.population
            }else{
                decreaseBy = 10
            }
        }
        
        town?.changePopulation(by: -decreaseBy)
        
        super.terrorizeTown()
    }
    
}
