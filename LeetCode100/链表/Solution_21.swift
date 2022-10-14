//
//  Solution_21.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 21. 合并两个有序链表
class Solution_21 {
    /*
        合并组成升序
        dumpty  temp
        p1 p2
        return dumpty.next
    */
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

        var dumpty:ListNode? = ListNode(-1)
        var temp = dumpty
        
        var p1 = list1
        var p2 = list2

        while p1 != nil && p2 != nil {
            if p1!.val < p2!.val {
                temp?.next = p1
                temp = temp?.next
                p1 = p1?.next
            }else {
                temp?.next = p2
                temp = temp?.next
                p2 = p2?.next
            }
        }

        if p1 != nil {
            temp?.next = p1
        }

        if p2 != nil {
            temp?.next = p2
        }

        return dumpty?.next
    }
}
