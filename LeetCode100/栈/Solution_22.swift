//
//  Solution_22.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation

// 22. 括号生成
class Solution_22 {

    /*
        回溯
        left 剩余的左括号  right 剩余的诱惑号
        if left > right  return
        if left < 0  right < 0  数量小于0都不合法
        if left == 0  right == 0  收集

        维护路径
        尝试加 (
        尝试加 ）
    */

    var res = [String]()
    var path = String()
    func generateParenthesis(_ n: Int) -> [String] {
        if n == 0 {
            return []
        }

        backtrace(n, n)
        return res
    }

    func backtrace(_ left: Int, _ right: Int) {
        //var path = path
        if left > right {
            return
        }
        if left < 0 || right < 0 {
            return
        }

        if left == 0 && right == 0 {
            res.append(path)
            return
        }

        path.append("(")
        backtrace(left - 1, right)
        path.removeLast()

        path.append(")")
        backtrace(left, right - 1)
        path.removeLast()
    }
}
