//
//  Solution_283.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 283. 移动零
class Solution_283 {

    /*
     双指针解决  slow fast
      [0 slow） 都是非0元素
       [slow  最后] 设置为0
        遇到 非0 给slow  slow移动  最后从slow 到数组末尾 设置为0
    */
    func moveZeroes(_ nums: inout [Int]) {
         var fast = 0
         var slow = 0

         for i in 0..<nums.count {
             // [0 slow） 为非零元素
             if nums[fast] != 0 {
                 nums[slow] = nums[fast]
                 slow += 1
             }
             fast += 1
         }

         // 讲 [slow nums.count-1] 设置为0
         for i in slow..<nums.count {
             nums[i] = 0
         }
    }
}
