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
        "Dollar": Item(price: 72, count: 0, product: Exchange(name: "Dollar")),
        "Euro": Item(price: 84, count: 100, product: Exchange(name: "Euro"))
    ]
    var moneyDeposited = 375
    
    func exchange (itemName name: String) -> (Exchange?, ATMError?) {
        guard let item = inventory[name] else {
            return (nil, ATMError.invalidSelection)
        }
        guard item.count > 0 else {
            return (nil, ATMError.outOfStock)
        }
        guard item.price <= moneyDeposited else {
            return (nil, ATMError.insufficientFunds(moneyNeeded: moneyDeposited))
        }
        
        moneyDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
//        print("Dispensing \(name)")
        
        return (newItem.product, nil)
    }
    
}

let atm = ATM()
let first = atm.exchange(itemName: "Dollar")
let second = atm.exchange(itemName: "Euro")
let third = atm.exchange(itemName: "Franc")

if let product = first.0 {
    print("You buy \(product.name)")
}
else if let error = first.1 {
    print("Error: \(error.localizedDescription)")
}
if let product = second.0 {
    print("You buy \(product.name)")
}
else if let error = second.1 {
    print("Error: \(error.localizedDescription)")
}
if let product = third.0 {
    print("You buy \(product.name)")
}
else if let error = third.1 {
    print("Error: \(error.localizedDescription)")
}

