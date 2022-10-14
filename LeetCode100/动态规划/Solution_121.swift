//
//  Solution_121.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 121. 买卖股票的最佳时机
class Solution_121 {
    /*
        dp[i][k][0 or 1]
        0<=i <= n  n是天数
        1<=k <= K  k是交易次数
        0是不持有  1是持有

        股票系列通过方程

        dp[i][k][0] = max(dp[i-1][k][0], dp[i - 1][k][1] + prices[i])
        dp[i][k][0] = max(今天之前已经不持有，今天sell)


        dp[i][k][1] = max(dp[i-1][k][1], dp[i - 1][k - 1][1] - prices[i])
        dp[i][k][1] = max(今天之前已经持有，今buy)

        通用base case
        dp[-1][...][0] = dp[...][0][0] = 0
        dp[-1][...][1] = dp[...][0][1] = int.min

        当k = 1 时候  状态方程和base case 如下

        方程
        dp[i][0] = max(dp[i - 1][0], dp[i - 1][1] + prices[i])
        dp[i][1] = max(dp[i - 1][1], -prices[i])

        base case
        dp[i][0] = 0
        dp[i][1] = -prince[i]

    */
    func maxProfit(_ prices: [Int]) -> Int {
        let n = prices.count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: 2), count: n)

        for i in 0..<n {
            if i - 1 == -1 {
                // base case
                dp[i][0] = 0
                dp[i][1] = -prices[i]
                /* 推导过程
                dp[i][1] = max(dp[-1][1], dp[-1][0] - prices[i])
                dp[i][1] = max(int.min, 0-prices[i])
                dp[i][1] = -prices[i]
                */
                continue
            }
            dp[i][0] = max(dp[i - 1][0], dp[i - 1][1] + prices[i])
            dp[i][1] = max(dp[i - 1][1], -prices[i])
        }
        return dp[n - 1][0]
    }
}
