//
//  Stack_ex2.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/4/23.
//

import Foundation

func runStackEx2() -> Int {
    let input = "81 3 - 4 /"
    let components = split(input)
    let result = calculate(components)
    return result
}

func split(_ input: String) -> [String] {
    return input.split(separator: " ").map { String($0) }
}

func calculate(_ components: [String]) -> Int {
    var stack = [Int]()
    for component in components {
        if ["+", "-", "*", "/"].contains(component) {
            stack.append(calulate(component, stack.removeFirst(), stack.removeLast()))
        } else {
            stack.append(Int(component)!)
        }
    }
    return stack.popLast()!
}

func calulate(_ sign: String, _ num1:Int, _ num2:Int) -> Int {
    switch sign {
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    case "/":
        return num1 / num2
    default:
        return 0
    }
}
