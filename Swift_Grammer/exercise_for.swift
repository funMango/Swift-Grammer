//
//  exercise_for.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/25.
//

import Foundation

func runExercis_for() {
    for number in (53...96).reversed() {
        print(number, terminator: " ")
    }
    print("\n")

    for number in stride(from: 21, through: 57, by: 2) {
        print(number, terminator: " ")
    }
    print("\n")
    
    print("정수입력: ", terminator: "")
    let inputNumber = Int(readLine()!)!
    for number in 1...inputNumber {
        print(number, terminator: " ")
    }
    print("\n")
    
    print("정수입력: ", terminator: "")
    let inputNumber2 = Int(readLine()!)!
    var current = 0
    for _ in 1...10 {
        current += inputNumber2
        print(current, terminator: " ")
    }
    print("\n")
    
    var sum = 0
    for number in stride(from: 3, to: 100, by: 3) {
        sum += number        
    }
    print(sum)
}


