//
//  Zombie.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

class Zombie : Monster {

    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String){
        self.walksWithLimp = limp
        self.isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    convenience init?(limp: Bool, fallingApart: Bool){
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombies has a bad knee")
        }
    }
    
    convenience required init?(town: Town?, monsterName: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
    }
    
    deinit {
        print("RIP \(self.name) the Zombie")
    }
    
    override class var spookyNoise: String {
        return "Brains..."
    }
    
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
