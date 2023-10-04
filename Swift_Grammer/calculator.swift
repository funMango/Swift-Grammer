//
//  calculator.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/22.
//

import Foundation

func runCalculator() {
    while true {
        print("첫 번째 정수를 입력하세요: ", terminator: "")
        let first = Int(readLine()!)!
        print("두 번째 정수를 입력하세요: ", terminator: "")
        let second = Int(readLine()!)!
        
        print("1. 더하기 2.빼기 : ", terminator: "")
        let operation = Int(readLine()!)!
            
        switch operation {
            case 1 :
                print("더하기 연산 결과는 \(first + second)입니다.")
            case 2 :
                print("더하기 연산 결과는 \(first - second)입니다.")
            default:
                print("잘못된 숫자입니다.")
        }
                        
        print("다시 실행 하시겠습니까? (Y/N) ", terminator: "")
        let inputReplay = readLine()!
        print("")
        if (inputReplay == "N") {
            break
        }
    }
    
    print("종료되었습니다.")
}
