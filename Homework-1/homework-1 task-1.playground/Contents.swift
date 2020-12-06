import UIKit



var a: Double = 4
var b: Double = 8
var c: Double = 2

print("Сегодня мы решим уравнение ax2 + bx + c = 0, где a = \(a), b = \(b), c = \(c)")


var D: Double = Double((b*b - 4*a*c))
switch D {
case _ where D == 0:
    let x = Double((-b)/(2*a))
    print("Так как дискриминант равен нулю, то x будет равен \(x)")
case _ where D > 0:
    let x1:Double = (-b - sqrt(D))/(2*a)
    let x2:Double = (-b + sqrt(D))/(2*a)
    let y1 = String(format: "%.2f", x1)
    let y2 = String(format: "%.2f", x2)
    print("Так как дискриминант больше нуля, то уранение будет иметь 2 корня: x1 = \(y1) , x2 = \(y2)")
    
default:
    print("Нет действительных корней")
}
