//
//  exercise_array.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/27.
//

import Foundation

func runExerciseArray() {
    ex()
}

func ex1() {
    let arr = getRandomNumArr()
    print(arr)
    let addIdx = getAddIdx(4, 9, arr)
    print(addIdx)
    let average = getAverage(arr)
    print(average)
}

func getRandomNumArr() -> [Int] {
    var arr: [Int] = []
    while arr.count < 10 {
        let randomNum = Int.random(in: 1...20)
        if !arr.contains(randomNum) {
            arr.append(randomNum)
        }
    }
    return arr
}

func getAddIdx(_ idx1: Int, _ idx2: Int, _ arr: [Int]) -> Int {
    return arr[idx1] + arr[idx2]
}

func getAverage(_ arr: [Int]) -> Int {
    var sum = 0
    for num in arr {
        sum += num
    }
    
    return sum / arr.count
}

func ex() {
    let arr = getRandomNumArr()
    let oddNumbers = getOddNumbers(arr)
    viewOddNumbers(oddNumbers)
    let maxValue = getMaxValue(arr)
    viewMaxValue(maxValue)
    let minValue = getMinValue(arr)
    viewMinValue(minValue)
}

func getOddNumbers(_ arr: [Int]) -> [Int] {
    var result: [Int] = []
    
    for num in arr {
        if num % 2 != 0 {
            result.append(num)
        }
    }
    
    return result
}

func viewOddNumbers(_ arr: [Int]) {
    print("array에 들어있는 홀수는 \(arr) 이며, 총 \(arr.count)개 입니다.")
}

func getMaxValue(_ arr: [Int]) -> Int {
    var max = Int.min
    for num in arr {
        if num > max { max = num }
    }
    return max
}

func viewMaxValue(_ value: Int) {
    print("가장 큰 값은 \(value) 입니다.")
}

func getMinValue(_ arr: [Int]) -> Int {
    var min = Int.max
    for num in arr {
        if num < min { min = num }
    }
    return min
}

func viewMinValue(_ value: Int) {
    print("가장 작은 값은 \(value) 입니다.")
}
