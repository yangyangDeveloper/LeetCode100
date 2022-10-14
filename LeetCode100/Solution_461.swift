//
//  Solution_461.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 461. 汉明距离
class Solution_461 {

    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var x = x
        var y = y
        var res  = 0
        
        // ^异或运算 不同时返回1  相同时返回0   能把两个数的二进制拼接在一起
        x ^= y

        // &与运算  都为1 返回1     不断的消除 末尾1   n & (n - 1)
        while x != 0 {
            x = x&(x-1)
            res += 1
        }
        return res
    }
}
