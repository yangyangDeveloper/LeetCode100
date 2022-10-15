//
//  Solution_152.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_152 {
  /*
        动态规划题
        最小值✖️负数会变成 最大值  最大值乘负数会变成 最小值
        
        f[i] 表示以nums[i] 结尾的连续子数组的乘机最大值
        f[i] =  max(f[i-1]* nums[i], nums[i])

        if num[i] > 0 {
            1个
            多个
            f[1] = max(nums[i], f[i-1]* nums[i])
        }else {
            1个
            多个  最小值 * 负数 会变成最大值
            f[i] = max(num[i], g[i-1] * num[i])
        }

        总和来说就是  f[i] = max(nums[i], max(f[i-1]*nums[i], g[i-1]* nums[i]))

        g[i] 表示以nums[i]结尾的连续子数组乘机最小值
        if num[i] >= 0 {
            1个 num[i]
            多个g[i-1]*nums[i]
            g[i] = min(num[i], g[i-1]*nums[i])
        } else {  // i-1最大值 乘 当前小数  就是最小值
            1个num[i]
            多个f[i-1]*nums[i]
            g[i] = min(num[i], f[i-1]*nums[i])
        }
        g[i] = min(num[i], min(g[i-1]*nums[i], f[i-1] * nums[i]])

        最后的结果 找 f[i] 最大值
    */

    func maxProduct(_ nums: [Int]) -> Int {
        let n = nums.count
        var res = nums[0]
        var f = [Int](repeating: 0, count: n + 1)
        var g = [Int](repeating: 0, count: n + 1)
        // base case
        f[0] = nums[0]
        g[0] = nums[0]
        // 状态方程
        for i in 1..<n {
            f[i] = max(nums[i], max(f[i-1] * nums[i], g[i-1] * nums[i]))
            g[i] = min(nums[i], min(g[i-1] * nums[i], f[i-1] * nums[i]))
            print(f[i])
            res = max(res, f[i])
        }

        return res
    }
}
