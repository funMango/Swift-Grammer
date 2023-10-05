//
//  SortEx1.swift
//  Swift_Grammer
//
//  Created by 이민호 on 10/5/23.
//

import Foundation

func runSortEx1() {
    var musics = [
        ("롤린 (Rollin')", "브레이브걸스", 156),
        ("Celebrity", "아이유", 141),
        ("On The Ground", "로제 (ROSÉ)", 35),
        ("LOVE DAY (2021)", "양요섭, 정은지", 94),
        ("밤하늘의 별을(2020)", "경서", 88),
        ("Gone", "로제 (ROSÉ)", 61),
        ("Dynamite", "방탄소년단", 111),
    ]
    musics = sortMusicsByPlay(musics)
    let musicName = "On The Ground"
    if let rank = findRankByMusic(musicName, musics) {
        print("\(musicName)의 순위는 \(rank)입니다.")
    } else {
        print("요청하신 음악을 찾을 수 없습니다.")
    }
}

func sortMusicsByPlay(_ arr: [(String, String, Int)]) -> [(String, String, Int)] {
    return arr.sorted { (music1, music2) -> Bool in
        return music1.2 > music2.2
    }
}

func findRankByMusic(_ musicName: String, _ arr: [(String, String, Int)]) -> Int? {
    if let rank = arr.firstIndex(where: { $0.0 == musicName }) {
        return rank + 1
    }
    return nil
}












