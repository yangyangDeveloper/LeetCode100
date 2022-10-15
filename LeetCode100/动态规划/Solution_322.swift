//
//  Solution_322.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_322 {
    /*
        dp方程  dp[amout]代表凑够amout需要的硬币数

    */
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 {
            return 0
        }

        var dp = [Int](repeating: amount + 1, count: amount + 1)
        dp[0] = 0

        // 状态
        for i in 0..<dp.count {
            // 选择
            for coin in coins {
                if i - coin < 0 {
                    continue
                }
                dp[i] = min(dp[i], dp[i - coin] + 1)
            }
        }

        return (dp[amount] == amount + 1)  ? -1 : dp[amount]
    }
}
