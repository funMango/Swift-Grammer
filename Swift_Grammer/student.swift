//
//  student.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

class student {
     var name : String
    var number : Int
    var age : Int
    var scoreSwift : Int
    var scoreiOS : Int
    var scoreWeb : Int
    
    init(name: String, number: Int, age: Int, scoreSwift: Int, scoreiOS: Int, scoreWeb: Int) {
        self.name = name
        self.number = number
        self.age = age
        self.scoreSwift = scoreSwift
        self.scoreiOS = scoreiOS
        self.scoreWeb = scoreWeb
    }
    
    func show() {
        print("""
            \(self.name)님 안녕하세요.\n
            [ \(self.number), \(self.age)살 ]\n
            \(self.name)님의 Swift 점수는 \(self.scoreSwift)점 입니다.\n
            \(self.name)동님의 iOS 점수는 \(self.scoreiOS)점 입니다.\n
            \(self.name)님의 Web 점수는 \(self.scoreWeb)점 입니다.\n
            ======================================\n
        """)
    }
}
