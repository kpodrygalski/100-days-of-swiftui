import Cocoa

// Dzień 3
// Jak przechowywać uporządkowane dane w tablicach

// Array - Tablica
// Index w tablicy zaczyna się od 0.
var beatles = ["John", "Paul", "George", "Ringo"] // Array of Strings
let numbers = [4, 8, 15, 16, 23, 42] // Array of Int
let temperatures = [25.3, 28.2, 26.4] // Array of Double

print(beatles[0])
print(numbers[2])
print(temperatures[1])

beatles.append("Josh")
print(beatles)

// Tworzenie nowej tablicy, która będzie przechowywać dane typu Int.
var scores = Array<Int>()
scores.append(10)
scores.append(89)
scores.append(80)
print(scores[1])

var albums = Array<String>()
albums.append("Eyes Set to Kill")
albums.append("Red")
albums.append("Fearless")
print(albums)

// Skrócony zapis tworzenia nowej pustej tablicy.
var items = [String]()
items.append("Rubber")
items.append("CD Player")
items.append("DVD Player")
print(items.count)

items.remove(at: 1)
print(items.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// Jak przechowywać i znajdować dane w słownikach
// Tworzenie słownika w Swift --- [key:value]
var employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee)

// Optional - zmienna może zawierać wartość lub być ustawiona na nil.
// Za pomocą ?? możemy przypisać wartość domyślną.
print(employee["name"] ?? "NoName")
// Lub możemy skorzystać z default
print(employee["job", default: "NoJob"])
print(employee["location", default: "NoLocation"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

// Tworzenie pustego słownika --- [Typ1:Typ2]()
var heights = [String:Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String:String]()
archEnemies["Batman"] = "Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"
print(archEnemies.count)

// Jak używać zestawów do szybkiego wyszukiwania danych
// Zbiory nie pozwalają na przechowywanie duplikatów.
// Tworzenie nowego zbioru przechowującego typ danych String
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])
print(actors)

// Tworzenie pustego zbioru
var schoolItems = Set<String>()
schoolItems.insert("Pen")
schoolItems.insert("Book")
schoolItems.insert("Rubber")
print(schoolItems)

// Jak tworzyć i używać typu wyliczeniowego
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = .friday
print(day)
