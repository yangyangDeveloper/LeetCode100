//
//  Solution_5.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 5. 最长回文子串
class Solution_5 {

    /*
        1、中心扩散法
        2、反转字符串 找两个字符串的 最长公共子串
    */
    var start = 0
    var maxL = 0
    func longestPalindrome(_ s: String) -> String {
        var s = s.map({String($0)})
        for i in 0..<s.count {
            palindrome(s,i,i)
            palindrome(s,i,i+1) // 这里不用怕越界
        }

        // strr 移除2 直接 rr
        s.removeFirst(start)
        let sub = s.prefix(maxL).joined()
        return sub
    }
    
    // 更新 start 和 maxl 就行了
    func palindrome(_ s: [String], _ left: Int, _ right: Int) {
        var left = left
        var right = right
        while left >= 0 && right < s.count  && s[left] == s[right] {
            if right - left + 1 > maxL {
                maxL = right - left + 1  // [left right] 都是闭区间  所以长度 需要 + 1
                start = left
            }
            left -= 1
            right += 1
        }
    }
}
