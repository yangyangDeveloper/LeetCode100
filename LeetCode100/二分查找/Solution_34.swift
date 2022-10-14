//
//  Solution_33.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 34. 在排序数组中查找元素的第一个和最后一个位置
class Solution_34 {
    // 二分边界问题
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let left = leftBound(nums, target)
        let right = rightBound(nums, target)
        return [left, right]
    }

    // 左边界  [left right]
    func leftBound(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if target == nums[mid] {
                right = mid - 1
            }else if target < nums[mid] {
                right = mid - 1
            }else if target > nums[mid] {
                left = mid + 1
            }
        }
        // 考虑左边界
        if left >= nums.count || nums[left] != target {
            return -1
        }
        return left
    }

    // 右边界
    func rightBound(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if target == nums[mid] {
                left = mid + 1
            }else if target < nums[mid] {
                right = mid - 1
            }else if target > nums[mid] {
                left = mid + 1
            }
        }

        // 考虑右边界
        if right < 0 || nums[right] != target {
            return -1
        }

        return right
    }
}
