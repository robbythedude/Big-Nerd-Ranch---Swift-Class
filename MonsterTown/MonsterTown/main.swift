//
//  main.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

var myTown = Town()
var myMayor = Mayor()

print(myTown.townSize)
myTown.changePopulation(by: 1_000_000)
print(myTown.townSize)

myTown.townMayor = myMayor

myTown.changePopulation(by: 11)

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
print("Fred's Victim Pool \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)
if(Zombie.isTerrifying){
    print("Run!!")
}

let thrallTheVampure = Vampire()
thrallTheVampure.town = myTown
thrallTheVampure.terrorizeTown()
thrallTheVampure.terrorizeTown()
Vampire.printHowManyVampires()

