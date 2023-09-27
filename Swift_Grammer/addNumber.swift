//
//  addNumber.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runAddNumber() {
    let firstNumber = inputNumber(1)
    let secondNumber = inputNumber(2)
    print("연산결과: \(addNumber(firstNumber, secondNumber))")
}

func inputNumber(_ order: Int) -> Int{
    print("\(order)번째 수:", terminator: " ")
    return Int(readLine()!)!
}

func addNumber(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}
