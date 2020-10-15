//
//  1365. How Many Numbers Are Smaller Than the Current Number.swift
//  https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
//
//  Created by Linda on 2020/10/15.
//

import Foundation

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var ans = [Int](repeating: 0, count: nums.count)
    var tuples = [(index: Int, num: Int)]()
    
    for (index, num) in nums.enumerated() {
        tuples.append((index, num))
    }
    
    let sortedTuples = tuples.sorted { $0.num < $1.num }
    
    for (i ,tuple) in sortedTuples.enumerated() {
        let index = tuple.index
        let num = tuple.num
        
        if i == 0 {
            ans[index] = 0
        } else {
            let prevTuple = sortedTuples[i-1]
            if num == prevTuple.num {
                ans[index] = ans[prevTuple.index]
            } else {
                ans[index] = i
            }
        }
    }
    
    return ans
}

func smallerNumbersThanCurrent2(_ nums: [Int]) -> [Int] {
    let sortedNums = nums.sorted()
    var dict: [Int: Int] = [:]
    for (index, num) in sortedNums.enumerated() {
        if dict[num] == nil {
            dict[num] = index
        }
    }
    
    return nums.map { return dict[$0] ?? 0 }
}
