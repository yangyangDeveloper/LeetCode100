//
//  Solution_21.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/16.
//

import Foundation
// 221. 最大正方形
class Solution {
    /*
        定义 dp[i][j]  以matrix[i][j] 为右下角的最大的权威1的正方形的边长
        if == 1
        dp[i][j]  = min(dp[i-1][j], dp[i-1][j-1], dp[i][j-1]) + 1
        else {
            dp[i][j] = 0
        }
        
        求最大值
        dp数组 m n 就行

        return max
    */

    func maximalSquare(_ matrix: [[Character]]) -> Int {
        var len = 0
        let m = matrix.count
        let n = matrix[0].count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count:m)
      
        // base case
        for i in 0..<m {
            dp[i][0] = matrix[i][0].wholeNumberValue! - 0
        }

        for j in 0..<n {
            dp[0][j] = matrix[0][j].wholeNumberValue! - 0
        }

        print(dp)
        // 状态方程
        for i in 1..<m {
            for j in 1..<n {
                print("222")
                if matrix[i][j] == "0" {
                    continue
                }
                dp[i][j] = min(min(dp[i-1][j], dp[i-1][j-1]), dp[i][j - 1]) + 1
                // len = max(len, dp[i][j])  写到这里面 因为循环是从1开始的 有时候去最大值会出问题  不够准切
            }
        }

        for i in 0..<m {
            for j in 0..<n {
                len = max(len, dp[i][j])
            }
        }
        return len * len
    }
}
    
