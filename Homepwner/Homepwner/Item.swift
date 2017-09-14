//
//  Item.swift
//  Homepwner
//
//  Created by Robert Steiner on 9/12/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    var dateCreated: Date
    let itemKey: String
    
    init(name: String, serialNumber: String?, valueInDollars: Int){
        self.name = name
        self.serialNumber = serialNumber
        self.valueInDollars = valueInDollars
        self.dateCreated = Date()
        self.itemKey = UUID().uuidString
        
        super.init()
    }
    
    convenience init(random: Bool = false){
        if random{
            let adjectives = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        }else{
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
        
    }
    
    enum EncodeKeys {
        case name
        case dateCreated
        case serialNumber
        case valueInDollars
        case itemKey
    }
    
    func encode(with aCoder: NSCoder){
        aCoder.encode(name, forKey: EncodeKeys.name.hashValue.description)
        aCoder.encode(dateCreated, forKey: EncodeKeys.dateCreated.hashValue.description)
        aCoder.encode(serialNumber, forKey: EncodeKeys.serialNumber.hashValue.description)
        aCoder.encode(valueInDollars, forKey: EncodeKeys.valueInDollars.hashValue.description)
        aCoder.encode(itemKey, forKey: EncodeKeys.itemKey.hashValue.description)
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: EncodeKeys.name.hashValue.description) as! String
        dateCreated = aDecoder.decodeObject(forKey: EncodeKeys.dateCreated.hashValue.description) as! Date
        serialNumber = aDecoder.decodeObject(forKey: EncodeKeys.serialNumber.hashValue.description) as! String?
        valueInDollars = aDecoder.decodeInteger(forKey: EncodeKeys.valueInDollars.hashValue.description)
        itemKey = aDecoder.decodeObject(forKey: EncodeKeys.itemKey.hashValue.description) as! String
    }
    
}
