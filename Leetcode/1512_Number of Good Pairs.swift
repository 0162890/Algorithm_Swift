//
//  1512_Number of Good Pairs.swift
//  
//  https://leetcode.com/problems/number-of-good-pairs/
//  Created by 하연 on 2020/09/21.
//

import Foundation

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var result = 0
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] == nums[j] {
                result += 1
            }
        }
    }
    return result
}
