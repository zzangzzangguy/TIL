import UIKit

protocol AbstractOperation {
    func operate(_ x: Double, _ y: Double) throws -> Double
}

class AddOperation: AbstractOperation {
    func operate(_ x: Double, _ y: Double) throws -> Double {
        return x + y
    }
}

class SubtractOperation: AbstractOperation {
    func operate(_ x: Double, _ y: Double) throws -> Double {
        return x - y
    }
}

class MultiplyOperation: AbstractOperation {
    func operate(_ x: Double, _ y: Double) throws -> Double {
        return x * y
    }
}

class DivideOperation: AbstractOperation {
    func operate(_ x: Double, _ y: Double) throws -> Double {
        if y == 0 {
            throw CalculatorError.divideByZero
        }
        return x / y
    }
}

class Calculator {
    func performOperation(_ operation: AbstractOperation, _ x: Double, _ y: Double) throws -> Double {
        return try operation.operate(x, y)
    }
}

// Calculator 클래스 이용하여 연산하기
let calculator = Calculator()
do {
    let resultAdd = try calculator.performOperation(AddOperation(), 5, 3)
    let resultSubtract = try calculator.performOperation(SubtractOperation(), 5, 3)
    let resultMultiply = try calculator.performOperation(MultiplyOperation(), 5, 3)
    let resultDivide = try calculator.performOperation(DivideOperation(), 5, 3)

    print("Addition:", resultAdd)
    print("Subtraction:", resultSubtract)
    print("Multiplication:", resultMultiply)
    print("Division:", resultDivide)
} catch {
    print("Error:", error)
}
