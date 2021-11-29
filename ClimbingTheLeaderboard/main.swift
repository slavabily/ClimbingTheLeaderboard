//
//  main.swift
//  Climbing the Leaderboard  Climbing the Leaderboard  Climbing the Leaderboard  ClimbingTheLeaderboard
//
//  Created by slava bily on 28.11.2021.
//

import Foundation

func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    let sortedSet = Set(ranked).sorted().reversed()
    let arrSorted = Array(sortedSet)
    print(arrSorted)
    var playersRankArr = [Int]()
    for i in player {
        let last = arrSorted.last
        if i < last! {
            playersRankArr.append(arrSorted.firstIndex(of: last!)! + 2)
        }
        for j in 0..<arrSorted.count {
            if i >= arrSorted[j] {
                playersRankArr.append(j + 1)
                break
            }
        }
    } 
    return playersRankArr
}

print(climbingLeaderboard(ranked: [100, 100, 50, 40, 40, 20, 10], player: [5, 25, 50, 120]))

