//
//  biggerNumber.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runBiggerNumber() {
    let firstNumber = inputNumber(1)
    let secondNumber = inputNumber(2)
    
    print("큰 수 확인: \(getBiggerNumber(firstNumber, secondNumber))" )
}

func getBiggerNumber(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    if firstNumber == secondNumber { return 0 }
        
    let result = firstNumber > secondNumber ? firstNumber : secondNumber
    return result
}
