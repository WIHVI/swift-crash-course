import Foundation

/* In Swift, collections are data structures that store multiple values. Swift provides three primary collection
 types: arrays, sets, and dictionaries, each serving a distinct purpose and optimized for specific use cases. */

/// Arrays
// An array is an ordered collection of values of the same type.

let numbers = [1, 2, 3, 4]
numbers.first
numbers.last
numbers.count
numbers.map(-)

/* --------------------------------- */

var mutatingNumbers = [3, 4, 5]

mutatingNumbers.append(6)
mutatingNumbers.insert(2, at: 0)
mutatingNumbers.insert(contentsOf: [0, 1], at: 0)

for number in mutatingNumbers where number % 2 == 0 {
    number
}

/* --------------------------------- */

numbers.map { (value: Int) -> Int in
    value * 2
}

numbers.filter { (value: Int) -> Bool in
    value >= 3
}

numbers.compactMap { (value: Int) -> String? in
    value % 2 == 0 ? String(value) : nil
}

/* --------------------------------- */

let stuff = [1, "a", 2, "b"] as [Any]

let intsInStuff = stuff.compactMap { (value: Any) -> Int? in
    value as? Int
}

/* --------------------------------- */

/// Sets
// A set is an unordered collection of unique values.

let uniqueNumbers = Set([1, 2, 1, 2, 3])
uniqueNumbers.count

let myNumbers = Set([1, 2, 3, nil, 4])

let notNilNumbers = Set(myNumbers.compactMap({ (value: Int?) -> Int? in
    value
}))

/* --------------------------------- */

var colors: Set = ["Red", "Green", "Blue"]
colors.insert("Yellow")
colors.remove("Green")
if colors.contains("Red") {
    print("Red is in the set")
}
for color in colors {
    print(color)
}

/* --------------------------------- */

/// Dictionaries
// A dictionary is an unordered collection of key-value pairs, where keys are unique.

var capitals = ["France": "Paris", "Italy": "Rome", "Japan": "Tokyo"]
capitals["Germany"] = "Berlin"
capitals.updateValue("Kyoto", forKey: "Japan")
capitals.removeValue(forKey: "Italy")
for (country, capital) in capitals {
    print("\(country): \(capital)")
}

/* --------------------------------- */

let userInfo = [
    "name": "Foo",
    "age": 20,
    "address": [
        "line": "address line 1",
        "postCode": "12345"
    ]
] as [String : Any]

userInfo["name"]
userInfo["age"]
userInfo["address"]
userInfo["address"]

userInfo.keys
userInfo.values

for (key, value) in userInfo {
    key
    value
}

for (key, value) in userInfo where value is Int {
    key
    value
}

for (key, value) in userInfo where value is Int && key.count > 2 {
    key
    value
}
