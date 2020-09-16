//
//  runningSum.swift
//
//  https://leetcode.com/problems/running-sum-of-1d-array/
//  Created by 하연 on 2020/09/16.
//

func runningSum(_ nums: [Int]) -> [Int] {
    var newNums = [Int]()
    var prevNum = 0
    nums.forEach { num in
        let newNum = prevNum + num
        newNums.append(newNum)
        prevNum = newNum
    }
    
    return newNums
}

