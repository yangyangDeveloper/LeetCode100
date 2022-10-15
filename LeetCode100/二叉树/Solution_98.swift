//
//  Solution_98.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_98 {
    /*
        传递一个最大值 最小值
    */
    func isValidBST(_ root: TreeNode?) -> Bool {
        return check(root, nil, nil)
    }

    func check(_ root: TreeNode?, _ min: TreeNode?, _ max: TreeNode?) -> Bool {

        // base case
        if root == nil {
            return true
        }

        // 如果 root val  不符合 max  min的限制 说吗不是合法bst
        if max != nil  {
            if root!.val >= max!.val {
                return false
            }
        }
        if min != nil {
            if root!.val <= min!.val {
                return false
            }
        }

        return check(root?.left, min, root) && check(root?.right, root, max)
    }
}
