//
//  absoluteValue.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runAbsoluteValue() {
    let firstNumber = inputNumber(1)
    let secondNumber = inputNumber(2)
    print("결과 확인: \(getAbsDiff(firstNumber, secondNumber))")
}

func getAbsDiff(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    return abs(firstNumber - secondNumber)
}
