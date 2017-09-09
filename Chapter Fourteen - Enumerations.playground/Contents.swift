//: Playground - noun: a place where people can play

import UIKit

//Bronze Challenge

enum ShapeDimensions {
    
    case point
    
    case square(side: Double)
    
    case rectangle(width: Double, height: Double)
    
    case rightTriangle(sideOne: Double, sideTwo: Double, hypotenuse: Double)
    
    func area() -> Double {
        switch self{
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .rightTriangle(sideOne: a, sideTwo: b, hypotenuse: c):
            return (a * b) / 2
        }
    }
    
    func perimeter() -> Double{
        switch self{
        case .point:
            return 0
        case let .square(side: side):
            return side * 4
        case let .rectangle(width: w, height: h):
            return (w + h) * 2
        case let .rightTriangle(sideOne: a, sideTwo: b, hypotenuse: c):
            return (a + b) + sqrt(pow(a, 2) + pow(b, 2))
        }
    }

}

var squareShape = ShapeDimensions.square(side: 10)
var rectangleShape = ShapeDimensions.rectangle(width: 10, height: 15)


print(squareShape.area())
print(squareShape.perimeter())

print(rectangleShape.area())
print(rectangleShape.perimeter())


//Silver Challenge (add triangle to above code)

var rightTriangleShape = ShapeDimensions.rightTriangle(sideOne: 5, sideTwo: 6, hypotenuse: 7.81)

print(rightTriangleShape.area())
print(rightTriangleShape.perimeter())