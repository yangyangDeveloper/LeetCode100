//
//  Solution_55.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 55. 跳跃游戏
class Solution_55 {

    // 找最远跳跃距离的
    func canJump(_ nums: [Int]) -> Bool {
        var fast = 0
        let n = nums.count
        if n <= 1 {
            return true
        }
        for i in 0..<nums.count-1 {
            fast = max(fast, i + nums[i])
            if fast <= i {  //可能遇到0 卡住了
                return false
            }
        }
        print(fast)
        return fast >= n - 1
    }
}
