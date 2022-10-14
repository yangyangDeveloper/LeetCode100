//
//  Solution_169.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 169. 多数元素
class Solution_169 {
    /*
        常规解法： hash表 记录每个元素出现次数 建立一个值 和 下标的映射     然后比较次数
        摩尔投标 正负点粒子
    */
    func majorityElement(_ nums: [Int]) -> Int {
        // 我们想要寻找的那个数
        var target = 0
        var count = 0

        for i in 0..<nums.count {
            if count == 0 {
                target = nums[i]  // 假设你就是
                // 注意这里是 = 1
                count = 1
            }
            else if nums[i] == target {
                count += 1
            }else {
                count -= 1
            }
        }

        return target
    }
}
