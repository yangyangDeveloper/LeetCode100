//
//  Solution_448.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 448. 找到所有数组中消失的数字
class Solution_448 {
    /*
    解法1： 借助set表
        把nums 都放出set
        然后从1到n+1 遍历 没有出现的 加入数组
    */
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var se = Set(nums)
        var res = [Int]()
        for i in 1...nums.count {
            if !se.contains(i) {
                res.append(i)
            }
        }
        return res
    }
}
