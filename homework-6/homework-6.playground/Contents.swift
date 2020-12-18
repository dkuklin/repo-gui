
struct Queue <T>{                   // T - это какой-то пока неизвестный тип
    var elements: [T] = []           // массив типа Т
    mutating func push(_ element: T) {      // добавляем элемент типа Т
        elements.append(element)
    }
    mutating func pop() -> T? {           // извлекаем элемент типа Т
        return elements.removeFirst()
    }
    
}

var queue = Queue<Int>()
queue.push(11)
queue.push(12)
queue.push(13)
queue.push(14)
queue.pop()

print(queue)
var intArray = [1,2,3,4,5,6,7,8,9,10]

intArray.append(contentsOf: queue.elements)

print (intArray)


// методы высшего порядка
var a = intArray.filter{ $0 % 2 == 0 } // указывает только четные числа массива
print (a)

var b = intArray.filter{ $0 % 2 != 0 } // указывает только нечетные числа массива
print (b)

var c = intArray.count // считает количество символов в массиве
print (c)

var d: () = intArray.sort{ $0 > $1 } // переставляет числа в массиве задом наперед
print (d)

print (intArray)

var e = intArray.isEmpty // указывает, является ли массив пустым
print (e)

var f = intArray.reduce(0){ $0 + $1 } // вычисляет результат суммы всех чисел. отсчет идет с нуля
print(f)

var g = intArray.reduce(2){ $0 + $1 } // вычисляет результат суммы всех чисел. отсчет идет с двойки
print(g)


