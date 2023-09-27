//
//  person.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/26.
//

import Foundation

class person {
    private var name : String
    private var age : Int
    
    init(_ name: String, _ age: Int) {
        self.name = name
        self.age = age
    }
    
    func getName() -> String {
        return self.name
    }
    
    func setName(name: String) {
        self.name = name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    func setAge(_ age: Int) {
        self.age = age
    }
}

func runPerson() {
    let gildong = person("홍길동", 25)
    let younghee = person("김영희", 27)
    
    print("st1 객체 학생 이름: \(gildong.getName()) 나이: \(gildong.getAge())")
    print("st2 객체 학생 이름: \(younghee.getName()) 나이: \(younghee.getAge())")
}
