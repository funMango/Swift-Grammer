//
//  SortBubble.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/5/23.
//

import Foundation

func runSortBubble() {
    let numbers = [2, 19, 55, 2, 0, 33, 182, 44, 1]
    let result = sort(numbers)
    print(result)
}

func sort(_ arr: [Int]) -> [Int] {
    var numbers = arr
    let n = numbers.count - 1
    var isChanged = false
    
    for end in (0..<n).reversed() {
        isChanged = false
        for i in 0...end {
            if numbers[i] > numbers[i+1] {
                (numbers[i], numbers[i+1]) = (numbers[i+1], numbers[i])
                isChanged = true
            }
        }        
        print(numbers)
        if !isChanged { break }
    }
    return numbers
}
