import Cocoa

// Dzień 2

// Jak przechowywać liczby zmiennoprzecinkowe (Double)?
let fNumber = 0.1 + 0.2
print(fNumber)

let a = 1
let b = 2.0
// Int(b) -> rzutowanie zmiennej b na typ Int.
let c = a + Int(b)
// let c = Double(a) + b -> rzutowanie zmiennej a na typ Double.

let double1 = 3.1
let double2 = 3123.3131
let double3 = 3.0
let int1 = 3

var actorName = "Nicolas Cage"
actorName = "John Travolta"
//actorName = 47 - Niedozwolona operacja. actorName może przechowywać tylko i wyłącznie String.

// Swift używa również CGFloat.

// Praca ze zmiennymi true/false (Bool) w języku Swift.
let randomNumber = 160
let cityName = "london.jpg"

print(randomNumber.isMultiple(of: 4))
print(cityName.hasSuffix(".jpg"))

let goodDog = true
let isShoppingDone = false

var isUserAuthenticated = false
// Zmiana statusu dla zmiennej isUserAuthenticated na true (wykorzystanie ! - negacji).
isUserAuthenticated = !isUserAuthenticated
// Zmiana statusu z false na true / true na false.
isUserAuthenticated.toggle()

// Jak łączyć ze sobą łańcuchy znaków.
// String + String = konkatenacja stringów.
let firstString = "Hello, "
let secondString = "World!"

let worldGreetings = firstString + secondString

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action

let someCode = "0" + "6" + "4" + "4"
print(someCode)

// Interpolacja stringów --> \()

let favouriteSecretNumber = 8
print("\(people) gonna \(action)! My code: \(someCode) --> Favourite secret number: \(favouriteSecretNumber)")

// TODO: Checkpoint 1
let celsius = 26.0
let fahrenheit = (celsius * 9.0)/5.0 + 32.0
print("Celsius = \(celsius) --- Fahrenheit = \(fahrenheit)")

// TODO: https://www.hackingwithswift.com/quick-start/beginners/how-to-store-ordered-data-in-arrays
