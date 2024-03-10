import Foundation

/* In Swift, a structure is a user-defined data type that allows you to encapsulate related properties and
 behaviors into a single unit. It is a value type, meaning that when you create an instance of a structure and
 pass it around in your code, you are passing a copy of that instance rather than a reference to it.
 Structures are fundamental building blocks in Swift and are widely used for organizing and modeling data. */

// 1. Properties
struct Person {
    let name: String
    let age: Int
}

let foo = Person(name: "Foo", age: 20)
foo.name
foo.age

// 2. Initialization
struct ComodoreComputur {
    let name: String
    let manufacturer: String
    init(name: String) {
        self.name = name
        self.manufacturer = "Comodore"
    }
}

let c64 = ComodoreComputur(name: "C64")
c64.name
c64.manufacturer

// 3. Methods
struct Rectangle {
    let width: Double
    let height: Double
    var area: Double {
        width * height
    }
}

let rectangle = Rectangle(width: 21, height: 30)
rectangle.width
rectangle.height
rectangle.area

// 4. Mutating
struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int) {
        "Driving..."
        currentSpeed = speed
    }
}

let imutableCar = Car(currentSpeed: 50)
// imutableCar.drive(speed: 20) -> Cannot use mutating member on immutable value

var mutableCar = Car(currentSpeed: 30)
mutableCar.drive(speed: 50)
mutableCar.currentSpeed

var copy = mutableCar
copy.currentSpeed

mutableCar.drive(speed: 100)
mutableCar.currentSpeed
copy.currentSpeed

copy.drive(speed: 150)
copy.currentSpeed
mutableCar.currentSpeed

// 5. Custom copying
struct LivingThing {
    init() {
        "I am a living thing!"
    }
}

struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}

let bike1 = Bike(manufacturer: "Hd", currentSpeed: 22)
bike1.manufacturer
bike1.currentSpeed

let bike2 = bike1.copy(currentSpeed: 33)
bike2.manufacturer
bike2.currentSpeed
