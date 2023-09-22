//
//  vendingMachine.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/22.
//

import Foundation

func runVendingMachine() {
    let coin = inputCoin("금액을 입력하세요.")
    let menu_number = inputBeverageNumber()
    selectMenu(menu_number, coin)
}

func selectMenu(_ menu_number: Int, _ coin: Int) {
    if menu_number > 3 {
        print("메뉴없음")
        giveChange(coin)
        return
    }
    
    let costs = [0, 800, 500, 1500]
    calculateBeverages(coin, costs[menu_number])
}

func calculateBeverages(_ coin: Int, _ cost: Int) {
    var beverage = cost
    
    if coin < cost {
        print("돈이 부족해요ㅠㅠ")
        beverage = 0
    }
    
    let change = coin - beverage
    print("\n잔돈: \(change)")
    giveChange(change)
}

func giveChange(_ change: Int) {
    print("\n천원: \(change / 1000)개, 오백원: \((change % 1000) / 500)개, 백원: \((change % 1000 % 500) / 100)개")
}

func inputCoin(_ message: String) -> Int {
    print("\(message)")
    return Int(readLine()!)!
}

func inputBeverageNumber() -> Int {
    print("\n메뉴를 고르세요.")
    print("1.콜라(800원) 2.생수(500원) 3.비타민워터(1500원) : ",  terminator: "")
    return Int(readLine()!)!
}
