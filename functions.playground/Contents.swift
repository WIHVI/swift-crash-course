import Foundation

/* Functions in Swift are essential building blocks of code that allow you to encapsulate a piece of
 functionality that can be reused throughout your program. They are defined using the func keyword. */

// Here's a comprehensive explanation of functions in Swift:

/// 1. Function Declaration:
/* A function in Swift is declared using the 'func' keyword followed by the function name and parameters (if any). 
 It has a return type, which can be void if the function doesn't return any value. */

/* func functionName(parameter1: Type, parameter2: Type, ...) -> ReturnType {
    // Function body
    // Code to be executed
    return // Optional return value
} */

/// 2. Parameters:
/* Functions can take zero or more parameters, each with a name and a type. Parameters are
 enclosed in parentheses following the function name. */
func greet(name: String) {
    print("Hello, \(name)!")
}

// Calling the function
greet(name: "John")

/// 3. Return Values:
/* Functions can return a value of a specific type using the '->' arrow syntax. If a function doesn't
 return a value, its return type is specified as 'Void', which is an empty tuple '()'. */
func add(a: Int, b: Int) -> Int {
    return a + b
}

add(a: 3, b: 5) // result will be 8

/// 4. Function Types:
/* In Swift, functions are first-class citizens, meaning they can be assigned to variables/constants,
 passed as arguments to other functions, and returned from functions. */
func multiply(a: Int, b: Int) -> Int {
    return a * b
}

var mathFunction: (Int, Int) -> Int = multiply
mathFunction(3, 4) // result will be 12

/// 5. Optional Return Types:
/* A function's return type can be optional by using '?' after the type. This allows the function to
 return 'nil' in addition to a non-nil value of the specified type. */
func divide(a: Double, b: Double) -> Double? {
    guard b != 0 else {
        return nil // Division by zero, return nil
    }
    return a / b
}

if let result = divide(a: 10, b: 2) {
    print("Result: \(result)")
} else {
    print("Cannot divide by zero")
}

/// 6. Default Parameter Values:
/* You can provide default values for parameters, allowing callers to omit them when calling the function. */
func greetings(name: String = "World") {
    print("Hello, \(name)!")
}

greetings() // Prints: Hello, World!
greetings(name: "Alice") // Prints: Hello, Alice!

/// 7. Variadic Parameters:
/* Functions can accept a varying number of parameters of the same type using variadic parameters.
 These are indicated by appending '...' after the parameter's type. */
func sum(_ numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

print(sum(1, 2, 3, 4)) // Prints: 10

/// 8. In-out Parameters:
/* By default, function parameters are constants. You can modify a parameter inside a function by marking
 it with the 'inout' keyword, which allows changes to the parameter to be reflected outside the function. */
func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 5
var y = 10
swapValues(&x, &y)
print("x is now \(x), y is now \(y)") // Prints: x is now 10, y is now 5

/// 9. Nested Functions:
/* You can define functions inside other functions. Nested functions can access variables from their enclosing function. */
func outerFunction() -> Int {
    var counter = 0
    
    func innerFunction() {
        counter += 1
    }
    
    innerFunction()
    return counter
}

print(outerFunction()) // Prints: 1

/// 10. Function Overloading:
/* You can define multiple functions with the same name but different parameter types or number of parameters.
 Swift determines which function to call based on the types and number of arguments provided. */
func process(value: Int) {
    print("Processing integer: \(value)")
}

func process(value: String) {
    print("Processing string: \(value)")
}

process(value: 5) // Calls the first function
process(value: "Hello") // Calls the second function

