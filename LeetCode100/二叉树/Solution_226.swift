//
//  Solution_226.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation

// 226. 翻转二叉树
class Solution_226 {
    // 递归遍历  分解问题  左子树 右子树  站在某一个节点上去做 其他交给递归
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }

        let left = invertTree(root?.left)
        let right = invertTree(root?.right)
        // 后序位置 插入代码
        root?.left = right
        root?.right = left
        return root
    }
}
