//
//  Solution_62.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 62. 不同路径
class Solution_62 {

    /*
        上左边界都为1
        青蛙跳一维 机器人跑二维
        右下角 = 左边总数 + 右边总数
        dp[i][j] = dp[i-1][j], dp[i][j-1]

    */
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp1 = [Int](repeating:1, count:n)
        var dp = [[Int]](repeating:dp1, count: m)

        for i in 1..<m {
            for j in 1..<n {
                 dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }

        return dp[m - 1][n - 1]
    }
}
