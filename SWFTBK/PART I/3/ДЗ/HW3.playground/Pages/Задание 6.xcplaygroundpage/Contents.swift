import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */

enum CalculationType:String {
    case addition = "сложение"
    case subtraction = "вычитание"
    case multiplication = "умножение"
    case division = "деление"
}

let one = 1
let two = 2
var mathOperation:CalculationType = .addition

var result:Int = one

switch mathOperation {
case .addition: result += two
case .division: result != 0 ? result /= two : print("can't divide by zero")
case .multiplication: result *= two
case .subtraction: result -= two
}



enum CurrencyUnit {
    case rouble
    case dollar(national:DollarCountries)
    case euro
    
    
    
    enum DollarCountries {
        case USA
        case Canada
        case Australia
    }
    
}

let currency: CurrencyUnit = .dollar(national: .Canada)



//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |

