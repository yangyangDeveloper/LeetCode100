//
//  Solution_253.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/16.
//

import Foundation
class Solution_253 {

    /*
        start 升序排列  end 升序
        8888
          *******  ****
        遇到 start + 1  遇到 end  - 1
        count 记录最大值
    */
    func minMeetingRooms(_ intervals: [[Int]]) -> Int {
        let n = intervals.count
        var begin = [Int](repeating:0, count: n)
        var end = [Int](repeating:0, count: n)

        for i in 0..<n {
            begin[i] = intervals[i][0]
            end[i] = intervals[i][1]
        }
        begin = begin.sorted()
        end = end.sorted()
        print(begin)
        print(end)
        // 扫描过程中的计数器
        var count = 0
        var res = 0

        // 双指针技巧
        var i = 0
        var j = 0
        while i < n && j < n {
            if begin[i] < end[j] { // 遇到红点
                count += 1
                i += 1
            }else {
                count -= 1
                j += 1
            }
            res = max(res, count)
        }
        
        return res
    }
}
