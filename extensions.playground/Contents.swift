import Foundation

/* In Swift, extensions are a powerful tool that allows you to add new functionality to existing types.
 This can be done for types you've defined yourself or even the built-in types that come with Swift. */

/// Examples:

extension Int {
  func isEven() -> Bool {
    return self % 2 == 0
  }
}

let number = 10
if number.isEven() {
  print("Even number")
}


/* --------------------------------- */

struct Person {
    let firstName: String
    let lastName: String
}

extension Person {
    init(fullName: String) {
        let components = fullName.components(separatedBy: " ")
        self.init(
            firstName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    }
}

let person = Person(fullName: "Foo Bar")
person.firstName
person.lastName

/* --------------------------------- */

// Define a basic struct
struct Point {
    var x: Double
    var y: Double
}

// Extend the Point struct to add a new method
extension Point {
    func distance(to otherPoint: Point) -> Double {
        let deltaX = self.x - otherPoint.x
        let deltaY = self.y - otherPoint.y
        return (deltaX * deltaX + deltaY * deltaY).squareRoot()
    }
}

// Use the extension method
let point1 = Point(x: 0, y: 0)
let point2 = Point(x: 3, y: 4)
let distance = point1.distance(to: point2)

/* --------------------------------- */

protocol GoesVroom {
    var vroomValue: String { get }
    func goVroom() -> String
}

extension GoesVroom {
    func goVroom() -> String {
        "\(self.vroomValue) goes vroom!"
    }
}

struct Car {
    let manufactuer: String
    let model: String
}

let modelX = Car(manufactuer: "Tesla", model: "X")

extension Car: GoesVroom {
    var vroomValue: String {
        "\(self.manufactuer) model \(self.model)"
    }
}

modelX.vroomValue
modelX.goVroom()

extension GoesVroom {
    func goVroomVroomEvenMore() -> String {
        "\(self.vroomValue) is vrooming even more!"
    }
}

modelX.goVroomVroomEvenMore()

/* --------------------------------- */

class MyDouble {
    let value: Double
    
    init(value: Double) {
        self.value = value
    }
}

extension MyDouble {
    convenience init() {
        self.init(value: 0)
    }
}

let myDouble = MyDouble()
myDouble.value

/* --------------------------------- */
