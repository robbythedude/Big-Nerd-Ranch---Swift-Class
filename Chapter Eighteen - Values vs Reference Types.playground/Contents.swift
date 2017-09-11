//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var playgroundGreeting = str

playgroundGreeting += "Yo what up homie"

print(str)
print(playgroundGreeting)

class GreekGod {
    var name: String
    init (name: String){
        self.name = name
    }
}

let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "RIP Hecate's Name"

print(hecate.name)
print(anotherHecate.name)

struct Pantheon{
    var chiefGod: GreekGod
}

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")

zeus.name = "Zeus Jr."

print (zeus.name)

print(pantheon.chiefGod.name)
let greekPantheon = pantheon
hecate.name = "RIP Hectate's Name Again"
print(pantheon.chiefGod.name)

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "RIP Zeus's Name"

if let name = gods.last?.name {
    print(name)
}
if let name = godsCopy.last?.name {
    print(name)
}