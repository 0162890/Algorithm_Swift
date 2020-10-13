//
//  1614. Maximum Nesting Depth of the Parentheses .swift
//  https://leetcode.com/problems/maximum-nesting-depth-of-the-parentheses/
//  
//  Created by Linda on 2020/10/13.
//

import Foundation

func maxDepth(_ s: String) -> Int {
    var ans = 0
    var currentCount = 0
    
    for ch in s {
        if ch == "(" {
            currentCount += 1
        } else if ch == ")" {
            currentCount -= 1
        }
        ans = max(currentCount, ans)
    }
    
    return ans
}
