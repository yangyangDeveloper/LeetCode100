//
//  Solution_101.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 101. 对称二叉树
class Solution_101 {
    // 判断左右子树是否对称 拆分解决问题 我去判断某一个点是否相等  剩下的交给递归
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return check(root?.left, root?.right)
    }

    func check(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        if root1 == nil {
            return root2 == nil
        }
        if root2 == nil {
            return root1 == nil
        }
        // root1 root2 都存在就比较值
        if root1!.val != root2!.val {
            return false
        }

        return check(root1?.left, root2?.right) && check(root1?.right, root2?.left)
    }
}
