//
//  Solution_78.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_78 {
    /*
        回溯
    */

    var res = [[Int]]()
    var path = [Int]()
    func subsets(_ nums: [Int]) -> [[Int]] {
        backtrace(0, nums)
        return res
    }

    func backtrace(_ startIndex: Int, _ nums: [Int]) {
        res.append(path)

        for i in startIndex..<nums.count {
            path.append(nums[i])
            backtrace(i + 1, nums)
            path.removeLast()
        }
    }
}
