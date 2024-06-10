import Foundation

/* In Swift, equality and hashing are fundamental concepts that allow objects to be compared and used
 in collections such as sets and dictionaries. */

/// Equality
/* Equality in Swift is defined through the 'Equatable' protocol. This protocol requires the implementation of
 the equality operator '==' to compare two instances of a type. When a type conforms to 'Equatable', it gains the
 ability to be compared using '==' and '!='. */

// 'Equatable' Protocol
protocol Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool
}

// To conform to 'Equatable', a type must implement the '==' method.
struct Person: Equatable {
    var name: String
    var age: Int

    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
}

// In this example, two 'Person' instances are considered equal if they have the same 'name' and 'age'.

let person1 = Person(name: "Alice", age: 30)
let person2 = Person(name: "Alice", age: 30)
print(person1 == person2)

// Automatic Synthesis
/* For many types, Swift can automatically synthesize the '==' method. This automatic synthesis is available
 for types whose properties are also 'Equatable': */

/* struct Person: Equatable {
    var name: String
    var age: Int
}

 let person1 = Person(name: "Alice", age: 30)
 let person2 = Person(name: "Alice", age: 30)
 print(person1 == person2)  // true */

/// Hashing
/* Hashing is used to uniquely identify objects and is crucial for placing them in hash-based collections like 
 'Set' and 'Dictionary'. Swift achieves this through the 'Hashable' protocol, which refines 'Equatable'. This means
 that any type that conforms to 'Hashable' must also conform to 'Equatable'. */

// 'Hashable' Protocol

protocol Hashable: Equatable {
    func hash(into hasher: inout Hasher)
}

/* To conform to 'Hashable', a type must implement the 'hash(into:)' method, which takes a 'Hasher' instance and
 feeds it with the essential components of the instance. */

struct Animal: Hashable {
    var name: String
    var age: Int

    static func == (lhs: Animal, rhs: Animal) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(age)
    }
}

// In this example, the 'Animal' type provides its 'name' and 'age' properties to the 'Hasher' to generate a unique hash value.

// Automatic Synthesis
// Similar to 'Equatable', Swift can automatically synthesize the 'hash(into:)' method for types whose properties are also 'Hashable':

/*
 struct Person: Hashable {
     var name: String
     var age: Int
 }

 let person1 = Person(name: "Alice", age: 30)
 let person2 = Person(name: "Bob", age: 25)
 let peopleSet: Set<Person> = [person1, person2]
 print(peopleSet.contains(person1))  // true
 */

/* -------------------------------------------------------- */

enum AnimalType {
    case dog(breed: String)
    case cat(breed: String)
}

// Custom implementation of Equatable
extension AnimalType: Equatable {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case let (.dog(lhsBreed), .dog(rhsBreed)),
             let (.cat(lhsBreed), .cat(rhsBreed)):
                return lhsBreed == rhsBreed
        default:
            return false
        }
    }
}

struct Animal1: Equatable {
    let name: String
    let type: AnimalType
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.type == rhs.type
    }
}

let cat1 = Animal1(name: "Whiskers", type: .cat(breed: "Street cat"))
let cat2 = Animal1(name: "Whoosh", type: .cat(breed: "Street cat"))

if cat1 == cat2 {
    "They are equal becouse of their type"
} else {
    "They are not equal"
}

/* -------------------------------------------------------- */

struct House: Hashable {
    let number: Int
    let numberOfBedrooms: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    
    static func == (lhs: House, rhs: House) -> Bool {
        lhs.number == rhs.number
    }
}

let house1 = House(number: 123, numberOfBedrooms: 5)
let house2 = House(number: 123, numberOfBedrooms: 4)

house1 == house2

/* -------------------------------------------------------- */

// Simple enums without any raw values or any associated values is by default Hashable and Equatable
enum CarPart {
    case roof
    case tire
    case trunk
}

let uniqueParts: Set<CarPart> = [.roof, .tire, .roof, .trunk]
uniqueParts.count

/* -------------------------------------------------------- */

