//
//  Solution_46.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 46. 全排列
class Solution_46 {
    // 去排列 无重复元素 不可复选  used 数组
    var used = [Bool]()
    var path = [Int]()
    var res = [[Int]]()
    func permute(_ nums: [Int]) -> [[Int]] {
        used = [Bool](repeating: false, count: nums.count)
        backtrace(nums)
        return res
    }

    func backtrace(_ nums: [Int]) {
        if nums.count == path.count {
             res.append(path)
             return
        }

        for i in 0..<nums.count {
            if used[i] {
                continue
            }
            
            used[i] = true
            path.append(nums[i])
            backtrace(nums)
            path.removeLast()
            used[i] = false
        }
    }
}
