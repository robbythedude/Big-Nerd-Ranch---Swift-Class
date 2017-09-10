//
//  Vampire.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

class Vampire : Monster {

    static var vampireCollection : [Vampire] = []
    
    override func terrorizeTown() {
        var decreaseBy: Int = 0
        
        if let town = town {
            if town.population != 0{
                decreaseBy = 1
                let newVampire : Vampire = Vampire()
                Vampire.vampireCollection.append(newVampire)
            }
        }
        
        town?.changePopulation(by: -decreaseBy)
        
        super.terrorizeTown()
    }
    
    static func printHowManyVampires(){
        print("There are \(vampireCollection.count) vampire(s)")
    }

}
