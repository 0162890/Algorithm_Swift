//
//  1528. Shuffle String.swift
//  https://leetcode.com/problems/shuffle-string/
//
//  Created by Linda on 2020/10/14.
//

import Foundation

func restoreString(_ s: String, _ indices: [Int]) -> String {
    if s.count == 1 { return s }
    
    var dic = [Int: Character]()
    
    for (i, ch) in s.enumerated() {
        let index = indices[i]
        dic[index] = ch
    }
    
    let order = dic.sorted { $0.key < $1.key }
    let characters = order.map { $0.value }
    
    return String(characters)
}

func restoreString2(_ s: String, _ indices: [Int]) -> String {
    if s.count == 1 { return s }
    
    let strings = s.map { String($0) }
    var newStrings = strings
    for (i, value) in indices.enumerated() {
        let subString = strings[i]
        newStrings[value] = subString
    }
    
    return newStrings.joined()
}
