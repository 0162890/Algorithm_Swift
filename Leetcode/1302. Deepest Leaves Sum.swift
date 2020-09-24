//
//  1302. Deepest Leaves Sum.swift
//  
//  https://leetcode.com/problems/deepest-leaves-sum/
//  Created by Linda on 2020/09/24.
//


import Foundation

// Definition for a binary tree node.
 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }

 }
 
class Solution {
    var maxHeight = 0
    var sum = 0
    
    func deepestLeavesSum(_ root: TreeNode?) -> Int {
        getMaxHeightSum(node: root, height: 0)
        return sum
    }

    private func getMaxHeightSum(node: TreeNode?, height: Int) {
        guard let node = node else { return }
        
        if node.left == nil, node.right == nil {
            sum += node.val
            if height == maxHeight {
                sum += node.val
            } else if height > maxHeight {
                maxHeight = height
                sum = node.val
            }
        }
        
        getMaxHeightSum(node: node.left, height: height+1)
        getMaxHeightSum(node: node.right, height: height+1)
    }
}
