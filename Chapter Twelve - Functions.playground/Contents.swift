//: Playground - noun: a place where people can play

import UIKit

// Bronze Challenge

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)){
    guard let middleName = name.middle, middleName.characters.count < 4 else {
        print ("Hey There!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Matt", "Dan", "Mathias"))

//Silver Challenge

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], nonBeans: [String]){
    
    var beans = [String]()
    var nonBeans = [String]()
    
    for item in list{
        if item.contains("bean"){
            beans.append(item)
        }
        else{
            nonBeans.append(item)
        }
    }
    
    return (beans, nonBeans)
    
}

let result = siftBeans(fromGroceryList: ["Green beans","Milk","Black beans","pinto beans","apples"])

print(result.beans)
print(result.nonBeans)