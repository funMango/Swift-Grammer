//
//  Stack_ex3.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/4/23.
//

import Foundation

func runStackEx3() {
    let infix = "2 + 3 / 3 * (4 - 1) + 8"
    let result = change(infix)
    print(result)
}

func change(_ infix: String) -> String {
    let op : [String: Int] = ["+": 1, "-": 1, "*": 2, "/": 2]
    var res = ""
    var stack = [String]()
    let arr = infix.map {String($0)}
            
    for s in arr {
        if isDecimal(s) {
            res += s
        } else if s == "(" {
            stack.append(s)
        } else if s == ")" {
            while true {
                let ele = stack.removeLast()
                if ele == "(" { break }
                res += ele
            }
        } else if op.keys.contains(s) {
            if !stack.isEmpty && stack.last != "(" && op[s]! <= op[stack.last!]! {
                res += stack.popLast()!
            }
            stack.append(s)
        }
    }
    
    while !stack.isEmpty {
        res += stack.popLast()!
    }
    
    return res
}

func isDecimal(_ s: String) -> Bool {
        return Int(s) != nil
}

// 후위표기법 관련 자료
// #1: https://wikidocs.net/192124
// #2: https://wikidocs.net/192123
