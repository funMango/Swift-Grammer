//
//  closeTen.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runCloseTen() {
    let firstNumber = inputNumber(1)
    let secondNumber = inputNumber(2)
    let answer = Close10(firstNumber, secondNumber)
    print(answer)
}


func Close10(_ firstNumber: Int, _ secoondNumber: Int) -> Int {
    let diffFirst = abs(firstNumber - 10)
    let diffSecond = abs(secoondNumber - 10)
    
    if diffFirst == diffSecond { return 0 }
    if diffFirst > diffSecond { return diffSecond }
    else if diffSecond > diffFirst { return diffFirst }
    return 0
}


