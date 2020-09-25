//
//  771. Jewels and Stones.swift
//  
//  https://leetcode.com/problems/jewels-and-stones/
//  Created by Linda on 2020/09/25.
//

import Foundation

// Solution 1
func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var ans = 0
    
    J.forEach { jCh in
        S.forEach { sCh in
            if jCh == sCh {
                ans += 1
            }
        }
    }
    
    return ans
}

// Solution 2
func numJewelsInStones2(_ J: String, _ S: String) -> Int {
    var ans = 0
    
    S.forEach { sCh in
        // contains O(n)
        if J.contains(sCh) {
            ans += 1
        }
    }
    
    return ans
}

// Solution 3
func numJewelsInStones3(_ J: String, _ S: String) -> Int {
    var ans = 0
    
    for sCh in S where J.contains(sCh) {
        ans += 1
    }
    
    return ans
}

