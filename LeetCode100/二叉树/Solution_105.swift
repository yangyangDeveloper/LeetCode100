//
//  Solution_105.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_105 {
    /*
        preorder [preStart+1, preStart + leftSize]    [preStart + leftSize + 1, preEnd]
        inorder  [inStart index-1]                    [index+1  inEnd]

        leftsize = index - inStart
    */
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        build(inorder, 0, inorder.count - 1, preorder, 0, preorder.count - 1)
    }

    func build(_ inorder:[Int], _ inStart: Int, _ inEnd: Int, _ preorder: [Int], _ preStart: Int, _ preEnd: Int) -> TreeNode? {
        if inStart > inEnd {
            return nil
        }
        var value = preorder[preStart]
        var index = 0
        for i in 0..<inorder.count {
            if inorder[i] == value {
                index = i
            }
        }
        var leftSize = index - inStart

        var node = TreeNode(value)
        node.left = build(inorder, inStart, index - 1, preorder, preStart + 1, preStart + leftSize)
        node.right = build(inorder, index + 1, inEnd, preorder, preStart + leftSize + 1, preEnd)
        return node
    }
}
