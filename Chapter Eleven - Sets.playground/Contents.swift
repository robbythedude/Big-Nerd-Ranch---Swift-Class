//: Playground - noun: a place where people can play

import UIKit

//Bronze Challenge

let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])
let yourCities = Set(["Chicago", "Jacksonville", "San Francisco"])

if myCities.intersection(yourCities).count == yourCities.count{
    print("myCities is a superset of yourCities")
}else{
    print("myCities is not a superset of yourCities")
}

//Silver Challenge

var myGroceryBag: Set = ["Apples","Oranges","Pineapple"]
let friendsGroceryBag: Set = ["Bananas","Cereal","Milk","Oranges"]

myGroceryBag = myGroceryBag.subtracting(friendsGroceryBag)

print(myGroceryBag)