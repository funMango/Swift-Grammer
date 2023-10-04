//
//  divisor.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runDivisor_two() {
    let number = inputNum()
    let result = getSumDivisors(number, 1)
    print("\(number)의 약수의 합: \(result)")
}

func getSumDivisors(_ number: Int, _ current: Int) -> Int {
    if current == number { return current }
    
    if number % current == 0 {
        return current + getSumDivisors(number, current + 1)
    } else {
        return getSumDivisors(number, current + 1)
    }
}


func inputNum() -> Int {
    print("숫자를 입력하세요:", terminator: " ")
    return Int(readLine()!)!
}

