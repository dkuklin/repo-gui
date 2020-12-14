import UIKit

enum Windows {
case close, open
}
enum Engine {
    case on, off
}

protocol Car {
    var vmestimost : Int { get }
    var klass : String { get }
    var godVipuska : Int { get }
    var rashodTopliva : Double { get }

    func MaxSpeed() -> Int
    var window : Windows { get }
    var engine : Engine { get }
    var speed : Int { get }
    
    
    
}

extension Car {
    mutating func OpenClose () {
        switch window {
        case .open:
            self = Windows.open as! Self
            print ("Окна открыты")
        case .close:
            self = Windows.close as! Self
            print ("Окна закрыты")
        }
        
    }
}

extension Car {
    mutating func EngineOnOff () {
        switch engine {
        case .on:
            self = Engine.on as! Self
            print ("Двигатель включен")
        case .off:
            self = Engine.off as! Self
            print ("Двигатель включен")
        }
        
    }
}

class sportCar : Car {
    
    var vmestimost = 4
    var klass = "sport"
    var godVipuska = 2020
    var rashodTopliva = 12.0
    var window = Windows.open
    var engine = Engine.on
    var speed = 200
    func MaxSpeed() -> Int {
        return 300
    }
    
}

class trunkCar : Car {
    var vmestimost = 2
    var klass = "trunk"
    var godVipuska = 2015
    var rashodTopliva = 25.5
    var window = Windows.close
    var engine = Engine.off
    var speed = 60
    func MaxSpeed() -> Int {
        return 120
    }
}

//class Rectangle {
//    var sideA: Double
//    var sideB: Double
//    func calculatePerimiter() -> Double {
//        return sideA * 2 + sideB * 2
//    }
//    var square: Double {
//        return sideA * sideB
//    }
//    init(sideA: Double, sideB: Double) {
//        self.sideA = sideA
//        self.sideB = sideB
//    }
//}

//extension Rectangle: CustomStringConvertible{  // имплементируем протокол для вывода в консоль
//    var description: String{
//        return "sideA: \(sideA), \(sideB)"    // определяем, что именно будет выводиться
//    }
//}


extension sportCar: CustomStringConvertible {
    var description: String {
        return "информация про спорткар. Количество пассажиров: \(vmestimost), класс автомобиля: \(klass), год выпуска: \(godVipuska), расход топлива на 100км: \(rashodTopliva), \(window), \(engine), максимальная скорость: \(MaxSpeed()),"
        
    }
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return "информация про спорткар. Количество пассажиров: \(vmestimost), класс автомобиля: \(klass), год выпуска: \(godVipuska), расход топлива на 100км: \(rashodTopliva), \(window), \(engine), максимальная скорость: \(MaxSpeed()),"
        
    }
}

let lamborgini = sportCar ()
let man = trunkCar ()

lamborgini(Engine.off)
man(Windows.open)
