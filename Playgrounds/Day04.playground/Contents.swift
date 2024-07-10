import Cocoa

// Dzień 4
// Jak korzystać z adnotacji typów

let surname: String = "Lasso"
var score: UInt8 = 0

let playerName: String = "Ray"
let luckyNumber: UInt8 = 8
let pi: Double = 3.14

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@rivss"]
var books: Set<String> = Set([
    "Swift Foundation",
    "Apple Developer Design"
])

let soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
var teams: [String] = [String]()
var cities: [String] = []

enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light
style = .dark

let username: String
username = "rivss"
print(username)

// Checkpoint 2
let items: [String] = ["CD", "Pencil", "Book", "Note", "Charger"]
print(items.count)

let favouriteAlbums: Set<String> = Set(["Album 1", "Album 2", "Album 2", "Album 3", "Album 4", "Album 2"])
print(favouriteAlbums)
print(favouriteAlbums.count)
