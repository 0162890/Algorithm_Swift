//
//  1470_shuffle.swift
//  
//  https://leetcode.com/problems/shuffle-the-array/
//  Created by Linda on 2020/09/17.
//

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var newNums = [Int]()
    for i in 0..<n {
        let x = nums[i]
        let y = nums[i+n]
        newNums.append(contentsOf: [x, y])
    }
    
    return newNums
}
