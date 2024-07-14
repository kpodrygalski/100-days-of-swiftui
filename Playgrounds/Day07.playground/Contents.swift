import Cocoa

// Dzień 7
// Jak ponownie wykorzystać kod z funkcjami

func showWelcome() {
    print("This is my welcome function.")
    print("It will show a welcome message.")
    print("Hello, World!")
}

showWelcome()

func printTimesTables(number: UInt8, end: UInt8) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

// Jak zwrócić wartości z funkcji

func rollDice() -> UInt8 {
    UInt8.random(in: 1...6)
}

let myDice = rollDice()
print(myDice)

func sayHello(to: String) -> String {
    "Hello, \(to)"
}

print(sayHello(to: "Jack"))

func canVote(age: UInt8) -> Bool {
    if age >= 18 {
        return true
    } else {
        return false
    }
}

let canYouVote = canVote(age: 19)
print(canYouVote)

func getUserData() -> (String, String) {
    return ("Secret", "User")
}

let (firstName, lastName) = getUserData()
print(getUserData())
print("FirstName: \(firstName), LastName: \(lastName)")

// Jak dostosować etykiety parametrów
func rollMagicDice(sides: UInt8, count: UInt8) -> [UInt8] {
    var rolls: [UInt8] = []
    
    for _ in 1...count {
        let roll = UInt8.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let magicRolls = rollMagicDice(sides: 6, count: 4)
print(magicRolls)

// Jeśli nie chcemy by nasz argument posiadał etykietę używamy _
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let isTextUppercase = isUppercase("Some text")

func sendGreetings(from name1: String, to name2: String) -> String {
    "Hello, \(name2) from \(name1)"
}

print(sendGreetings(from: "Konrad", to: "Jack"))
