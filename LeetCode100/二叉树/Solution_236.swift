//
//  Solution_236.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_236 {
    /*
        p q 在root两次
        p q 都不在root为根中 return nil
        p和q 只有一个存在 root为根的树中 返回那个节点
    
    */
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        // base case
        if root == nil {
            return nil
        }

        if root === p || root === q {
            return root
        }

        let left = lowestCommonAncestor(root?.left, p, q)
        let right = lowestCommonAncestor(root?.right, p, q)

        // case 1
        if left != nil && right != nil {
            return root
        }

        // case 2
        if left == nil && right == nil {
            return nil
        }

        // case 3
        return left == nil ? right : left
    }
}
