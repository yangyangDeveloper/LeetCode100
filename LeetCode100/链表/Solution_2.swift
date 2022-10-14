//
//  Solution_2.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 2. 两数相加
class Solution_2 {
    /*
        加法运算的进位处理
        每次新节点的值 等于上一次的进位 + 这一次的两个节点的值
    */
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       
        var p1 = l1
        var p2 = l2
        var dumpty:ListNode? = ListNode(-1)
        var p = dumpty

        var carry = 0

        // 保证 两条链表都走完了 切没有进位了
        while p1 != nil || p2 != nil || carry > 0 {
            var value = carry

            if p1 != nil {
                value += p1!.val
                p1 = p1?.next
            }

            if p2 != nil {
                value += p2!.val
                p2 = p2?.next
            }
            
            // 处理进位情况
            carry = value / 10  // 进位的值
            value = value % 10 // 当前位的值

            // 构造节点 拼接
            p?.next = ListNode(value)
            p = p?.next
        }

        return dumpty?.next
    }
}
