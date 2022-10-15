//
//  Solution_75.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_75 {

    func sortColors(_ nums: inout [Int]) {

        var a0 = 0
        var a1 = 0
        var a2 = 0

        for item in nums {
            if item == 0 {
                a0 += 1
            }
            if item == 1 {
                a1 += 1
            }
            if item == 2 {
                a2 += 1
            }
        }
        print("a0 =\(a0), a1=\(a1), a2=\(a2)")
        for i in 0..<nums.count {
            if i < a0 {
                nums[i] = 0
            }else if i < (a0 + a1) {
                nums[i] = 1
            }else {
                nums[i] = 2
            }
        }
    }
}
