//
//  diet.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/22.
//

import Foundation

func runDiet() {
    print("현제 몸무게: ", terminator: "")
    var curWeight = Int(readLine()!)!
    print("목표 몸무게: ", terminator: "")
    let targetWeight = Int(readLine()!)!
    var week = 1
    
    while (curWeight > targetWeight) {
        print("\(week)주차 감량 몸무게: ", terminator: "")
        let lossWeight = Int(readLine()!)!
        curWeight -= lossWeight
        week += 1
    }
    
    print("\(curWeight)kg 달성! 축하합니다!!")
}
