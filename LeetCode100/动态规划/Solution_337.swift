//
//  Solution_337.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_337 {
    func rob(_ root: TreeNode?) -> Int {
        let res = dfs(root)
        return max(res[0], res[1])
    }

    func dfs(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return [0, 0]
        }
        var res = [Int](repeating:0, count: 2)
        let left = dfs(root?.left)
        let right = dfs(root?.right)

        // 不偷 当前节点可获得的最大金额
        res[0] =  max(left[0], left[1]) + max(right[0], right[1])

        // 偷
        res[1] = left[0] + right[0] + root!.val

        return res
    }
}
