//
//  stars.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/25.
//

import Foundation

func star_one() {
    for num in 1...5 {
        var stars = ""
        for _ in 1...num {
            stars += "*"
        }
        print(stars)
    }
}

func star_two() {
    for num in (1...5).reversed() {
        var stars = ""
        for _ in 1...num {
            stars += "*"
        }
        print(stars)
    }
}

func star_three() {
    var stars = [" ", " ", " ", " ", " "]
    
    for i in (0...4).reversed() {
        stars[i] = "*"
        let starsString = stars.map { String($0) }.joined(separator: "")
        print(starsString)
    }
}

func star_four() {
    var stars = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
    
    var start = 4
    var end = 5
    
    for _ in 1...5 {
        stars[start] = "*"
        stars[end] = "*"
        start -= 1
        end += 1
        let starsString = stars.map { String($0) }.joined(separator: "")
        print(starsString)
    }
    
    for _ in 1...5 {
        let starsString = stars.map { String($0) }.joined(separator: "")
        print(starsString)
        start += 1
        end -= 1
        stars[start] = " "
        stars[end] = " "
    }
}

func star_five() {
    let start = "*"
    let result = String(format: "%5s", start)
    print(result) // 출력: "    *"
}
