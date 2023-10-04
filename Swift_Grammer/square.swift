//
//  square.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

func runSquare() {
    let base = inputNumber(1)
    let n = inputNumber(2)
    print("결과확인: \(getSquare(base, n))")
}

func getSquare(_ base: Int, _ n: Int) -> Int {
    if n == 1 { return base }
    return base * getSquare(base, n-1)
}

