//
//  TimesTable.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/25.
//

import Foundation

func runTimesTable() {
    print("단 입력: ", terminator: "")
    let times = Int(readLine()!)!
    
    for multiple in 1...9 {
        print("\(times) * \(multiple) = \(times * multiple)")
    }
}

func runTimesTableVertical() {
    for times in 1...9 {
        print("\n===\(times)단===")
        for multiple in 1...9 {
            print("\(times) * \(multiple) = \(times * multiple)")
        }
    }
}

func runTimesTableHorizental() {
    for times in 1...9 {
        print("\n\(times)단: ", terminator: "")
        for multiple in 1...9 {
            print("\(times) * \(multiple) = \(times * multiple)", terminator: "  ")
        }
    }
}
