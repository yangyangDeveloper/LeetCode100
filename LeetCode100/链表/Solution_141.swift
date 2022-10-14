//
//  Solution_141.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 141. 环形链表
class Solution_141 {

    /*
        快慢指针
    */
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        
        // fast 一直走
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow === fast {
                return true
            }
        }
        return false
    }
}
