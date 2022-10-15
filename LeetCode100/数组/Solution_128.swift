//
//  Solution_128.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_128 {
    // 哈希去重 然后找 x -1  x + 1
    func longestConsecutive(_ nums: [Int]) -> Int {
        var setnums = Set(nums)
        var res = 0
        var cs = Set<Int>()
        print(setnums)

        for item in setnums {
            if cs.contains(item){
               continue
            }

            var left = item - 1
            var right = item + 1

            var count = 1
            cs.insert(item)

            // 向当前元素的左边搜索,eg: 当前为100, 搜索：99，98，97,...
            while setnums.contains(left) {
                cs.insert(left)
                left -= 1
                count += 1
            }

            // 向当前元素的右边搜索,eg: 当前为100, 搜索：101，102，103,...
            while setnums.contains(right) {
                cs.insert(right)
                right += 1
                count += 1
            }

            res = max(res, count)
        }
        return res
    }
}
