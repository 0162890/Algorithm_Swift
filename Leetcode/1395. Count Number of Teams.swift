//
//  1395. Count Number of Teams.swift
//  https://leetcode.com/problems/count-number-of-teams/
//
//  Created by Linda on 2020/10/12.
//

import Foundation

func numTeams(_ rating: [Int]) -> Int {
    var teamCount = 0
    for i in 0..<rating.count-2 {
        let a = rating[i]
        for j in i+1..<rating.count-1 {
            let b = rating[j]
            
            for k in j+1..<rating.count {
                let c = rating[k]
                
                if a < b, b < c {
                    teamCount += 1
                } else if a > b, b > c {
                    teamCount += 1
                }
            }
        }
    }
    
    return teamCount
}

func numTeams2(_ rating: [Int]) -> Int {
    var teamCount = 0
    
    for i in 1..<rating.count - 1{
        let origin = rating[i]
        
        var leftSmaller = 0
        var leftLarger = 0
        var rightSmaller = 0
        var rightLarger = 0
        
        for j in 0..<i {
            if rating[j] < origin {
                leftSmaller += 1
            } else {
                leftLarger += 1
            }
        }
        
        for j in i+1..<rating.count {
            if rating[j] < origin {
                rightSmaller += 1
            } else {
                rightLarger += 1
            }
        }
        
        teamCount += (leftSmaller * rightLarger) + (leftLarger * rightSmaller)
    }
    
    return teamCount
}
