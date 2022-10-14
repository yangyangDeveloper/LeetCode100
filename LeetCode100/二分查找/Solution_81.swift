//
//  Solution_81.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 81. 搜索旋转排序数组 II

class Solution_81 {
    // 每次搞之前 移除重复元素
    func search(_ nums: [Int], _ target: Int) -> Bool {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            while left < right && nums[left] == nums[left + 1] {
                left += 1
            }
            while left < right && nums[right] == nums[right - 1] {
                right -= 1
            }

            let mid = left + (right - left) / 2
            if nums[mid] == target {
                return true
            }

            // mid在悬崖左边 [left mid] 有序
            if nums[mid] >= nums[left] {
                if target >= nums[left] && target < nums[mid] {
                    right = mid - 1
                }else {
                    left = mid + 1
                }
            }else {
                if target > nums[mid] && target <= nums[right] {
                    left = mid + 1
                }else {
                    right = mid - 1
                }
            }
        }
        return false
    }
}
