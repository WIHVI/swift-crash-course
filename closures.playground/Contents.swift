import Foundation

/* Closures in Swift are self-contained blocks of functionality that can be passed around and used in your code.
 They are similar to blocks in Objective-C and lambdas in other programming languages. Closures can capture and
 store references to any constants and variables from the context in which they are defined, allowing them to
 access and manipulate those values even after the original scope has exited. This feature makes closures
 powerful tools for writing flexible and expressive code. */

// Here's a breakdown of key concepts related to closures in Swift:

/* 1. Syntax: Closures in Swift have a concise syntax. They can be defined using braces {},
 and can capture values from their surrounding context.
 let closureName: (Parameters) -> ReturnType = { /* Closure body */ } */

let greet = {
    print("Hello, world!")
}
greet() // Prints: Hello, world!

/* 2. Capture Lists: Closures can capture and store references to any constants and variables from the
 surrounding context in which they are defined. This behavior is known as capturing values, and it enables
 closures to access and manipulate those values even if they are no longer in scope. */

var counter = 0
let incrementCounter = {
    counter += 1
    print(counter)
}
incrementCounter() // Prints: 1
incrementCounter() // Prints: 2

// 3. Parameter and Return Types: Closures can take parameters and return values, just like regular functions.
let add: (Int, Int) -> Int = { (a, b) in
    return a + b
}
let result = add(3, 5) // result is 8

// 4. Trailing Closures: If a closure is the last argument to a function, it can be written outside of the
// parentheses. This is called a trailing closure.
func someFunctionThatTakesAClosure(closure: () -> Void) {
    // Function body
}
// Using a trailing closure
someFunctionThatTakesAClosure {
    // Closure body
}

/* 5. Escaping Closures: An escaping closure is a closure that's called after the function it was passed to returns.
 In Swift, closures are non-escaping by default. To allow a closure to escape, you need to mark the parameter
 with '@escaping'. */
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}

/* Autoclosures: An autoclosure is a closure that automatically wraps an expression into a closure.
 It's indicated by '@autoclosure' attribute. Autoclosures are useful when you want to delay evaluation of
 an expression until it's needed, to improve performance. */
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count) // Prints: 5
print("Now serving \(customerProvider())!") // Prints: Now serving Chris!
print(customersInLine.count) // Prints: 4


// Examples:

//"----------------"//
func customAdd(
    _ a: Int,
    _ b: Int,
    using function: (Int, Int) -> Int
) -> Int {
    function(a, b)
}
// calling the function
customAdd(
    1,
    2,
    using: {(a, b) -> Int in a + b}
)
// trailing closure: if there is a closure at the end of the function
customAdd(
    3,
    4
) {(a, b) -> Int in a + b}
// another woy of calling the function
customAdd(5, 6) {$0 + $1}

//"----------------"//
let ages = [30, 20, 40, 15]

ages.sorted(by: {(a: Int, b: Int) -> Bool in
    a < b
})
ages.sorted(by: >)

//"----------------"//
func addTenTo(_ value: Int) -> Int {
    value + 10
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int {
    function(value)
}

doAddition(
    on: 10
) { (value: Int) -> Int in
    value + 20
}

doAddition(
    on: 10,
    using: addTenTo
)
