import Foundation

/* Generics in Swift are a powerful feature that allow you to write flexible and reusable functions, structures,
 and classes that can work with any type. They enable you to define placeholders for types, which are then
 replaced by actual types when the code is compiled. This helps in writing more concise and efficient code while
 ensuring type safety. */

/// Examples:

func perform1<N: Numeric>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N {
    op(lhs, rhs)
}

let plus = perform1(+, on: 5, and: 5)
let minus: Double = perform1(-, on: 5.5, and: 5.5)


func perform2<N>(
    _ op: (N, N) -> N,
    on lhs: N,
    and rhs: N
) -> N where N: Numeric {
    op(lhs, rhs)
}

perform2(+, on: 5, and: 5)
perform2(-, on: 5.5, and: 5.5)

/* --------------------------------- */

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping..."
    }
    
    func run() {
        "Running..."
    }
}

func jumpAndRun<T: CanJump & CanRun>(value: T) {
    value.jump()
    value.run()
}

let person = Person()

jumpAndRun(value: person)

/* --------------------------------- */

protocol View {
    func addSubView(_ view: View)
}

extension View {
    func addSubView(_ view: View) {
        // Empty by default
    }
}

struct Button: View {
    // Empty by default
}

protocol PresentableAsView {
    associatedtype ViewType: View
    func produceView() -> ViewType
    func configure(superView: View, thisView: ViewType)
    func present(view: ViewType, on superView: View)
}

extension PresentableAsView {
    func configure(superView: View, thisView: ViewType) {
        // Empty by default
    }
    func present(view: ViewType, on superView: View) {
        superView.addSubView(view)
    }
}

struct MyButton: PresentableAsView {
    func produceView() -> Button {
        Button()
    }
    
    func configure(superView: any View, thisView: Button) {
        
    }
}

extension PresentableAsView where ViewType == Button {
    func doSomethingWithButtom() {
        "This is a button!"
    }
}

let button = MyButton()
button.doSomethingWithButtom()

/* --------------------------------- */

extension [Int] {
    func average() -> Double {
        Double(self.reduce(0, +)) / Double(self.count)
    }
}

[1, 2, 3, 4].average()
