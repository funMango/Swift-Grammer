//
//  dividor.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runDividor() {
    let firstNumber = inputNumber(1)
    let secondNumber = inputNumber(2)
    print("결과 확인: \(isDivisible(firstNumber, secondNumber))")
}

func isDivisible(_ firstNumber: Int, _ secondNumber: Int) -> Bool {
    if firstNumber == 0 || secondNumber == 0 { return false }
    return firstNumber % secondNumber == 0
}
