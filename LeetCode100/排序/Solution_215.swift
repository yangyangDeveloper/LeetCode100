//
//  Solution_215.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation

class Solution_215 {
    /*
        归并排序
    */
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var nums = nums
        var arr = mergeSort(nums)
        let t = arr.count - k
        return arr[t]
    }

    func mergeSort(_ nums: [Int]) -> [Int] {
        if nums.count <= 1 {
            return nums
        }
        var mid = nums.count / 2
        var leftArr = mergeSort(Array(nums[0...mid-1]))
        var rightArr = mergeSort(Array(nums[mid...nums.count-1]))
        return merge(leftArr, rightArr)
    }

    // 合并过程
    func merge(_ leftArr: [Int], _ rightArr: [Int]) -> [Int] {
        var p = 0
        var q = 0

        var res = [Int]()
        while p < leftArr.count && q < rightArr.count {
            if leftArr[p] < rightArr[q] {
                res.append(leftArr[p])
                p += 1
            }else if leftArr[p] > rightArr[q] {
                res.append(rightArr[q])
                q += 1
            }else {
                res.append(leftArr[p])
                p += 1
                res.append(rightArr[q])
                q += 1
            }
        }

        while p < leftArr.count {
            res.append(leftArr[p])
            p += 1
        }

        while q < rightArr.count {
            res.append(rightArr[q])
            q += 1
        }

        return res
    }
}
