//
//  Solution_56.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 56. 合并区间
class Solution_56 {

    /*
        线段合并问题
        排序

        按照 start升序排列

        当前 x_end

        if in[i][0] > x_start {
            // 更新x_end
            x_end = max(x_end, in[i][1])
        }

        就是不相交的
        else {

        }
    */

    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var intervals = intervals.sorted(by: {$0[0] < $1[0]})
        var res = [[Int]]()
        res.append(intervals[0])
        for i in 1..<intervals.count {
            let temp = intervals[i]
            var current = res.removeLast()
            // 存在相交关系
            if current[1] >= temp[0] {
                current[1] = max(current[1], temp[1])
                res.append(current)
            }else {
                res.append(current)
                res.append(temp)
            }
        }
        return res
    }
}
