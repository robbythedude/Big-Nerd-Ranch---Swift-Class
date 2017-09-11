//: Playground - noun: a place where people can play

import UIKit

protocol TabularDataSource: CustomStringConvertible {
    var numberOfRows: Int {get}
    var numberOfColumns: Int {get}
    
    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}

func printTable(_ dataSource: TabularDataSource){
    
    //8 per \t
    
    var largestTabCount: Int = 0
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        if (columnLabel.characters.count / 8) > largestTabCount {
            largestTabCount = columnLabel.characters.count / 8
        }
    }
    
    for i in 0 ..< dataSource.numberOfRows {
        for j in 0 ..< dataSource.numberOfColumns{
            let item = dataSource.itemFor(row: i, column: j)
            if (item.characters.count / 8) > largestTabCount {
                largestTabCount = item.characters.count / 8
            }
        }
    }
    
    print(String(largestTabCount))
    
    var firstRow = "|"
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        let columnHeader = "\(columnLabel)"
        firstRow += columnHeader
        let padding = repeatElement("\t", count: (largestTabCount - (columnLabel.characters.count / 8))).joined(separator: "")
        firstRow += padding
        firstRow += "|"
        
    }
    
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows {
        
        var out = "|"
        
        for j in 0 ..< dataSource.numberOfColumns{
            let item = dataSource.itemFor(row: i, column: j)
            out += "\(item)"
            let padding = repeatElement("\t", count: (largestTabCount - (item.characters.count / 8)) + 1).joined(separator: "")
            out += padding
            out += "|"
        }
        
        print(out)
    }
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department : TabularDataSource {
    let name: String
    var people = [Person]()
    
    var description: String {
        return "Department \(name)"
    }
    
    init (name: String){
        self.name = name
    }
    
    mutating func add(_ person: Person){
        people.append(person)
    }
    
    var numberOfRows: Int{
        return people.count
    }
    
    var numberOfColumns: Int{
        return 3
    }
    
    func label(forColumn column: Int) -> String {
        switch column{
        case 0: return "Employee Name"
        case 1: return "Age"
        case 2: return "Years of Experience"
        default: fatalError("RIP: Invalid Column")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column{
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("RIP: Invalid Column")
        }
    }
    
}

var department = Department(name: "Engineering")
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 21))

printTable(department)
print(department)