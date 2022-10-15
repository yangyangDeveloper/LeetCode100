//
//  Solution_198.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_198 {
    /*
        动态规划 dp[i] 偷到nums[i]结尾的房间 能偷去的最大价值
        目标：偷到 num[n-1]结尾的房间
    */
    func rob(_ nums: [Int]) -> Int {
        let n = nums.count
        var dp = [Int](repeating: 0, count: nums.count)
        dp[0] = nums[0]
        if nums.count == 1 {
            return dp[0]
        }
        dp[1] = max(nums[0], nums[1])
        for i in 2..<nums.count {
            dp[i] = max(dp[i - 2] + nums[i], dp[i - 1])
        }
        return dp[n-1]
    }
}
