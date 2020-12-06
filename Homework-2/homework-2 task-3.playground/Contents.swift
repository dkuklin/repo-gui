// Создать возрастающий массив из 100 чисел. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

import UIKit


func num1 (number : Int, numberArray: [Int]) -> [Int]{

    var numArray = numberArray
    switch number {
    case _ where ((number % 2 != 0)&&(number % 3 == 0)):
        numArray.append(number)
    default:
        print("")
    }
    return numArray
}
//
//var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//
//

//print(numbers1)


var numbers: [Int] = []
var n: Int = 0

repeat {
    n+=1
    numbers.append(n)
    
}
while
    n < 100



var numbers1: [Int] = []


for number in numbers{
    numbers1 = num1(number: number, numberArray: numbers1)

}
print("Все нечетные числа из массива, которые делятся на 3: ", numbers1)
