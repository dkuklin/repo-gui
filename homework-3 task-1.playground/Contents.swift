import UIKit

enum CarInfo {
    enum engine {
        case on
        case off
    }
    enum Window {
        case on
        case off
    }
    enum Trunk {
        case download
        case upload
    }
}

struct SportCar {
    var model : String
    var issue : Int
    var volume : Double
    var switchOn : Bool
    var windowsOn : Bool
    var fullVolume : Double

    mutating func changeSportCar (newSwitchOn: Bool, newWindowsOn: Bool, newFullVolume: Double){
        self.switchOn = newSwitchOn;
        self.windowsOn = newWindowsOn;
        self.fullVolume = newFullVolume
    }
}

struct TrunkCar {
    var model : String
    var issue : Int
    var volume : Double
    var switchOn : Bool
    var windowsOn : Bool
    var fullVolume : Double

    mutating func changeTrunkCar (newSwitchOn: Bool, newWindowsOn: Bool, newFullVolume: Double){
        self.switchOn = newSwitchOn;
        self.windowsOn = newWindowsOn;
        self.fullVolume = newFullVolume
}
}



let firstCar = SportCar(model: "lamborgini", issue: 2018, volume: 100, switchOn: true, windowsOn: false, fullVolume: 10)
let secondCar = TrunkCar (model: "Man", issue: 2015, volume: 2000, switchOn: false, windowsOn: true, fullVolume: 1800)










