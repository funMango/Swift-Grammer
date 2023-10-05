//
//  SortBubble.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/5/23.
//

import Foundation

func runSortBubble() {
    let numbers = [1, 3, 4, 19, 2, 56, 78, 33, 21, 50, 99, 5]
    let result = sort(numbers)
    print(result)
}

func sort(_ arr: [Int]) -> [Int] {
    var numbers = arr
    let n = numbers.count - 1
    
    for end in (0..<n).reversed() {
        numbers = sort(numbers, end)
    }
    return numbers
}

func sort(_ arr: [Int], _ end: Int) -> [Int] {
    var numbers = arr
    for i in 0...end {
        if numbers[i] > numbers[i+1] {
            (numbers[i], numbers[i+1]) = (numbers[i+1], numbers[i])
        }
    }
    return numbers
}
