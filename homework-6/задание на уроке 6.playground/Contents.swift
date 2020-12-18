import UIKit
// ДЖЕНЕРИК
let intArray = [1,2,3,4]
let stringArray = ["a", "b", "c", "d"]

//func printInts (array: Int) {
//    print (intArray.map{ $0 })
//}
//
//func printString (array: String) {
//    print (stringArray.map{ $0 })
//}

func print<T> (array: [T]) { // дженерик функция
    print (array.map{ $0 })
}

print(array: intArray)
//func someFunction <T: SomeClass, U: SomeProtocol> (someT: T, someU: U) {
//
//}

//func min<T: Comparable> (_ x: T,_ y:T) ->T {
//    return y < x ? y : x
//}
 






// САБСКРИПТЫ

//subscript(index: Int) -> Int { // редактируемое вычисляемое свойство
//    get {
//    // возвращаем значение)
//}
//    set(newValue) {
//        // устанавливаем значение
//    }
//}
//
//subscript(index: Int) -> Int { // НЕредактируемое вычисляемое свойство
//
//    // возвращаем значение)
//
//
//}


struct TimesTabel {
    let multiplayer: Int
    subscript (index: Int) -> Int {
        return multiplayer * index
    }
}

let qqq = TimesTabel (multiplayer: 3)

print(qqq[6])


var testDict = ["eee": 7, "rrrrr": 6, "fffffff": 4]
testDict["eee"] = 2
print ("effd")


struct Matrix {
    let rows: Int
    let columns: Int
    var grid: [Double]
    
    init (rows: Int, columns: Int) {
    self.rows = rows
    self.columns = columns
    grid = Array(repeating: 0.0, count: rows * columns)

}

func IndexIsValid(row: Int, column: Int) -> Bool {
    return row >= 0 && row < rows && column >= 0 && column < columns
}
    
    subscript (row: Int, column: Int) -> Double {
        get {
            assert(IndexIsValid(row: row, column: column), "Index out of range")
            return grid [(row * columns) + column]
        }
        set {
            assert(IndexIsValid(row: row, column: column), "Index out of range")
            grid [(row * columns) + column] = newValue
        }
    }
}

var matrix = Matrix (rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix[1, 0] = 3.2


//let someValue = matrix [2, 2]  - ошибка, работать не будет


// ЗАМЫКАНИЯ


let closure: (Int, Int) -> Bool = { (itemOne: Int, itemTwo: Int) -> Bool in
    return itemOne == itemTwo
}

closure (2,2)





let even: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 2 == 0
    
}

let odd: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 2 != 0
    
}

var array = [1,2,3,4,5,6,7,8,9,10]

func filter (array: [Int], predicate: (Int) -> Bool) -> [Int]
{
    var tmpArray = [Int]()
    for element in array {
        if predicate(element) {
            tmpArray.append(element)
        }
    }
    return tmpArray
}

var first = filter(array: array, predicate: even)
var second = filter(array: array, predicate: odd)

print (first)
print (second)



// срезанное замыкание (почистили ненужные вещи в замыкании):
filter (array: array, predicate: {
    return $0 % 2 == 0
    
})

var third = array.filter{$0 % 2 == 0}
var fourth = array.filter{$0 % 2 != 0}

print (third)
print (fourth)

var fifth: () = array.sort{$0 > $1}

print(fifth)

var sixth = array.map{$0 * $0}
print(sixth)

var seventh = array.reduce(0, {$0 + $1})
print(seventh)

var eighth: () = array.forEach({print($0)})
print (eighth)





class Figure {
    var draw: (() -> Void)?
    deinit {
        print("Figure deleted")
    }
}

class Screen {
    var figureColor: String
    let figure: Figure
    init (color: String) {
        self.figureColor = color
        figure = Figure()
        figure.draw = {[weak self] in print("draw squaze \(self!.figureColor) color")}
    }
    deinit {
        print("Screen deleted")
    }
}

var screen: Screen? = Screen(color: "red")
screen?.figure.draw?()
screen = nil
