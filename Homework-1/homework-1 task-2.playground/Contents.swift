import UIKit

var a = 4
var b = 3


print("Сегодня мы найдем площадь, периметр и гипотенузу прямоугольного треугольника, где катет a = \(a), катет b = \(b), катет c = \(c)")

let s = Double(a*b)/2
let c = (sqrt(Double(a*a) + Double(b*b)))
let p = Double(a) + Double(b) + Double(c)

print("Гипотенуза будет равна \(c), периметр будет равен \(p), площадь будет равно \(s)")
