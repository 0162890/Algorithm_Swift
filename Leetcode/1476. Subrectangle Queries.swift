//
//  1476. Subrectangle Queries.swift
//  
//  https://leetcode.com/problems/subrectangle-queries/
//  Created by Linda on 2020/09/21.
//

import Foundation

class SubrectangleQueries {
    
    private var rectangle: [[Int]]

    init(_ rectangle: [[Int]]) {
        self.rectangle = rectangle
    }
    
    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for row in row1...row2 {
            for col in col1...col2 {
                self.rectangle[row][col] = newValue
            }
        }
    }
    
    func getValue(_ row: Int, _ col: Int) -> Int {
        return self.rectangle[row][col]
    }
}

/* input
let obj = SubrectangleQueries([[1,2,1],[4,3,4],[3,2,1],[1,1,1]])
print(obj.getValue(0, 2))
obj.updateSubrectangle(0, 0, 3, 2, 5)
print(obj.getValue(0, 2))
print(obj.getValue(3, 1))
obj.updateSubrectangle(3, 0, 3, 2, 10)
print(obj.getValue(3, 1))
print(obj.getValue(0, 2))
*/
