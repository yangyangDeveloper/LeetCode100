//
//  Solution_287.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_287 {
    func findDuplicate(_ nums: [Int]) -> Int {
        var nums = nums
        var arr = nums.sorted()
        for i in 0..<arr.count-1 {
            if arr[i] == arr[i + 1] {
                return arr[i]
            }
        }
        return -1
    }
}
