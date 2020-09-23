//
//  1282. Group the People Given the Group Size They Belong To.swift
//  
//  https://leetcode.com/problems/group-the-people-given-the-group-size-they-belong-to/
//  Created by Linda on 2020/09/22.
//

import Foundation

func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var newGroup = [(Int, Int)]()
    for (index, number) in groupSizes.enumerated() {
        newGroup.append((index, number))
    }
    
    newGroup = newGroup.sorted { $0.1 < $1.1 }
    
    var answer = [[Int]]()
    var group = [Int]()
    newGroup.forEach { key, value in
        group.append(key)
        if value == group.count {
            answer.append(group)
            group.removeAll()
        }
    }
    return answer
}


func groupThePeople2(_ groupSizes: [Int]) -> [[Int]] {
    var answer = [[Int]]()
    var groups = [Int: [Int]]()
    for (index, number) in groupSizes.enumerated() {
        var group = groups[number] ?? [Int]()
        group.append(index)
        if group.count == number {
            answer.append(group)
            groups[number]?.removeAll()
        } else {
            groups[number] = group
        }
    }
    return answer
}
