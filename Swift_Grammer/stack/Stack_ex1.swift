//
//  Stack_ex1.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/4/23.
//  각 괄호의 짝이 맞는지 확인하는 알고리즘

import Foundation

func runStackEx1() {
    let inputString = "({}[()]())"
    let result = isPair(inputString)
    print(result)
}

func isPair(_ str: String) -> Bool {
    var stack = [String]()
    for s in str {
        if ["}", "]", ")"].contains(s) {
            if stack.isEmpty { return false }
            if !isPair(String(stack.popLast()!), String(s)) { return false }
        } else {
            stack.append(String(s))
        }
    }
    return stack.isEmpty    
}

func isPair(_ sym: String, _ target: String) -> Bool {
    switch target {
    case "}":
        return sym == "{"
    case ")":
        return sym == "("
    case "]":
        return sym == "["
    default:
        return false
    }
}

