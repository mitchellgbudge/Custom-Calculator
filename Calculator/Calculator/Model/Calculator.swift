//
//  Calculator.swift
//  Calculator
//
//  Created by Mitchell Budge on 12/3/19.
//  Copyright © 2019 Mitchell Budge. All rights reserved.
//

import Foundation

class Calculator {
    var firstOperand = ""
    var secondOperand = ""
    var operatorType: Operator?
    
    func calculate() -> String? {
        if !firstOperand.isEmpty,
            !secondOperand.isEmpty,
            let operatorType = operatorType,
            let firstNumber = Double(firstOperand),
            let secondNumber = Double(secondOperand) {
            switch operatorType {
            case .addition:
                return String(firstNumber + secondNumber)
            case .subtraction:
                return String(firstNumber - secondNumber)
            case .multiplication:
                return String(firstNumber * secondNumber)
            case .division:
                if secondNumber != 0 {
                    return String(firstNumber / secondNumber)
                } else {
                    return "Error"
                }
            }
        }
        return nil
    }
    
}


enum Operator: String {
    case addition = "+"
    case subtraction = "−"
    case multiplication = "×"
    case division = "÷"
}
