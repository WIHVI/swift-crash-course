import Foundation

/* In Swift, classes are a fundamental building block of object-oriented programming (OOP).
 They allow you to define blueprints for creating objects that encapsulate data and behavior.  */

/* Properties: 
 Classes can have properties to store values associated with the class.
 Properties in Swift can be constants ("let") or variables ("var"), and they can have default values. */

/* Initializers:
 Initializers are special methods that are used to initialize an instance of a class.
 They are invoked when you create a new instance of a class.
 In Swift, every stored property must have a value before the initializer completes. */

/* Methods:
 Classes can have methods, which are functions associated with the class.
 These methods can perform operations on the class's properties and provide functionality. */

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)
foo.age
foo.increaseAge()
foo.age

let bar = foo
bar.age
bar.increaseAge()
bar.age
foo.age

// "===" checks if two variables are pointing to the same memory allocation
if foo === bar {
    "Foo and Bar point to the same memory"
} else {
    "They don't point to the same memory"
}

/* Inheritance:
 One of the key features of classes in Swift is inheritance. A class can inherit properties and methods 
 from another class. The subclass can add its own properties and methods,
 and it can also override existing methods of the superclass. */

class Animal {
    var species: String
    
    init(species: String) {
        self.species = species
    }
    
    func makeSound() {
        // generic sound for all animals
    }
    
    final func cannotOverride() {
            // This method cannot be overridden by subclasses
        }
}

class Dog: Animal {
    var breed: String
    
    init(breed: String) {
        self.breed = breed
        super.init(species: "Canine") // Call superclass initializer
    }
    
    override func makeSound() {
        "Woof!" // Override superclass method
    }
    
    func fetch() {
        // method specific to Dog class
    }
}

let myDog = Dog(breed: "Labrador")
myDog.species
myDog.makeSound()
myDog.fetch()

/* Access Control:
 Swift provides access control mechanisms to restrict access to parts of your code.
 You can use "public", "internal", "fileprivate", or "private" keywords to specify the
 level of access for classes, properties, and methods. */

// Example of access control in Swift

public class PublicClass {
    public var publicProperty: Int
    internal var internalProperty: String
    fileprivate var fileprivateProperty: Bool
    private var privateProperty: Double
    
    public init() {
        publicProperty = 0
        internalProperty = ""
        fileprivateProperty = false
        privateProperty = 0.0
    }
    
    public func publicMethod() {
        print("This is a public method")
    }
    
    internal func internalMethod() {
        print("This is an internal method")
    }
    
    fileprivate func fileprivateMethod() {
        print("This is a fileprivate method")
    }
    
    private func privateMethod() {
        print("This is a private method")
    }
}

/* --------------------------------- */

class Bird {
    private(set) var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}

let bird = Bird(age: 3)
bird.age
bird.increaseAge()
// bird.age += 1 

// Designated and Convenience initializers
class Tesla {
    let manufacturer: String = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    
    convenience init(model: String) {
        self.init(model: model, year: 2023)
    }
}

class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
}

let modelY = TeslaModelY()
modelY.manufacturer
modelY.model
modelY.year

// Deinitializer
class MyClass {
    init() {
        "Initialized"
    }
    
    func doSomething() {
        "Do something"
    }
    
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}

myClosure()
