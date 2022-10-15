//
//  Solution_200.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_200 {

    /*
        图的遍历
        // basecase
        1、边界
        2、重复问题  设置为0

        遍历 2个for循环

        遍历到 设置为0

        if 遇到1 开始遍历淹没
        res 记录岛屿
    */

    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        let m = grid.count
        let n = grid[0].count
        var res = 0

        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == "1" {
                    res += 1
                    // 遍历
                    dfs(&grid, i, j)
                }
            }
        }

        //  从 (i, j) 开始，将与之相邻的陆地都变成海水
        func dfs(_ grid: inout[[Character]], _ r: Int, _ c: Int) {
            if r < 0 || r >= m  || c < 0 || c >= n {
                return
            }

            if grid[r][c] == "0" {
                return
            }
            grid[r][c] = "0"
            dfs(&grid, r - 1, c)
            dfs(&grid, r + 1, c)
            dfs(&grid, r, c - 1)
            dfs(&grid, r, c + 1)
        }

        return res
    }
}
