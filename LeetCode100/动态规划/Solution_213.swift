//
//  Solution_213.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_213 {

    /*
        偷取位置为
        1、0到最后-1
        2、1到最后
    */
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        if n == 1 {
            return nums[0]
        }
        if n == 2 {
            return max(nums[0], nums[1])
        }
        let t1 = robhelper(Array(nums[0...n-2]))
        let t2 = robhelper(Array(nums[1...n-1]))
        return max(t1, t2)
    }

    func robhelper(_ nums: [Int]) ->Int {
        let n = nums.count
        var dp = [Int](repeating:0, count: n)
        dp[0] = nums[0]
        dp[1] = max(nums[0], nums[1])
        for i in 2..<n {
            dp[i] = max(dp[i - 1], dp[i - 2] + nums[i])
        }
        return dp[n - 1]
    }
}
