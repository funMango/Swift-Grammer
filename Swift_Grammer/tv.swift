//
//  tv.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/27.
//

import Foundation

class TV {
    var name: String
    var year: Int
    var size: Int
    
    init(name: String, year: Int, size: Int) {
        self.name = name
        self.year = year
        self.size = size
    }
    
    func show() -> String {
        return "\(name)에서 만든 \(year)년형 \(size)인치 TV"
    }    
}
