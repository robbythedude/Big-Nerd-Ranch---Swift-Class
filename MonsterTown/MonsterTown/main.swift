//
//  main.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

var myTown = Town()

myTown.printDescription()
myTown.changePopulation(by: 11)
myTown.printDescription()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

let thrallTheVampure = Vampire()
thrallTheVampure.town = myTown
thrallTheVampure.terrorizeTown()
thrallTheVampure.terrorizeTown()
thrallTheVampure.town?.printDescription()
Vampire.printHowManyVampires()
