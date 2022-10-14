//
//  Solution_136.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 136. 只出现一次的数字
class Solution_136 {
    // 位运算  a ^ a  = 0 相同位0  不相同位1   可以用来合并二进制的1   也可以抵消相同的数  0^a = 0
    func singleNumber(_ nums: [Int]) -> Int {
        var res = 0
        for i in 0..<nums.count {
            res ^= nums[i]
        }
        return res
    }
}
