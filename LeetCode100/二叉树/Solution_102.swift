//
//  Solution_102.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_102 {
    /*
        bfs  广度优先搜索   + queue
    */
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return []
        }

        var queue = [TreeNode]()
        queue.append(root!)
        var res = [[Int]]()
        while queue.count > 0 {
            var level = [Int]()
            for i in 0..<queue.count {
                // 遍历队列
                var temp = queue.removeFirst()

                // 收集结果
                level.append(temp.val)

                // 收集节点
                if let left = temp.left {
                    queue.append(left)
                }
                if let right = temp.right {
                    queue.append(right)
                }
            }
            res.append(level)
        }
        return res
    }
}
