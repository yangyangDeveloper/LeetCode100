//
//  Solution_64.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 64. 最小路径和
class Solution_64 {

    /*
        dp[m][n] 从grid[0][0]开始移动 到 grid[m][n]的最小路径和
        初始化上边界 和左边界

        dp[i][j] = min(dp[i - 1][j], dp[i][j - 1]) + grid[i][j]

        最后return dp[m - 1][n - 1]
    */
    func minPathSum(_ grid: [[Int]]) -> Int {

        let m = grid.count
        let n = grid[0].count
        var dp1 = [Int](repeating:0, count:n)
        var dp = [[Int]](repeating:dp1, count: m)

        //base case
        dp[0][0] = grid[0][0]

        // 初始化第一列
        for i in 1..<m {
            dp[i][0] = dp[i - 1][0] + grid[i][0]
        }

        for j in 1..<n {
            dp[0][j] = dp[0][j - 1] + grid[0][j]
        }

        // dp方程
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = min(dp[i - 1][j], dp[i][j - 1]) + grid[i][j]
            }
        }
        return dp[m - 1][n - 1]
    }
}
