//
//  CalculatorLogic.swift
//  Calculator-iOS
//
//  Created by Omkar Acharya on 8/29/18.
//  Copyright © 2018 Omkar Acharya. All rights reserved.
//

import Foundation
class CalculatorLogic{
    func calculate(firstNo: Int, secondNo: Int, operation: String) ->  Int{
        let firstNumber = firstNo
        let secondNumber = secondNo
        switch operation {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "X":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        default:
            return 0
        }
    }
}
