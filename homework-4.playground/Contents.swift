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
    enum Music {
        case play
        case stop
    }
    enum Transmission {
        case manual
        case auto
    }
}

class Car { // создание класса
    var currentSpeed = 0.0
    let transmission: CarInfo.Transmission
    let music: CarInfo.Music
    let color: UIColor
    var km: Double
    var wimdows: CarInfo.Window
    init(color: UIColor, music: CarInfo.Music, transmission: CarInfo.Transmission, km: Double, windows: CarInfo.Window) {
            self.color = color
            self.music = music
            self.transmission = transmission
            self.km = km
            self.wimdows = windows
        }
    func turnOnMusic (){ // создание метода
    print("LA-LA-LA")
    }
    
}

class TrunkCar: Car {
  var hasTrunk = true
    override func turnOnMusic() { // перераспределение
        super.turnOnMusic()
        print("TRAM-PAM-PAM")
    }
}

class SportCar: Car {
    var horsePower: Int = 300
    var electroEngine: Bool = true
    override func turnOnMusic() { // перераспределение
        super.turnOnMusic()
        print("BOOM-BOOM-BOOM")
    }
}


var car1 = TrunkCar (color: .white, music: .play, transmission: .auto, km: 0.0, windows: .open)
var car2 = SportCar (color: .white, music: .stop, transmission: .auto, km: 120.0, windows: .close)
