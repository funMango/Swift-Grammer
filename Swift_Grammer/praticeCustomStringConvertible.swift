//
//  praticeCustomStringConvertible.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/5/23.
//

import Foundation

struct Party: CustomStringConvertible {
    let employeeNum: Int
    let name: String
    
    init(_ employeeNum: Int, _ name: String) {
        self.employeeNum = employeeNum
        self.name = name
    }
    
    var description: String {
        return "employeeNum: \(employeeNum), name: \(name)"
    }
}

func runParty() {
    let staff = Party(827361, "홍길동")
    print(staff)
}
