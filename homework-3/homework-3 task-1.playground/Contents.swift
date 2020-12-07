import UIKit

enum CarInfo {
    enum Engine {
        case on
        case off
    }
    enum Window {
        case open
        case close
    }
    enum Trunk {
        case load
        case upload
    }
}

struct SportCar {
    var model : String // модель авто
    var issue : Int // год выпуска
    var fullVolume : Double // максимальный объем багажника
    var switchOn : CarInfo.Engine // состояние двигателя
    var windowsOn : CarInfo.Window // состояние окон
    var volume : Double // загруженность багажника

    mutating func loadTrunk (weight: Double, action: CarInfo.Trunk){
        switch action {
        case .load where (fullVolume >= volume) && (volume >= 0):
            self.volume += weight
            print("Загружено \(weight) груза. Заполнено \(volume) из \(fullVolume)")
        case .upload where (fullVolume >= volume) && (volume >= 0):
            self.volume -= weight
            print("Выгружено \(weight) груза. Заполнено \(volume) из \(fullVolume)")
        default:
            print("Неверно введенные значения. Необходимо указать значения от 0 до максимального объема кузова")
        }
    }
    mutating func windowsValue (value: CarInfo.Window){
        switch value {
        case .open:
            self.windowsOn = .open
            print ("Двери авто открыты")
        case .close:
            self.windowsOn = .close
            print ("Двери авто закрыты")
        }
    }
    mutating func engineValue (value: CarInfo.Engine){
        switch value {
        case .on:
            self.switchOn = .on
            print ("Двигатель включен")
        case .off:
            self.switchOn = .off
            print ("Двигатель выключен")
    }
        
    }

}

struct TrunkCar {
    var model : String // модель авто
    var issue : Int // год выпуска
    var fullVolume : Double // максимальный объем багажника
    var switchOn : CarInfo.Engine // состояние двигателя
    var windowsOn : CarInfo.Window // состояние окон
    var volume : Double // загруженность багажника

    mutating func loadTrunk (weight: Double, action: CarInfo.Trunk){
        switch action {
        case .load where (fullVolume >= volume) && (volume >= 0):
            self.volume += weight
            print("Загружено \(weight) груза. Заполнено \(volume) из \(fullVolume)")
        case .upload where (fullVolume >= volume) && (volume >= 0):
            self.volume -= weight
            print("Выгружено \(weight) груза. Заполнено \(volume) из \(fullVolume)")
        default:
            print("Неверно введенные значения. Необходимо указать значения от 0 до максимального объема кузова")
        }
    }
    mutating func windowsValue (value: CarInfo.Window){
        switch value {
        case .open:
            self.windowsOn = .open
            print ("Двери авто открыты")
        case .close:
            self.windowsOn = .close
            print ("Двери авто закрыты")
        }
    }
    mutating func engineValue (value: CarInfo.Engine){
        switch value {
        case .on:
            self.switchOn = .on
            print ("Двигатель включен")
        case .off:
            self.switchOn = .off
            print ("Двигатель выключен")
    }

    }
    
}


var firstCar = SportCar(model: "lamborgini", issue: 2018, fullVolume: 100, switchOn: CarInfo.Engine.on, windowsOn: CarInfo.Window.close, volume: 10)
var secondCar = TrunkCar (model: "Man", issue: 2015, fullVolume: 2000, switchOn: CarInfo.Engine.off, windowsOn: CarInfo.Window.open, volume: 1800)

// Пример со спорткаром

print (firstCar.volume)
firstCar.loadTrunk(weight: 50, action: .load)
print (firstCar.volume)



print (firstCar.windowsOn)
firstCar.windowsValue(value: .open)
print (firstCar.windowsOn)



print (firstCar.switchOn)
firstCar.engineValue(value: .off)
print (firstCar.switchOn)


// Пример с грузовиком

print (secondCar.volume)
secondCar.loadTrunk(weight: 500, action: .upload)
print (secondCar.volume)



print (secondCar.windowsOn)
secondCar.windowsValue(value: .close)
print (secondCar.windowsOn)



print (secondCar.switchOn)
secondCar.engineValue(value: .on)
print (secondCar.switchOn)




