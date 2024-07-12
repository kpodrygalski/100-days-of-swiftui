import Cocoa

// Dzień 5
// Jak sprawdzić, czy warunek jest prawdziwy, czy fałszywy

let score: UInt8 = 85

if score > 80 {
    print("Good job!")
}

let speed: UInt8 = 60
let percentage: UInt8 = 75
let age: UInt8 = 28

if speed >= 60 {
    print("Speed is ok.")
}

if percentage < 85 {
    print("Sorry, test failed!")
}

if age >= 30 {
    print("You are eligable to vote.")
}

let ourName: String = "Dave Lister"
let friendName: String = "Arnold Riwner"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
} else {
    print("It's \(friendName) vs \(ourName)")
}

var numbers: [Int] = [1, 2, 3]
numbers.append(4)
if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"

if country == "Australia" {
    print("G-Day!")
}

let username = "Taylor Swift"

if username != "Anonymous" {
    print("Welcome \(username)")
}

let temp: UInt8 = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

if temp > 20 || temp < 30 {
    print("It's a nice day too.")
}

let userAge: UInt8 = 14
let hasParentalConsent: Bool = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

// if - else if - else

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport: TransportOption = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if  transport == .bicycle {
    print("I hope there is a bike path.")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

// Switch

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast: Weather = .snow

switch forecast {
case .sun:
    print("Sunny day.")
case .rain:
    print("Take an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place: String = "Metropolice"

switch place {
case "Gotham":
    print("Batman")
case "Mega-City One":
    print("Judge Dredd")
case "Wakanda":
    print("Black Panther")
default:
    print("Unknown")
}

// Ternary conditional operator - ?
let someAge: UInt8 = 18
//            W (What)      ? true : false
let canVote = someAge >= 18 ? true : false

let names: [String] = ["Jack", "Roscoe", "Sarah"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) peopele"

enum Theme {
    case light, dark, system
}

let theme: Theme = .dark
let background = theme == .dark ? "black" : "white"
