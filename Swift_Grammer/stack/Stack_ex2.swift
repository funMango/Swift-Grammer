//
//  Stack_ex2.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/4/23.
//  후위표기식을 계산하는 알고리즘

import Foundation

func runStackEx2() -> Int {
    let input = "2 3 3 / 4 1 - * 8 + +" // 233/41-*8++
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
            stack.append(calulate(component, stack.removeLast(), stack.removeLast()))
        } else {
            stack.append(Int(component)!)
        }
        print(stack)
    }
    
    return stack.popLast()!
}

func calulate(_ sign: String, _ num2:Int, _ num1:Int) -> Int {
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
