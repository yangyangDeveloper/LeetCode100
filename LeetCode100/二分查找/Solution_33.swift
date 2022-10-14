//
//  Solution-33.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 33. 搜索旋转排序数组
class Solution_33 {
    /*
        二分查找
        旋转有序数组 相当于断崖  先找到断崖是在左还是右
        选择之后的数组 还是相对有序的
        互不相同的元素
        1、确定 mid 落在断崖的左边还是右边
        2、根据第一步的结果  根据target 和 nums[left]  nums[right]  nus[mid] 的相对大小收缩搜索区间

        if nums[mid] > nums[right] {
            mid 落在了悬崖左边  此刻 nums[left mid] 有序
            if target 在 left 和 mid-1中
        }else {
            mid落在了悬崖右边 此刻  nums[mid right] 有序
        }

    */
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            if nums[mid] == target {
                return mid
            }
            // mid在悬崖左边 [left mid] 有序
            if nums[mid] >= nums[left] {
                // target 在 [left mid-1]中
                if target >= nums[left] && target < nums[mid] {
                    right = mid - 1
                }else {
                    // target在 [mid+1, right]中
                    left = mid + 1
                }
            }else {
                // target 在 [mid + 1, right]中
                if target <= nums[right] && target > nums[mid] {
                    left = mid + 1
                }else {
                    // target 在 [left mid-1]中国呢
                    right = mid - 1
                }
            }
        }

        return -1
    }
}
