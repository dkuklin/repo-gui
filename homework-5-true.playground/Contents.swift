import UIKit

protocol Car {
//    func window(windowsOpen: Bool)
//    func engine(engineOn: Bool)
    
    var capacity : Int { get } // вместимость
    var carClass : String { get } // класс авто
    var trunk : Bool { get } // наличие багажника
    
    var windowsState: Bool { get set }
    var engineIndicate : Bool { get set }
}

protocol ConsolePrint: CustomStringConvertible {
    func printDescription()

}

extension ConsolePrint { // расширяем протокол
    func printDescription() { // реализуем метод для вывода в консоль поля description
        print(description) // само поле description определено в CustomStringConvertible
    }
}


extension Car {
    mutating func window(windowsOpen: Bool) {
        self.windowsState = windowsOpen
        if windowsOpen {
            print("Окно открыто, дует приятный легкий ветерок")
        }
        else {
            print("Окно закрыто, холод не страшен")
            
        }
        
    }
    mutating func engine(engineOn: Bool) {
        self.engineIndicate = engineOn
        if engineOn {
            print("Мотор заведен, автомобиль мчит на встречу приключениям")
        }
        else {
            print("Мотор выключен, автомобиль стоит на месте")
            
        }
        
    }
}

class TrunkCar: Car, ConsolePrint {
    
    
    
    var description: String {
        return "Характеристики грузовика. Вместимость: \(capacity), класс автомобиля: \(carClass), грузовой кузов: \(trunk), окна: \(windowsState), двигатель: \(engineIndicate)"
    }
    

    
    var capacity = 2
    var carClass = "trunk"
    var trunk = true
    var windowsState = false
    var engineIndicate = true
    
}

class SportCar: Car, ConsolePrint {
    
    
    var description: String {
        return "Характеристики спорткара. Вместимость: \(capacity), класс автомобиля: \(carClass), грузовой кузов: \(trunk), окна: \(windowsState), двигатель: \(engineIndicate)"
        }
    
    
    
    
    var capacity = 4
    var carClass = "sport"
    var trunk = false
    var windowsState = true
    var engineIndicate = false
    
}


var man = TrunkCar ()
var lamborgini = SportCar ()
var gazelle = TrunkCar ()
var ferrari = SportCar ()

lamborgini.windowsState
man.windowsState

print(lamborgini)
print(man)

lamborgini.window(windowsOpen: false)
lamborgini.engine(engineOn: true)
man.window(windowsOpen: true)
man.engine(engineOn: false)

print(lamborgini)
print(man)
