import Foundation

/* In Swift, operators are special symbols or keywords used to perform operations on variables and values.
   They are categorized into several types based on their functionality and usage. */

// Here's a comprehensive explanation of operators in Swift:

/// Arithmetic Operators:
// These operators are used for basic arithmetic operations.

// 1. Addition (+): Adds two values.
// 2. Subtraction (-): Subtracts the second value from the first.
// 3. Multiplication (*): Multiplies two values.
// 4. Division (/): Divides the first value by the second.
// 5. Remainder (%): Returns the remainder of the division operation.
// 6. Increment (+=): Adds a value to a variable and assigns the result to the variable.
// 7. Decrement (-=): Subtracts a value from a variable and assigns the result to the variable.

/// Comparison Operators:
// These operators are used to compare two values and determine their relationship.

// 1. Equal to (==): Checks if two values are equal.
// 2. Not equal to (!=): Checks if two values are not equal.
// 3. Greater than (>): Checks if the first value is greater than the second.
// 4. Less than (<): Checks if the first value is less than the second.
// 5. Greater than or equal to (>=): Checks if the first value is greater than or equal to the second.
// 6. Less than or equal to (<=): Checks if the first value is less than or equal to the second.

/// Logical Operators:
// These operators are used to perform logical operations on boolean values.

// 1. Logical NOT (!): Inverts the boolean value.
// 2. Logical AND (&&): Returns true if both boolean values are true.
// 3. Logical OR (||): Returns true if at least one boolean value is true.

/// Assignment Operators:
// These operators are used to assign values to variables.

// 1. Assignment (=): Assigns the value on the right to the variable on the left.
// 2. Compound assignment (+=, -=, =, /=, %=): Combines an arithmetic operation with assignment.

/// Range Operators:
// These operators are used to represent a range of values.

// 1. Closed Range (a...b): Represents a range that includes both endpoints a and b.
// 2. Half-Open Range (a..<b): Represents a range that includes the lower endpoint a but not the upper endpoint b.

///  Ternary Conditional Operator:
// This operator is a shorthand for if-else statement.

// 1. Ternary Conditional Operator (a ? b : c): Evaluates a condition and returns one of two possible values based on the result of the condition.

/// Nil-Coalescing Operator:
// This operator is used to provide a default value when dealing with optionals.

// 1. Nil-Coalescing Operator (a ?? b): Returns the value of a if it's not nil, otherwise returns b.

/// Bitwise Operators:
// These operators are used for bitwise operations.

// 1. Bitwise AND (&): Performs a bitwise AND operation.
// 2. Bitwise OR (|): Performs a bitwise OR operation.
// 3. Bitwise XOR (^): Performs a bitwise XOR (exclusive OR) operation.
// 4. Bitwise NOT (~): Inverts all bits in a value.
// 5. Left Shift (<<): Shifts the bits of a value to the left.
// 6. Right Shift (>>): Shifts the bits of a value to the right.

/// Custom Operators:
// Swift also allows you to define your own custom operators using 'operator' keyword.

/// Precedence and Associativity:
// Operators in Swift have precedence and associativity which determine the order of evaluation in complex expressions.

// 1. Precedence: Determines which operator is evaluated first in an expression.
// 2. Associativity: Determines the order in which operators of the same precedence are evaluated (left-to-right or right-to-left).

// In Swift, you can also use parentheses to explicitly specify the order of evaluation.

/// Examples:
// 1. Unary prefix
let unaryPrefix = !true

// 2. Unary postfix
let name = Optional("Foo")
let unaryPostfix = name!

// 3. Unary prefix
let add = 1 + 2
let fullName = "Foo" + " " + "Bar"
