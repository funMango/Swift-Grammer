//
//  piggBank.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

class PiggBank {
    var money : Int
    var size : Int
    
    init(_ money: Int, _ size: Int) {
        self.money = money
        self.size = size
    }
    
    public func deposit(_ inputMoney: Int) {
        if size >= inputMoney + self.money {
            self.money += inputMoney
        }
    }
    
    public func withdraw(_ withdrawMoney: Int) -> Int {
        if self.money >= withdrawMoney {
            self.money -= withdrawMoney
            return withdrawMoney
        }
        return 0
    }
    
    public func show() {
        print("현제 잔액은 \(self.money)입니다.")
    }
}






