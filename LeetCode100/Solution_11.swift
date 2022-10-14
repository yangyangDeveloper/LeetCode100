//
//  Solution_11.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 11. 盛最多水的容器
class Solution_11 {

    /*
        求长方形体积
        长  = right - left
        搞  = min(height[left], height[right])
        s = max(s, 长 * 高)
        left right 不断的往中心收缩 小的一方移动
        
    */

    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var res = 0
        while left < right {
            let cur_area = min(height[left], height[right]) * (right - left)
            res = max(res, cur_area)
            if height[left] < height[right] {
                left += 1
            }else {
                right -= 1
            }
        }
        return res
    }
}
