//
//  Solution_94.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 94. 二叉树的中序遍历
class Solution_94 {
    var res = [Int]()
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        traverse(root)
        return res
    }

    func traverse(_ root: TreeNode?) {
        if root == nil {
            return
        }
        traverse(root?.left)
        res.append(root!.val)
        traverse(root?.right)
    }
}
