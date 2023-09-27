//
//  randomGame.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/25.
//

import Foundation

func runRandomGame() {
    while true {
        let first = Int.random(in: 1...30)
        let second = Int.random(in: 1...30)
        let randomSum = first + second
        print("\(first) + \(second)= ", terminator: "")
        let inputSum = Int(readLine()!)!
        
        print("=== Plus Game ===")
        if randomSum == inputSum {
            print("Success")
        } else {
            print("Fail")
        }
        
        print("계속 하시겠습니까? (Y/N)\n ", terminator: "")
        let countinue = readLine()!
        if countinue == "N" {
            break
        }
    }
}
