//
//  Solution_3.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 3. 无重复字符的最长子串
class Solution_3 {
    /*
        滑动窗口  [left right)
        收缩窗口 win [c] > 1
        在外界手机答案 找最长
    */
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var s = s.map({String($0)})

        var left = 0
        var right = 0

        var window = [String: Int]()
        var maxLength = 0

        while right < s.count {
            var c = s[right]
            right += 1
            // 更新操作
            window[c, default: 0] += 1

            // 缩小窗口
            while window[c, default: 0] > 1 {
                var c = s[left]
                left += 1
                // 更新操作
                window[c, default:0] -= 1
            }
            // 收集答案
            maxLength = max(maxLength, right - left)
        }

        return maxLength
    }
}
