//
//  watermelonGame.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/27.
//

import Foundation

func runWatermelonGame() {
    let number = getInputOrder()
    viewGameResult(getGameResult(number))    
}

func getInputOrder() -> Int {
    print("=== 수박 게임 시작! ===")
    print("숫자를 입력해주세요:", terminator: " ")
    let input = Int(readLine()!)!
    return input
}

func getGameResult(_ number: Int) -> String{
    let arr = ["수", "박"]
    var copyNum = number
    var result = ""
    var idx = 0
    
    while copyNum > 0 {
        result += arr[idx]
        idx += 1
        idx = idx % 2
        copyNum -= 1
    }
    
    return result
}

func viewGameResult(_ result: String) {
    print(result)
}
