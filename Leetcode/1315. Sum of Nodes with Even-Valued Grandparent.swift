//
//  1315. Sum of Nodes with Even-Valued Grandparent.swift
//  
//  https://leetcode.com/problems/sum-of-nodes-with-even-valued-grandparent/
//  Created by Linda on 2020/09/28.
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
    var ans = 0
    func sumEvenGrandparent(_ root: TreeNode?) -> Int {
        sumValue(root, isEvenGrandParent: false)
        return ans
    }
    
    func sumValue(_ node: TreeNode?, isEvenGrandParent: Bool) {
        guard let node = node else { return }
        
        if node.left == nil && node.right == nil { return }
        
        if isEvenGrandParent {
            ans += node.left?.val ?? 0
            ans += node.right?.val ?? 0
        }
        
        
        let isEvenGrandParent = node.val % 2 == 0
        sumValue(node.left, isEvenGrandParent: isEvenGrandParent)
        sumValue(node.right, isEvenGrandParent: isEvenGrandParent)
    }
}

// Test
let node = TreeNode(6, TreeNode(7, TreeNode(2), TreeNode(7)), TreeNode(8, TreeNode(1), TreeNode(3)))
let obj = Solution()
obj.sumEvenGrandparent(node)
