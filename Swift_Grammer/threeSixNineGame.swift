//
//  threeSixNineGame.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/25.
//

import Foundation

func runThreeSixNineGame() {
    for num in 0...99 {
        var result = ""
        var stars = ""
        let digitsArray = String(num).map { String($0) }
        
        if digitsArray.count == 1 {result += "0"}
        for number in digitsArray {
            if (Int(number)! % 3 == 0 && number != "0") {stars += "*"}
            result += number
        }
        result += stars
        print(result)
    }
}
