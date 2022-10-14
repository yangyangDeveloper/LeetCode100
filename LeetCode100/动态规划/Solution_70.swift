//
//  Solution_70.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 70. 爬楼梯
class Solution_70 {
    /*
       dp
       dp[i] 爬到i个台阶的所有方法
       dp[i] = dp[i-1] + dp[i-2]
    */
    func climbStairs(_ n: Int) -> Int {
        var dp = [Int](repeating: 0, count: n + 1)
        // base  case
        if n  == 1 {
            return 1
        }
        if n == 2 {
            return 2
        }
        dp[1] = 1
        dp[2] = 2
        for i in 3...n {
            dp[i] = dp[i - 1] + dp[i - 2]
        }
        return dp[n]
    }
}
