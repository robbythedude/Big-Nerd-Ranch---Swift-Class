//: Playground - noun: a place where people can play

import UIKit

//Bronze Challenge

var toDoList = ["Take out garbage","Pay bills","Cross off finished items"]

print (toDoList.count > 0)

//Silver Challenge

var reversedToDoList: [String] = []

for item in toDoList.reversed(){
    reversedToDoList.append(item)
}

print(reversedToDoList)

//Gold Challenge

toDoList.insert("Fly hot air balloon to Fiji", at: 0)

var foundIndex = toDoList.index(of: "Fly hot air balloon to Fiji")
var indexDistancePlusTwo = foundIndex! + 2

print(toDoList[indexDistancePlusTwo])
