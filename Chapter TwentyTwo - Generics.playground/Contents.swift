//: Playground - noun: a place where people can play

import UIKit

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ newItem: Element){
        items.append(newItem)
    }
    
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
    func map<U>(_ f: (Element) -> U) -> Stack<U>{
        var mappedItems = [U]()
        for item in items{
            mappedItems.append(f(item))
        }
        return Stack<U>(items: mappedItems)
    }
    
}

var intStack = Stack<Int>()
intStack.push(2)
intStack.push(5)
var doubleStack = intStack.map{ 2 * $0 }

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

print(doubleStack.pop())
print(doubleStack.pop())


var stringStack = Stack<String>()
stringStack.push("A String!")
stringStack.push("Another one!")

print(stringStack.pop())

func myMap<T,U>(_ items: [T], _ f: (T) -> (U)) -> [U] {
    var result = [U]()
    for item in items{
        result.append(f(item))
    }
    return result
}

let strings = ["one", "two", "three"]
let stringLengths = myMap(strings){$0.characters.count}

print(stringLengths)

func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}

print(checkIfEqual(1, 1))
print(checkIfEqual("a string", "a string"))
print(checkIfEqual("a string", "another string"))

func checkIfDescriptionMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
    return first.description == second.description
}

print(checkIfDescriptionMatch(Int(1), UInt(1)))
print(checkIfDescriptionMatch(1, 1.0))
print(checkIfDescriptionMatch(Float(1.0), Double(1.0)))