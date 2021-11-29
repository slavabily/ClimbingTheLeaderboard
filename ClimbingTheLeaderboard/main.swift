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
    var mappedRanked = [(Int, Int)]()
    var r = 0
    for i in 0..<arrSorted.count {
        r += 1
        let t = (arrSorted[i], r)
        print(t)
        mappedRanked.append(t)
    }
    print(mappedRanked)
     
    return [0]
}

print(climbingLeaderboard(ranked: [100, 90, 90, 80, 75, 60], player: [50, 65, 77, 90, 102]))

