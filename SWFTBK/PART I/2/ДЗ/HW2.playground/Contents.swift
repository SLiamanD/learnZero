import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfMP0S1YlzHOLzFpuHuI8awmoBDZ1kpJ-4Q0PUtrgQMXNOoGQ/viewform)
//: ## Home Work 2

/*:
 ### Задание 1
 1.1 Объявите два свойства с типом `Float` и присвойте каждому число с дробной частью — например, 3.14 или 42.0
 
 1.2 Объявите еще одно свойство с типом `Double` и присвойте ей сумму двух переменных типа `Float`
 
 1.3 Выведите результат при помощи `print()`
 */
var a:Float = 3.14
var b:Float = 4.20
var c:Double = Double(a+b)
print(c)


/*:
 ### Задание 2
 2.1 Создайте переменную `numberOne` и присвойте ей любое целочисленное значение
 
 2.2 Создайте ещё одну целочисленную переменную `numberTwo` и присвойте ей любое значение меньше `numberOne`
 
 2.3 Присвойте новой целочисленной константе `result` результат деления `numberOne` на `numberTwo`
 
 2.4 Присвойте новой целочисленной константе `remainder` остаток от деления `numberOne` на `numberTwo`
 
 2.5 Выведите на консоль сообщение: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
 
 2.6 Выведите на консоль фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». Поясню: в математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (одна целая две третьих, здесь мы используем стандартную математическую запись, а не оператор деления). Вам необходимо вывести на консоль именно такой результат от деления `numberOne` на `numberTwo` в виде натуральной дроби — например «Результат деления 7 на 3 равен 2 1/3».
 
 */
var numberOne = 2
var numberTwo = 1
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo
print("При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)")
numberOne = 8
numberTwo = 3
let newResult = numberOne / numberTwo
let newRemainder = numberOne % numberTwo

print("Результат деления \(numberOne) на \(numberTwo) равен \(newResult) \(newRemainder)/\(numberTwo)")





/*:
 ### Задание 3
 3.1 Объявите константу `dayOfBirth` и присвоейте ей дату вашего рождения
 
 3.2 Объявите константу `monthOfBirth` и присвоейте ей месяц вашего рождения
 
 3.3 Объявите константу `yearOfBirth` и присвоейте ей год вашего рождения
 
 3.4 Необходимо рассчитать прожитое вами время время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, месяцах, днях и секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30. Создайте необходимые для решения данной задачи свойства. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций использоваться не должно.
 
 3.5 Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст. Например, если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**
 
 3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if
 */
let dayOfBirth = 01
let monthOfBirth = 01
let yearOfBirth = 2000
let secondsInMunute = 60
let minutesInHours = 60
let hoursInDay = 24
let daysInMonth = 30
let monthInYear = 12
let toDay = 6
let thisMonth = 11
let thisYear = 2022
let yearsFromMyBithDay = thisYear - yearOfBirth
let monthFromMyBithday = (yearsFromMyBithDay * 12) + (thisMonth - monthOfBirth)
let daysFromMyBithDay = (monthFromMyBithday * 30) + (toDay - dayOfBirth)
let weeksFromMyBithDay = daysFromMyBithDay / 7
let hoursFromMyBithday = daysFromMyBithDay * 24
let minutesFromMyBithDay = hoursFromMyBithday * 60
let secondFromMyBithDay = minutesFromMyBithDay * 60

var quarter: Int {
       monthOfBirth / 3 + 1
   }

print("Если я родился \(dayOfBirth).0\(monthOfBirth).\(yearOfBirth) года, а текущая дата 0\(toDay).\(thisMonth).\(thisYear), то результат будет следующим: \(yearsFromMyBithDay) годков(годика), в месяцах это  \(monthFromMyBithday) месяцев(ца), в днях - \(daysFromMyBithDay) деньков(дня) и если секунд, то \(secondFromMyBithDay) секундочек(ды) прошло с моей днюшки. Если в недельках - это будет \(weeksFromMyBithDay) неделек(ля). Родился я получается в \(quarter) квартале")


/*:
 ### Задание 4. Депозитный калькулятор

 Сколько процентов(X) составит выплата по депозиту в A рублей при ставке B% годовых если забрать его через C лет? При условии, что проценты считаются только с тела депозита.

 А,B,C - входные параметры, X - искомое
 
 P.S. Помните, переменные нужно называть, чтоб они были понятными :-)
 
 Пример вывода "Выплата по депозиту суммой <значение> (ставка <значение>%) через <значение> лет будет <значение>%"
 
 */
func depositeCalculator(depositeMoney:Double, depositRate:Double, years:Double) -> Double {
    let depositInterest:Double = depositeMoney + ((depositeMoney/100) * (years * depositRate))
    let sumOfpercent = years * depositRate
    print("Выплата по депозиту суммой \(depositeMoney) (ставка \(depositRate)%) через \(years) года/лет будет \(sumOfpercent)% что примерно равно \(depositInterest) в рублевом эквиваленте")
    return depositInterest
}


depositeCalculator(depositeMoney: 100, depositRate: 10, years: 2)
