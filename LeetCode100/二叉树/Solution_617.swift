//
//  Solution_617.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation

// 617. 合并二叉树
class Solution_617 {
    // 递归遍历 前序位置 合并节点
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        if root1 == nil || root2 == nil {
            return root1 == nil ? root2 : root1
        }

        // 两棵树上都有节点 那么叠加节点值
        root1!.val += root2!.val

        // 递归合并左右子树
        root1?.left = mergeTrees(root1?.left, root2?.left)
        root1?.right = mergeTrees(root1?.right, root2?.right)

        return root1
    }
}
