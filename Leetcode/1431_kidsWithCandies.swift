//
//  1431_kidsWithCandies.swift
//  
//  https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
//  Created by Linda on 2020/09/17.
//

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let max = maxInt(in: candies)
    return candies.map { candy in
        return candy + extraCandies >= max
    }
}

func maxInt(in intArr: [Int]) -> Int {
    var maxInt = 0
    intArr.forEach {
        if $0 > maxInt {
            maxInt = $0
        }
    }
    
    return maxInt
}
