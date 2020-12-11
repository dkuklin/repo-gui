import UIKit

class Vehicle { // создание класса
    var currentSpeed = 0.0
    var description: String { // вычисляемая переменная
        return "TS current speed \(currentSpeed) km/ch"
    }
    func makeNoise (){ // создание метода
    print("Nothing")
    }
    init() {
        print ("Экземпляр класса инициализорован")
        self.currentSpeed = 2.0
    }
    convenience init (speed: Double) {
        self.init()
        self.currentSpeed = speed
    }
}

let someVechile = Vehicle ()
someVechile.description

class Man {
    var mensBicycle: Bicycle?
    deinit {
        print("Экземпляр класса Men уничтожен")
    }
}

class Bicycle: Vehicle { // подкласс класса Vehicle
    var hasBasket = false
    var men: Man?
    override func makeNoise() { // перераспределение
        super.makeNoise()
        print("else")
    }
    override init () {
        super.init()
        
    }
    deinit { // деинициатор
        print("Экземпляр класса Bicycle уничтожен, стерт из памяти и забыт навека")
    }
}
// КАК УБИТЬ ЭКЗЕМПЛЯР

//var bicycle: Bicycle? = Bicycle(speed: 7.0)
//bicycle!.hasBasket = true
//bicycle!.currentSpeed = 15.0
//print ("Bicycle: \(bicycle!.description)")
//bicycle!.makeNoise()
//var bicycle3 = bicycle!
//bicycle = nil

var bicycle: Bicycle? = Bicycle(speed: 7.0)
var men1: Man? = Man ()

bicycle!.men = men1
men1!.mensBicycle = bicycle



//var bicycle: Bicycle? = Bicycle(speed: 7.0)
//bicycle!.hasBasket = true
//bicycle!.currentSpeed = 15.0
//print ("Bicycle: \(bicycle!.description)")
//bicycle!.makeNoise()
//var bicycle3: Bicycle? = bicycle!
//var bicycle4: Bicycle? = bicycle!
//
//bicycle = nil
//bicycle3 = nil
//bicycle4 = nil


//var bicycle2 = bicycle
//print ("Bicycle: \(bicycle.description)")
//print ("Bicycle2: \(bicycle2.description)")
//bicycle.currentSpeed = 17.0
//print ("Bicycle: \(bicycle.description)")
//print ("Bicycle2: \(bicycle2.description)")



class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
    override func makeNoise() {
        super.makeNoise()
        print("matter")
    }
//    override init() {
//        super.init()
//    }
}

let vel2 = Tandem()
vel2.hasBasket = true
vel2.currentNumberOfPassengers = 2
vel2.currentSpeed = 20.0
print ("Tandem \(vel2.description)")
vel2.makeNoise()

class TandemLong: Tandem { // переопределение (сложное)
    private var _currentNumberOfPassengers = 5
    override var currentNumberOfPassengers: Int {
        get {
            return _currentNumberOfPassengers
        }
        set {
            _currentNumberOfPassengers = newValue
        }
    }

}

