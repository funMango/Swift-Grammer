//
//  SortSelection.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/5/23.
//

import Foundation

func runSortSelection() {
    let numbers = [1, 3, 48, 261, 23, 4, 91, 0]
    let result = sortSelection(numbers)
    print(result)
}

func sortSelection(_ arr: [Int]) -> [Int] {
    var numbers = arr
    for i in 0..<numbers.count {
        var min = Int.max
        var minIdx = -1
        for j in i..<numbers.count {
            if numbers[j] < min {
                min = numbers[j]
                minIdx = j
            }
        }
        (numbers[i], numbers[minIdx]) = (numbers[minIdx], numbers[i])
    }
    return numbers
}
