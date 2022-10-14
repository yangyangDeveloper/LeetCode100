//
//  Solution_338.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 338. 比特位计数
class Solution_338 {
    // 找奇偶数  奇数1+1  偶数就一直是 1
    func countBits(_ n: Int) -> [Int] {
        var res = [Int](repeating:0, count: n + 1)
        for i in 0...n {
            if i % 2 == 0 {
                res[i] = res[ i / 2]
            }else {
                res[i] = res[ i / 2] + 1
            }
        }
        return res
    }
}
