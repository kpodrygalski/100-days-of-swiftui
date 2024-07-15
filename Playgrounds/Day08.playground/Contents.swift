import Cocoa

// Dzień 8
// Jak podać domyślne wartości parametrów

// Void == ()
// end: UInt8 = 12 - domyślna wartość to 12
func printTimesTables(for number: UInt8, end: UInt8 = 12) -> Void {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
print()
printTimesTables(for: 10)

var characters: [String] = ["Lara", "Luna", "Lena", "Lana"]
print(characters.count)
characters.removeAll()
print(characters.count)

// Jak radzić sobie z błędami w funkcjach
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let passwordToCheck = "12345"
do {
    let result = try checkPassword(passwordToCheck)
    print(result)
} catch PasswordError.short {
    print("Your password is too short.")
} catch PasswordError.obvious {
    print("Your password is too obvious.")
} catch {
    print("An error occured: \(error.localizedDescription)")
}

// try!
//let result2 = try! checkPassword(passwordToCheck)
//print(result2)

// Checkpoint 4
// Definiowanie typów błędów
enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

// Funkcja do znajdowania całkowitego pierwiastka kwadratowego
func integerSquareRoot(of number: Int) throws -> Int {
    // Sprawdzanie, czy liczba jest w zakresie
    guard number >= 1 && number <= 10_000 else {
        throw SquareRootError.outOfBounds
    }
    
    // Szukanie całkowitego pierwiastka kwadratowego
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    
    // Jeśli nie znaleziono pierwiastka
    throw SquareRootError.noRoot
}

// Przykładowe wywołanie funkcji
do {
    let result = try integerSquareRoot(of: 25)
    print("Integer square root is \(result)")
} catch SquareRootError.outOfBounds {
    print("Error: Number is out of bounds")
} catch SquareRootError.noRoot {
    print("Error: No integer square root found")
} catch {
    print("An unexpected error occurred: \(error)")
}
