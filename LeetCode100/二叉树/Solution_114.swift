//
//  Solution_114.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_114 {
    // 定义 fla 函数 讲一个二叉树拉直
    func flatten(_ root: TreeNode?) {
        if root == nil {
            return
        }
    
        flatten(root?.left)
        flatten(root?.right)
        // 后序位置

        // 把左边换到右边  原本的右边暂存起来
        var temp = root?.right
        root?.right = root?.left
        root?.left = nil

        // 来到右边的最后一个位置
        var cur = root
        while cur?.right != nil {
            cur = cur?.right
        }
        // 讲暂存的节点拼接到后面
        cur?.right = temp
        
    }
}
