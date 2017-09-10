//
//  Monster.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

class Monster {

    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool){
            town?.population = newVictimPool
        }
    }
    
    static let isTerrifying = true
    
    class var spookyNoise: String {
        return "Grrr..."
    }
    
    func terrorizeTown(){
        if town != nil {
            print("\(name) is terrorizing town!")
        }else{
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }

}
