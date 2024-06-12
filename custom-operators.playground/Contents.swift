import Foundation

/* In Swift, custom operators allow you to define your own operators or modify existing ones to perform specific operations.
 These custom operators can help make your code more expressive and readable for certain tasks. */

let firstName: String = "Foo"
let lastName: String = "Bar"

let fullNane = firstName + lastName

/* -------------------------------------------------------- */

// Binary infix operator
func + (lhs: String?, rhs: String?) -> String? {
    switch (lhs, rhs) {
    case (.none, .none):
        return nil
    case let (.some(value), .none):
        return value
    case let (.none, .some(value)):
        return value
    case let (.some(lhs), .some(rhs)):
        return lhs + rhs
    }
}

let firstNameNillable: String? = "Foo"
let lastNameNillable: String? = "Bar"

let fullNaneNillable = firstNameNillable + lastNameNillable

/* -------------------------------------------------------- */

// Binary prefix operator
prefix operator ^
prefix func ^ (value: String) -> String {
    return value.uppercased()
}

let lowercaseName = "Foo Bar"
let uppercaseName = ^lowercaseName

/* -------------------------------------------------------- */

// Binary postfix operator

postfix operator *
postfix func * (value: String) -> String {
    return "*** \(value) ***"
}

let nameWithoutStars = "Foo Bar"
let nameWithStars = nameWithoutStars*

/* -------------------------------------------------------- */

