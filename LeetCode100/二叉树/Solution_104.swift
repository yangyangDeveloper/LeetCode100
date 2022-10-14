//
//  Solution_104.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 104. 二叉树的最大深度
class Solution_104 {
    // 递归遍历 拆分问题
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftDep = maxDepth(root?.left)
        let rightDep = maxDepth(root?.right)
        return max(leftDep, rightDep) + 1
    }
}
