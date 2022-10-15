//
//  Solution_279.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_279 {
    /*
        dp[i] 构成i需要的完全平方数个数
    */
    func numSquares(_ n: Int) -> Int {
        var dp = [Int](repeating: Int.max, count: n + 1)
        dp[0] = 0
        for i in 0...n {
            var j = 1
            while j * j <= i {
                dp[i] = min(dp[i], dp[i - j * j] + 1)
                j += 1
            }
        }
        return dp[n]
    }
}
