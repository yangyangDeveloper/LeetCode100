//
//  Solution_160.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 160. 相交链表
class Solution_160 {
    /*
        假设俩链表相交  让他们走完各种之后去走其他的节点
    */
   func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {

        var p1 = headA
        var p2 = headB

        while p1 !== p2 {
            p1 = p1 == nil ? headB : p1?.next
            p2 = p2 == nil ? headA : p2?.next
        }
        // 跳出while 可能存在相交相等  也可能都为nil
        return p1
    }
}
