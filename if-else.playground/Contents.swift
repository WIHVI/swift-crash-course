import Foundation

let myName: String = "Foo"
let myAge: Int = 20
let yourName: String = "Bar"
let yourAge: Int = 30

if myName == "Foo" && myAge == 30 {
    "Name is Foo, Age is 30"
} else if myAge == 20 {
    "I only guessed the age right"
} else {
    "I don't know what I'm doing"
}

if myName == "Foo" || myAge == 30 {
    "Either Name is Foo, Age is 20 or both"
} else {
    "I don't know what I'm doing"
}

if myName == "Foo" && myAge == 20 ||
    yourName == "Foo" && yourAge == 20 {
        "My name is Foo and I'm 20...OR...Your name is Bar and you are 20"
    }

if (myName == "Foo" && myAge == 20) &&
    (yourName == "Foo" && yourAge == 20) {
        "My name is Foo and I'm 20...OR...Your name is Bar and you are 20"
} else {
    "Hmmm, that didn't work well"
}

/* In Swift, the 'if-else' statement is a fundamental control flow structure used to conditionally execute code
 blocksbased on certain conditions. It allows you to specify different paths of execution depending on whether
 a givencondition evaluates to true or false. */

/// 1. Syntax:
// The basic syntax of the 'if-else' statement in Swift is as follows:
/* if condition {
    Code to execute if the condition is true
} else {
    Code to execute if the condition is false
} */

// Optionally, you can use additional 'else if' clauses to check multiple conditions:
/* if condition1 {
    Code to execute if condition1 is true
} else if condition2 {
    // Code to execute if condition2 is true
} else {
    Code to execute if all conditions are false
} */

/// 2. Usage:
// Single Condition: Use 'if' when you want to execute a block of code only if a single condition is true.

/* Multiple Conditions: Use 'else if' when you want to check multiple conditions sequentially, and only execute the
 block of code corresponding to the first condition that evaluates to true. If none of the conditions are true,
 the 'else' block (if present) will be executed. */

// Default Case: The 'else' block, if provided, executes when none of the preceding conditions are true.

/// 3. Evaluation:
// The condition inside the 'if' statement must be a boolean expression, meaning it evaluates to either 'true' or 'false'.

/* If the condition is true, the code inside the corresponding block is executed. Otherwise, if there's an 'else if', 
 the next condition is evaluated, and so on until a true condition is found or the 'else' block (if present) is executed. */

/// 4. Nested if-else:
// You can nest 'if-else' statements within each other to create more complex conditional logic.
/* if condition1 {
    if nestedCondition {
        // Code to execute if both condition1 and nestedCondition are true
    } else {
        // Code to execute if condition1 is true but nestedCondition is false
    }
} else {
    // Code to execute if condition1 is false
} */

/// 5. Ternary Conditional Operator:
// Swift also provides a compact way to write simple 'if-else' statements using the ternary conditional operator ('? :').
// let result = condition ? valueIfTrue : valueIfFalse
// This assigns 'valueIfTrue' to 'result' if 'condition' is true, otherwise 'valueIfFalse' is assigned.

/// 6. Switch vs. if-else:
/* While 'if-else' statements are used for handling conditions based on boolean expressions, 'switch' statements
 are used for handling multiple possible cases or matching specific values. */
/* switch someValue {
    case value1:
        // Code to execute if someValue equals value1
    case value2:
        // Code to execute if someValue equals value2
    default:
        // Code to execute if someValue doesn't match any case
} */

/// 7. Braces:
/* In Swift, braces '{}' are mandatory even if there's only one statement inside the 'if' or 'else' block.
 This enhances code clarity and prevents common errors. */
