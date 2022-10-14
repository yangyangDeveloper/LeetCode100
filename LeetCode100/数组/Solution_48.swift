//
//  Solution_48.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 48. 旋转图像
class Solution_48 {
    /*
        1、对角线
        2、镜像
    */
    func rotate(_ matrix: inout [[Int]]) {
        let m = matrix.count
        let n = matrix[0].count
        // 沿着对角线对折
        for i in 0..<m {
            for j in i..<m {
                var temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }

        // 镜像反转
        for i in 0..<m {
            reverse(&matrix[i])
        }
    }

    // 反转一个一位数组
    func reverse(_ arr: inout [Int]) {
        var left = 0
        var right = arr.count - 1
        while left < right {
            var temp = arr[left]
            arr[left] = arr[right]
            arr[right] = temp
            left += 1
            right -= 1
        }
    }
}
