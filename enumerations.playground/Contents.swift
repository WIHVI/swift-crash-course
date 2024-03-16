import Foundation

/* Enumerations, or enums, in Swift are a powerful feature that allows you to define a group of related values
 in a type-safe way. They provide a convenient and expressive way to work with sets of related values. */

/// 1. Definition
enum CompassPoint {
    case north
    case south
    case east
    case west
}

/// 2. Accessing Enumerations
let direction = CompassPoint.west

/// 3. Switch Statements
switch direction {
case .north:
    "Heading north"
    break
case .south:
    "Heading south"
    break
case .east:
    "Heading east"
    break
case .west:
    "Heading west"
    break
}

/// 4. Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

let productBarcode = Barcode.upc(8, 85909, 51226, 3)

switch productBarcode {
case .upc(let int, let int2, let int3, let int4):
    "\(int) \(int2) \(int3) \(int4)"
case .qrCode(let string):
    string
}

/* --------------------------------- */

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

// Different ways of creating a switch statement
switch wwwApple {
case .fileOrFolder(path: let path, name: let name):
    path
    name
case .wwwUrl(path: let path):
    path
case .song(artist: let artist, songName: let songName):
    artist
    songName
}

switch wwwApple {
case .fileOrFolder(let path, let name):
    path
    name
case .wwwUrl(let path):
    path
case .song(let artist, let songName):
    artist
    songName
}

switch wwwApple {
case let .fileOrFolder(path, name):
    path
    name
case let .wwwUrl(path):
    path
case let .song(artist, songName):
    artist
    songName
}

// If Case
if case let .wwwUrl(path) = wwwApple {
    path
}

// Ignore values inside of enum cases
let withoutYou = Shortcut.song(artist: "SymphonyX", songName: "Without you")

if case let .song(_, songName) = withoutYou {
    songName
}

/// 5. Methods and Properties
enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var getManufacturer: String {
        switch self {
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            manufacturer
        }
    }
}

let car = Vehicle.car(manufacturer: "Tesla", model: "X")
let bike = Vehicle.bike(manufacturer: "HD", yearMade: 1987)

car.getManufacturer
bike.getManufacturer

/// 6. Raw Values
enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.brother.rawValue

/* --------------------------------- */

enum FavoritesEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoritesEmoji.allCases
FavoritesEmoji.allCases.map(\.rawValue)

if let blush = FavoritesEmoji(rawValue: "😊") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesn't exist"
}

if let snow = FavoritesEmoji(rawValue: "❄️") {
    "Found the snow emoji"
    snow
} else {
    "This emoji doesn't exist"
}

/// 7. Mutating members of enums
enum Height {
    case short, medium, long
    
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()

/// 8. Recursive Enumerations
// Enumerations can be recursive, meaning they can have cases that associate with the enumeration type itself.

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

/* --------------------------------- */

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    func calculateResult(of operation: IntOperation? = nil) -> Int {
        switch operation ?? self {
        case .add(let int, let int2):
            return int + int2
        case .subtract(let int, let int2):
           return int - int2
        case .freeHand(let intOperation):
            return calculateResult(of: intOperation)
        }
    }
}

let freeHand = IntOperation.freeHand(.add(2, 3))
freeHand.calculateResult()
