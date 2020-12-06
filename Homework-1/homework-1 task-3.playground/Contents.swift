import UIKit
var sum = 100000
var prcnt = 4
var yearprsnt = 0
var i = 0
var deposit5 = 0

while (i < 5) {
    yearprsnt = (sum/100)*prcnt
    let deposit1 = sum + yearprsnt
    let deposit2 = deposit1 + ((deposit1 * prcnt)/100)
    let deposit3 = deposit2 + ((deposit2 * prcnt)/100)
    let deposit4 = deposit3 + ((deposit3 * prcnt)/100)
    let deposit5 = deposit4 + ((deposit4 * prcnt)/100)
    i = i + 1
    print (deposit5)
 break
}

  
//         let year1 = (sum * (prcnt/100))+sum;
//         let year2 = (year1 * (prcnt/100))+year1;
//         let year3 = (year2 * (prcnt/100))+year2;
//         let year4 = (year3 * (prcnt/100))+year3;
//         let year5 = (year4 * (prcnt/100))+year4;
//}
//print ("Подсчет окончен. Ознакомьтесь с суммой вклада на ближайшие 5 лет.\nСумма вклада на 1 год: \(year1) \n Сумма вклада на 2 год: \(year2)\n Сумма вклада на 3 год: \(year3) \n Сумма вклада на 4 год: \(year4)\n Сумма вклада на 5 год: \(year5)")


