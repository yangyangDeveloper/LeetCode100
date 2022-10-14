//
//  Solution_1.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 1. 两数之和
class Solution_1 {

    // 哈希表 建立value  和 index的 映射
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int : Int]()
        var res = [Int]()
        for i in 0..<nums.count {
            let key = nums[i]
            let need = target - key
            // 发现存在 need
            if map.keys.contains(need) {
                if let t = map[need] {
                    return [t, i]
                }
            }
            map[key] = i
        }
        return [-1, -1]
    }
}
