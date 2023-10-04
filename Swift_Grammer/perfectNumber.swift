//
//  perfectNumber.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runPerfectNumber() {
    let startNum = inputNum()
    let endNum = inputNum()
    
    print("\(startNum)~\(endNum)까지의 완전수:", terminator: " ")
    for number in startNum...endNum {
        if isPerfectNum(number) {
            print(number, terminator: " ")
        }
    }
}

func isPerfectNum(_ number: Int) -> Bool {    
    return number == sumOfDivisors(number)
}

func sumOfDivisors(_ number: Int) -> Int {
    var sum = 0
    let end = Int(floor(sqrt(Double(number))))
    
    for target in 1...end {
        if number % target == 0 {
            sum += target
            if target != number / target {
                sum += number / target
            }
        }
    }
            
    return sum - number
}





