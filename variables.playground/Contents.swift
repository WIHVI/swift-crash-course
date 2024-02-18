import Foundation

/// 'var' keyword

// In Swift, the 'var' keyword is used to declare mutable variables. When you declare a variable with 'var', you indicate that its value can be changed after it's been initialized.
// Swift provides type inference, so you don't always have to explicitly specify the type of the variable if the compiler can infer it from the assigned value.
// Variables declared with 'var' are scoped to the block of code in which they are defined. They can be accessed within that block and any nested blocks.

/// 'let' keyword

// In Swift, the 'let' keyword is used to declare constants. Constants are variables whose values cannot be changed after they are initialized. This means that once a value is assigned to a constant using the let keyword, it cannot be modified throughout the execution of the program.
// Constants in Swift can hold any type of value, including integers, floating-point numbers, strings, arrays, dictionaries, classes, structs, and enums.
// Constants have lexical scope, meaning they are only accessible within the block, function, or context in which they are defined.

// -------------------------------------------------------------------------------------- //

// In Swift, whether a variable's value changes the original object it was assigned to depends on the type of object and whether it's a value type or a reference type.
    
// 1. Value Types: When you assign a value type to a variable and then modify that variable, it creates a copy of the original value. Changes made to the variable won't affect the original value. Examples of value types in Swift include structures ('structs'), enumerations ('enums'), and basic types like 'Int', 'Double', 'String', etc.
var a = 5
var b = a // b is now a copy of a
b = 10 // Modifying b doesn't affect a

// 2. Reference Types: When you assign a reference type (e.g., class instances) to a variable and then modify that variable, it doesn't create a copy of the original object. Instead, both variables point to the same object in memory. Changes made through one variable will be reflected when accessing the object through the other variable.
class MyClass {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}

var obj1 = MyClass(value: 5)
var obj2 = obj1 // Both obj1 and obj2 point to the same object
obj2.value = 10 // Modifying obj2 also changes obj1
obj1.value // Output: 10
obj2.value // Output: 10

