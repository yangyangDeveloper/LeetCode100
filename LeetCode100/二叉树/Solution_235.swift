//
//  Solution_235.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_235 {
     /*
        准备 确保 p < q
        1、 p q 在两边 return root
        2、 root > q  那么去左侧
        3、 那么去右边
    */
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        // base case
        if root == nil {
            return nil
        }

        if p!.val > q!.val {
            return lowestCommonAncestor(root, q, p)
        }

        if p!.val <= root!.val && q!.val >= root!.val {
            return root
        }

        if root!.val > q!.val {
            return lowestCommonAncestor(root?.left, p, q)
        }else {
            return lowestCommonAncestor(root?.right, p, q)
        }
        return nil
    }
}
