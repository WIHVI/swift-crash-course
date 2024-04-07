import Foundation

/* In Swift, protocols are a fundamental part of the language's design, enabling developers to define a blueprint
 of methods, properties, and other requirements that types can conform to. Protocols provide a way to define a
 set of behaviors or capabilities that can be adopted by classes, structs, or enums, without specifying how those
 behaviors are implemented. This allows for a high degree of flexibility and polymorphism in Swift code. */

/// 1. Definition and Syntax:
/* Protocols in Swift are defined using the protocol keyword, followed by the protocol's name. Inside the
 protocol body, you define the methods, properties, and other requirements that conforming types must implement. */

protocol CanBreathe {
    func breathe()
}

struct Animal: CanBreathe {
    func breathe() {
        "Animal is breathing..."
    }
}

struct Person: CanBreathe {
    func breathe() {
        "Person is breathing..."
    }
}

let dog = Animal()
dog.breathe()

let person = Person()
person.breathe()

/// 2. Protocol Extensions:
protocol CanJump {
    func jump()
}

extension CanJump {
    func jump() {
        "Jumping..."
    }
}

struct Cat: CanJump {}

let whiskers = Cat()
whiskers.jump()

/// 3. Properties and Methods:
protocol HasName {
    var name: String { get }
    var age: Int { get set }
    mutating func increaseAge()
}

extension HasName {
    func describeMe() {
        "Your name is \(name) and you are \(age) years old!"
    }
    
    mutating func increaseAge() {
        self.age += 1
    }
}

struct Dog: HasName {
    let name: String
    var age: Int
}

var woof = Dog(name: "Woof", age: 1)
woof.name
woof.age
woof.age += 1
woof.age
woof.describeMe()
woof.increaseAge()

/* --------------------------------- */

protocol Vehicle {
    var speed: Int { get set }
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(by value: Int) {
        self.speed += value
    }
}

struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}

var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed

/// "is" keyword
func describe(obj: Any) {
    if obj is Vehicle {
        "obj conforms to the Vehicle protocol"
    } else {
        "obj does not conform to the Vehicle protocol"
    }
}
describe(obj: bike)

/// "as?" keyword
func increaseSpeedIfVehicle(obj: Any) {
    if var vehicle = obj as? Vehicle {
        vehicle.speed
        vehicle.increaseSpeed(by: 10)
        vehicle.speed
    } else {
        "This was not a vehicle"
    }
}
increaseSpeedIfVehicle(obj: bike)

bike.speed
