//
//  Solution_53.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 53. 最大子数组和
class Solution_53 {

    /*
        1、贪心
        2、动态规划
    */
    func maxSubArray(_ nums: [Int]) -> Int {
         var sum = Int.min
         var temp = 0
         for i in 0..<nums.count {
            temp += nums[i]
            if temp > sum {
                sum = temp
            }
            if temp <= 0 {
                temp = 0
            }
         }
         return sum
    }
}
