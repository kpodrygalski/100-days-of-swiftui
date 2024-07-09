import Cocoa

// Dzień 1.

// 1. Tworzenie zmiennych i stałych w języku Swift.
// var - tworzenie zmiennej --- var nazwaZmiennej = wartosc
// Zmienne utworzone za pomocą var mogą ulec zmianie w przyszłości.
// Nazwy zmiennych w języku Swift zapisujemy w camelCase.
var greeting = "Hello, playground!"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

// let - tworzenie stałej --- let nazwaStalej = wartosc
let character = "IronMan"

// Odkomentowanie poniższej linii spowoduje błąd.
// character = "SpiderMan"

// Wyświetlanie zmiennej na ekranie.
// Aby wyświetlić zmienną na ekranie wykorzystujemy print()
var playerName = "Scott"
print(playerName)

playerName = "Sam"
print(playerName)

playerName = "Dean"
print(playerName)

let managerName = "Jack Doe"
let dogBread = "Samoyed"
let meaningOfLife = "How many roads myst a man walk down?"

// Jak tworzyć ciągi znaków w Swift? (String)
let actor = "Denzel Washington"
let filename = "new_york.jpg"
let result = "You lose! :("

// Aby wstawić
let quote = "Then he tapped a sign saying\"Believe\" and walked away."

// Multiline
let movie = """
"A day in
the life of an
Apple engineer
"""

// Sprawdzenie długości znaków --- .count
print(actor.count)

// Każdy znak z wielkiej litery --- .uppercased()
print(result.uppercased())

// Łańcuchy znaków w Swift są case sensitive. Czyli będzie różnica pomiędzy A day - a day.
// Jeśli pytamy Swift o jakieś dane (np. długość tekstu) - nie musimy używać na końcu () --- .count
// Ale jeśli chcemy by Swift coś na danej zmiennej wykonał --- używamy () --- .uppercased()

// .hasPrefix() --- sprawdza czy dany ciąg znaków zaczyna się od podanego fragmentu tekstu
print(movie.hasPrefix("A day"))

// .hasSuffix() --- sprawdza czy dany ciąg znaków kończy się na podany fragment tekstu
print(filename.hasSuffix(".jpg"))

// Praca z liczbami całkowitimy (Int - integer)
let myScore = 10

// Aby podzielić duże liczby możemy wykorzystać znak _
// Swift ignrouje znak _ w liczbach.
let reallyBigNumber = 100_000_000

print("My score: \(myScore)")
print("Really big number: \(reallyBigNumber)")

var counter = 10

// Skrót od counter = counter + 5
counter += 5
counter *= 2
counter -= 3
counter /= 2

print(counter)

let number = 120
// isMultiple - zwraca wartość true, jeśli podana wartość jest wielokrotnością podanej liczby
print(number.isMultiple(of: 3))

