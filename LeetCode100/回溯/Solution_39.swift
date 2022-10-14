//
//  Solution_39.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 39. 组合总和
class Solution_39 {
    /*
        回溯 排列组合子集问题
        二叉树的生长问题
        1、剪纸操作
        2、循环起点
                                子集和数组                       排列
        无重复元素 不可复选    startindex  相对位置区分             used
        无重复元素 可以复选    不区分
        有重复元素 不可以复选  nums[i] == nums[i - 1] continue    used   nums[i] == nums[i - 1] && !user[i - 1]

        排列 循环 从 0开始
        子集组合 循环 从 startindex开始

    */

    var res = [[Int]]()
    var path = [Int]()
    var sum = 0
    // 无重复 可以复选
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        backtrace(0, candidates, target)
        return res
    }

    func backtrace(_ startindex: Int, _ candidates: [Int],  _ target: Int) {

        // base case
        if sum == target {
            res.append(path)
            return
        }

        // 边界问题
        if sum > target {
            return
        }

        for i in startindex..<candidates.count {
            sum += candidates[i]
            path.append(candidates[i])
            backtrace(i, candidates, target)
            path.removeLast()
            sum -= candidates[i]
        }
    }
}
