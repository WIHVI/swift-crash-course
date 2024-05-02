import Foundation

/* In Swift, Optionals are a fundamental concept used to represent the absence of a value. They allow you to
 express the possibility that a value may be missing, rather than forcing you to use placeholder values like
 'null' or 'nil' as in some other languages. */

/// What is an Optional?
/* An Optional in Swift is an enumeration with two possible states: 'some' and 'none'. It's a way to declare
 variables or properties that might not contain a value at all. This is particularly useful in scenarios
 where a value might be absent, such as when reading from a file, receiving input from a user, or accessing
 data from a network request. */

/// Declaring Optionals
// You can declare an Optional of any type by appending a question mark ? to the type name. For example:

var optionalInt: Int?

/// Initializing Optionals
// Optionals are initialized to 'nil' by default if no initial value is provided. For example:

var optionalDouble: Double? = nil

/// Unwrapping Optionals
// To access the value inside an Optional, you need to unwrap it. There are several ways to unwrap an Optional:

/* 1. Forced Unwrapping: Use the exclamation mark ! after the Optional variable name. This tells Swift that
 you're sure the Optional contains a value, and it should be unwrapped. */

let optionalString: String? = "Hello"
let unwrappedString: String = optionalString!

// However, if you force unwrap an Optional that is nil, your program will crash with a runtime error.

/* 2. Optional Binding: Use 'if' 'let' or 'guard let' to safely unwrap an Optional and assign its value to a
 new constant or variable within a conditional statement. */

if let unwrappedString = optionalString {
    // Use unwrappedString safely here
} else {
    // OptionalString is nil
}

/* 3. Nil Coalescing Operator ('??'): Provides a default value if the Optional is 'nil'. */

let unwrappedStr = optionalString ?? "Default Value"

/// Optional Chaining
/* Optional chaining is a mechanism in Swift for calling properties, methods, and subscripts on an Optional
 that might be 'nil'. If any link in the chain is 'nil', the entire chain evaluates to 'nil'. */

// let length = myOptionalInstance?.property?.count

/// Implicitly Unwrapped Optionals
/* An implicitly unwrapped Optional is declared using an exclamation mark '!' instead of a question mark '?'.
 It implies that you're sure the Optional will always have a value after the first assignment, so you can
 unwrap it without checking for 'nil'. */

var implicitlyUnwrappedOptional: Int! = 5
let unwrappedValue: Int = implicitlyUnwrappedOptional

// However, if you try to access an implicitly unwrapped Optional that is nil, your program will crash, similar to forced unwrapping.

/// When to Use Optionals?
/* Use Optionals when you need to represent the absence of a value in your code. They help make your code
 safer by forcing you to handle the possibility of missing values explicitly. */

/// More Examples

let age1: Int? = nil

if age1 != nil {
    "Age is there. Its value is \(age1)"
} else {
    "No age is present"
}

if let age1 {
    "Age is there. Its value is \(age1)"
} else {
    "No age is present"
}

func checkAge1() {
    guard age1 != nil else {
        "Age is nil"
        return
    }
    "Age is not nil"
}
checkAge1()

/* --------------------------------- */

let age2: Int? = 0

func checkAge2() {
    guard let age2 else {
        "Age is nil"
        return
    }
    "Age is not nil"
}
checkAge2()

/* --------------------------------- */

switch age1 {
case .none:
    "Age1 has no value"
case let .some(value):
    "Age1 has the value of \(value)"
}

/* --------------------------------- */

if age2 == 0 {
    "Age2 is 0"
} else {
    "Age2 is not 0"
}

if age2 == .some(0) {
    "Age2 is 0"
} else {
    "Age2 is not 0"
}

/* --------------------------------- */

struct Person {
    let name: String
    let address: Address?
    struct Address {
        let firstLine: String?
    }
}


let foo: Person = Person(name: "Foo", address: nil)

if let fooFirstAddressLine = foo.address?.firstLine {
    fooFirstAddressLine
} else {
    "Foo doesn't have an address with first line."
}


let bar: Person? = Person(name: "Bar", address: Person.Address(firstLine: nil))

if bar?.name == "Bar", bar?.address?.firstLine == nil {
    "Bar's name is Bar and has no first line address."
} else {
    "Seems like something int't working right."
}


let baz: Person? = Person(name: "Baz", address: Person.Address(firstLine: "Baz first line"))

switch baz?.address?.firstLine {
case .none:
    "Baz first address line is nil"
case let .some(firstLine) where firstLine.starts(with: "Baz"):
    "Baz first address line is '\(firstLine)'"
case let .some(firstLine):
    "Baz first address line is \(firstLine)"
}

/* --------------------------------- */

func getFullName(firstName: String, lastName: String?) -> String? {
    guard let lastName else {
        return nil
    }
    return "\(firstName) \(lastName)"
}

getFullName(firstName: "Foo", lastName: "Bar")

/// Conclusion
/* Optionals are a powerful feature in Swift that allows you to work with values that might be absent. They
 provide safety and clarity in your code by making it explicit when a value might be missing, thereby helping
 to prevent runtime errors. Understanding how to work with Optionals effectively is essential for writing
 robust and reliable Swift code. */

