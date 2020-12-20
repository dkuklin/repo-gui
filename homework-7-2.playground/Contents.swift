import UIKit

struct Item {
    var price: Int // стоимость
    var count: Int // количество купюр
    let product: Exchange
    
}

struct Exchange {
    let name: String
}

enum ATMError: Error {
    case invalidSelection // нет такой валюты в банкомате
    case outOfStock // нет в наличии в банкомате на даный момент, но есть в ассортименте
    case insufficientFunds (moneyNeeded: Int) // недостаточно денег, чтобы совершить обмен валют
}

class ATM {
    var inventory = [
        "Funt": Item(price: 95, count: 100, product: Exchange(name: "Funt")),
        "Dollar": Item(price: 72, count: 100, product: Exchange(name: "Dollar")),
        "Euro": Item(price: 84, count: 100, product: Exchange(name: "Euro"))
    ]
    var moneyDeposited = 75
    
    func exchange (itemName name: String) throws -> Exchange {
        guard let item = inventory[name] else {
            throw ATMError.invalidSelection
        }
        guard item.count > 0 else {
            throw ATMError.outOfStock
        }
        guard item.price <= moneyDeposited else {
            throw ATMError.insufficientFunds(moneyNeeded: item.price - moneyDeposited)
        }
        
        moneyDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        print("Dispensing \(name)")
        
        return (newItem.product)
    }
    
}

let atm = ATM ()

do {
let first = try atm.exchange(itemName: "Dollar")

}   catch ATMError.invalidSelection {
    print("Invalid selection. Choose one of the availible names")
}   catch ATMError.insufficientFunds(moneyNeeded: let moneyNeeded) {
    print("Insufficient Funds! You need: \(moneyNeeded) coins")
}   catch let error {
    print(error.localizedDescription)
}

do {
let second = try atm.exchange(itemName: "Euro")

}   catch ATMError.invalidSelection {
    print("Invalid selection. Choose one of the availible names")
}   catch ATMError.insufficientFunds(moneyNeeded: let moneyNeeded) {
    print("Insufficient Funds! You need: \(moneyNeeded) coins")
}   catch let error {
    print(error.localizedDescription)
}

do {
let third = try atm.exchange(itemName: "Franc")

}   catch ATMError.invalidSelection {
    print("Invalid selection. Choose one of the availible names")
}   catch ATMError.insufficientFunds(moneyNeeded: let moneyNeeded) {
    print("Insufficient Funds! You need: \(moneyNeeded) coins")
}   catch let error {
    print(error.localizedDescription)
}



