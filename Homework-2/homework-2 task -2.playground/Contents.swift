// Написать функцию, которая определяет, делится ли число без остатка на 3.

import UIKit



func num1 (number : Int, numberArray: [Int]) -> [Int]{
    
    var numArray = numberArray
    switch number {
    case _ where (number % 3 == 0):
        numArray.append(number)
    default:
        print (number, "не делится на 3 без остатка")
    }
    return numArray
}

var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var numbers1: [Int] = []

for number in numbers{
    numbers1 = num1(number: number, numberArray: numbers1)
    
}
print(numbers1, " - делятся на 3 без остатка")
