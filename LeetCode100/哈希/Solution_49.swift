//
//  Solution_49.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 49. 字母异位词分组
class Solution_49 {
    //  哈希
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [String: [String]]()
        for str in strs {
            let key = String(str.sorted())
            map[key, default:[]].append(str)
        }
        return Array(map.values)
    }
}
