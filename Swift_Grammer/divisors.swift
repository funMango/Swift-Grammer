//
//  divisors.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/25.
//

import Foundation

func runDivisor() {
    print("정수 입력:", terminator: " ")
    let inputNum = Int(readLine()!)!
    var divisors : [Int] = []
    
    for target in 1...inputNum {
        if inputNum % target == 0 { divisors.append(target) }
    }
    
    let divisorsString = divisors.map { String($0) }.joined(separator: " ")
    print("\(inputNum)의 약수: \(divisorsString)")
}

func runDivisors() {
    for number in 2...30 {
        var divisors : [Int] = []
        for target in 1...number {
            if number % target == 0 { divisors.append(target) }
        }
        
        let divisorsString = divisors.map { String($0) }.joined(separator: " ")
        print("\(number)의 약수: \(divisorsString)")
    }
}

