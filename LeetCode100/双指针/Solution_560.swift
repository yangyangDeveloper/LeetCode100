//
//  Solution_560.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/17.
//

// 560. 和为 K 的子数组
class Solution_560 {
    /*
        前缀和  哈希
        哈希： 前缀和 和  count

        if  need = pre[i] - k  存在

        // 讲当前的前最和存入哈希
    */
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var map = [Int : Int]()
        var res = 0
        var preSum = [Int](repeating: 0, count: nums.count + 1)
        //map[0] = 1
        for i in 1...nums.count {
            // 记录前最和
            preSum[i] = preSum[i - 1] + nums[i - 1]
            
            // 刚好等于k
            if preSum[i] == k {
                res += 1
            }

            // 如果之前存在值为 need 的前缀和
            // 说明存在以 nums[i-1] 结尾的子数组的和为 k
            var need = preSum[i] - k
            if map[need] != nil {
                 res += map[need]!
            }

            // 讲当前的前缀和 存在map
            map[preSum[i], default:0] += 1

            //print(map)
        }

        return res
    }
}
