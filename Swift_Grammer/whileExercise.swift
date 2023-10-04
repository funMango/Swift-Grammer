//
//  whileExercise.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/22.
//

import Foundation

func runWhileExercise() {
    while (true) {
        print("정수 입력: ", terminator: "")
        let number = Int(readLine()!)!
        
        if number > 10 {
            print("종료되었습니다.")
            break
        }
    }
}
