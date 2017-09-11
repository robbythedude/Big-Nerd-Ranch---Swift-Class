//
//  main.swift
//  MonsterTown
//
//  Created by Robert Steiner on 9/10/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import Foundation

var myTown = Town(region: "South", population: 10_000, stopLights: 6)
var myMayor = Mayor()

print(myTown.townSize)
myTown.changePopulation(by: 1_000_000)
print(myTown.townSize)

myTown.townMayor = myMayor

myTown.changePopulation(by: 11)

var fredTheZombie: Zombie? = Zombie(limp: true, fallingApart: true, town: myTown, monsterName: "Fred")
let convientFredZombie = Zombie(limp: true, fallingApart: false)
fredTheZombie?.terrorizeTown()
if let vPool = fredTheZombie?.victimPool{
    print("Fred's Victim Pool is \(vPool)")
}
print(Zombie.spookyNoise)
if(Zombie.isTerrifying){
    print("Run!!")
}

fredTheZombie = nil

let thrallTheVampure: Vampire? = Vampire(town: myTown, monsterName: "Thrall")
thrallTheVampure?.town = myTown
thrallTheVampure?.terrorizeTown()
thrallTheVampure?.terrorizeTown()
Vampire.printHowManyVampires()

