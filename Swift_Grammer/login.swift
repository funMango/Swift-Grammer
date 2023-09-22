//
//  login.swift
//  Swift_Grammer
//
//  Created by 이민호 on 2023/09/22.
//

import Foundation

func runLogin() {
    let userID = "Hello"
    let password = "1234"
    
    while(true) {
        print("아이디를 입력해 주세요: ", terminator: "")
        let inputUserId = readLine()!
        print("비밀번호를 입력해 주세요: ", terminator: "")
        let inputPassword = readLine()!
        var flag = true
    
    
        for (char1, char2) in zip(userID, inputUserId) {
            if char1 != char2 {
                flag = false
                break
            }
        }
        
        if flag {
            for (char1, char2) in zip(password, inputPassword) {
                
                
                if char1 != char2 {
                    flag = false
                    break
                }
            }
        }
        
        if flag {
            print("로그인 성공")
            break
        } else {
            print("아이디와 비밀번호가 잘못되었습니다.\n")
        }
    }
}
