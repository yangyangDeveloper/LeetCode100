//
//  Solution_543.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 543. 二叉树的直径
class Solution_543 {
    /*
        左子树最大深度 + 右子树最大深度 = 直径
    */

    var res = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        maxDepth(root)
        return res
    }

    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }

        let leftdep = maxDepth(root?.left)
        let rightdep = maxDepth(root?.right)
        res = max(res, leftdep + rightdep)
        return max(leftdep, rightdep) + 1
    }
}
