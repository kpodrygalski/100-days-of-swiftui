import Cocoa

// Dzień 9
// Jak tworzyć i używać closures

func greetPerson() -> () {
    print("Hello, Person!")
}

var greetCopy = greetPerson
greetCopy()

let sayHello = {
    print("Hello, there!")
}
sayHello()

let sayHelloTo = { (name: String) -> String in
    "Hello, \(name)"
}
print(sayHelloTo("Jack"))

func getUserData(for id: UInt32) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (UInt32) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam1 = team.sorted(by: captainFirstSorted)
print(captainFirstTeam1)

let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

// Jak używać closures i składni skróconej

let reverseTeam = team.sorted {
    return $0 > $1
}

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// Jak akceptować funkcje jako parametry
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

makeArray(size: 10) {
    Int.random(in: 1...100)
}

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("First")
} second: {
    print("Second")
} third: {
    print("Third")
}


// Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let result = luckyNumbers
    .filter { $0 % 2 != 0 } // Filtrujemy tylko nieparzyste liczby
    .sorted() // Sortujemy w porządku rosnącym
    .map { "\($0) is a lucky number" } // Mapujemy do odpowiedniego formatu

result.forEach { print($0) } // Wypisujemy każdy element na nowej linii

