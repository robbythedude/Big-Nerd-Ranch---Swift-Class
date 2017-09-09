//: Playground - noun: a place where people can play

import UIKit

//Bronze Challenge pt. 1

var counts = [1,2,3,4,7,5,6,8,9,0]

counts = counts.sorted(by: {$1>$0})

print(counts)

//Bronze Challenge pt. 2

counts = [1,2,3,4,7,5,6,8,9,0]

counts = counts.sorted{$1>$0}

print(counts)

//Silver Challenge

let populations = [1244, 2021, 2157]

let redPopulations = populations.reduce(0){
    (accumulatedPopulation: Int, precinctPopulation: Int) -> Int in
    return accumulatedPopulation + precinctPopulation
}

let refacRedPopulations = populations.reduce(0){$0 + $1}

print(redPopulations)
print(refacRedPopulations)