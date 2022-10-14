//
//  Solution_13.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/9/8.
//


extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}


class Solution13 {
    
    // let s = "MCMXCIV"
    func romanToInt(_ s: String) -> Int {
        
        let map = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        
        var level = 0
        var highestLevel = 1
        var res = 0
        
        //  从后往前  当前罗马数字对应的值是 是否比前一个更大，更大则加，更小则
        //  ➕   更大 大  否者  -
        for ch in s.reversed() {
            level = map[String(ch)]!
            // 到序遍历
            // 当前层 比前面的大 就加   比前面的小 就前去  IV
            if level >= highestLevel {
                res += level
                highestLevel = level
            } else {
                res -= level
            }
        }
        return res
    }
}

extension String {
   //获取子字符串
    func substring(in r: Range<Int>) -> String? {
        if r.lowerBound < 0 || r.upperBound > self.count {
            return nil
        }
        let startIndex = self.index(self.startIndex, offsetBy:r.lowerBound)
        let endIndex   = self.index(self.startIndex, offsetBy:r.upperBound)
        return String(self[startIndex..<endIndex])
    }
}


