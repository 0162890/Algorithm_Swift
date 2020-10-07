//
//  1342. Number of Steps to Reduce a Number to Zero .swift
//  https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero
//
//  Created by Linda on 2020/10/07.
//

import Foundation

func numberOfSteps (_ num: Int) -> Int {
    var ans = 0
    var newNum = num
    
    while newNum > 0 {
        if newNum % 2 == 0 {
            newNum /= 2
        } else {
            newNum -= 1
        }
        ans += 1
    }
    
    return ans
}
