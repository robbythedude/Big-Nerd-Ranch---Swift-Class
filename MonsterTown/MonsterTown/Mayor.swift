//
//  Mayor.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

struct Mayor {
    
    private var anxietyLevel : Int = 0
    
    func printMessage(){
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
    
    mutating func incAnxiety(){
        anxietyLevel += 1
    }

}
