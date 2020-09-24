//
//  807. Max Increase to Keep City Skyline.swift
//  
//  https://leetcode.com/problems/max-increase-to-keep-city-skyline
//  Created by Linda on 2020/09/23.
//

import Foundation

func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
    var sum = 0
    
    let max = getMax(grid)
    let maxCol = max.maxCol
    let maxRow = max.maxRow
    
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            let minimum = min(maxCol[j], maxRow[i])
            let dif = minimum - grid[i][j]
            if dif > 0 {
                sum += dif
            }
        }
    }
    
    return sum
}

private func getMax(_ grid: [[Int]]) -> (maxRow: [Int], maxCol: [Int]) {
    var maxRow = [Int](repeating: 0, count: grid.count)
    var maxCol = [Int](repeating: 0, count: grid[0].count)
    
    for i in 0..<grid.count {
        for j in 0..<grid[i].count {
            let row = grid[i][j]
            let col = grid[j][i]
            
            maxRow[i] = max(row, maxRow[i])
            maxCol[i] = max(col, maxCol[i])
        }
    }
    
    return (maxRow, maxCol)
}

maxIncreaseKeepingSkyline([[3,0,8,4],[2,4,5,7],[9,2,6,3],[0,3,1,0]])
