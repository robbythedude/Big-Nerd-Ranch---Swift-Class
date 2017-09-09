//: Playground - noun: a place where people can play

import UIKit

//Silver Challenge

var stateCountyZipCodes = ["CountyOne":[30306, 30307, 30308, 30309, 30310],
                            "CountyTwo":[30311, 30312, 30313, 30314, 30315],
                            "CountyThree":[30316, 30317, 30318, 30319, 30320]]

for (county, zipCodes) in stateCountyZipCodes{
    for zipCode in zipCodes{
        print(zipCode)
    }
}

//Gold Challenge

var output = "State has the following zip codes: ["

for (index,zipCodes) in stateCountyZipCodes.values.enumerated(){
    for (indexZip, zipCode) in zipCodes.enumerated(){
        if(stateCountyZipCodes.values.count == (index + 1) && zipCodes.count == (indexZip + 1)){
            output.append(String(zipCode) +  "")
        }else{
            output.append(String(zipCode) +  ", ")
        }
    }
}

output.append("]")

print(output)