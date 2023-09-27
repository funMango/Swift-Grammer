//
//  computator.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

class computator {
    private var num1 : Int
    private var num2 : Int
    
    init(_ num1: Int, _ num2: Int) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func setNum1(_ num1: Int) {
        self.num1 = num1
    }
    
    func setNum2(_ num2: Int) {
        self.num2 = num2
    }
    
    func sum() -> Int {
        return num1 + num2
    }
    
    func sub() -> Int {
        return num1 - num2
    }
    
    func mul() -> Int {
        return num1 * num2
    }
    
    func div() -> Int {
        return num1 / num2
    }
}

func runComputator() {
    let cal = computator(20, 50)
    print(cal.sum())
    cal.setNum1(75)
    cal.setNum2(5)
    print(cal.sub())
    print(cal.mul())
    print(cal.div())
}
