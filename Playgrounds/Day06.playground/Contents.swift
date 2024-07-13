import Cocoa

// Dzień 6
// Jak używać pętli for do powtarzania pracy

let platforms: [String] = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

// ... - oznacza zakres - liczby z zakresu od 1 do 12 (wliczając 1 i 12)
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1...12 {
    print("the \(i) times table")
    
    for j in 1...12 {
        print("\t \(j) x \(i) is \(j * i)")
    }
    
    print()
}

// Zakres od 1 do 5
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

// Zakres od 1 do 4 (nie wliczamy 5)
for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

var lyric: String = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// Jak używać pętli while do powtarzania pracy
var countdown: UInt8 = 10

while countdown > 0 {
    print("Countdown: \(countdown)...")
    countdown -= 1
}

print("Blast off!")

// Generowanie losowej liczby z zakresu 1...10 Int.random(in: zakres)
let id: Int = Int.random(in: 1...1000)

// Generowanie losowej liczby z zakresu dla typu Double
let amount: Double = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

print("Critical Hit!")

// Checkpoint 3
for i in 1...100 {
    if (i.isMultiple(of: 3) && i.isMultiple(of: 5)) {
        print("\(i) --- FizzBuzz!")
    } else if i.isMultiple(of: 5) {
        print("\(i) --- Buzz!")
    } else if i.isMultiple(of: 3) {
        print("\(i) --- Fizz!")
    } else {
        print("\(i)")
    }
}
