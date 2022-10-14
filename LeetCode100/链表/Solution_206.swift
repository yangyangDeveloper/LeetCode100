//
//  Solution_206.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 206. 反转链表
class Solution_206 {
    // 递归 后序反转
    func reverseList(_ head: ListNode?) -> ListNode? {
        return reverse(head)
    }
    
    func reverse(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        var last = reverse(head?.next)
        head?.next?.next = head
        head?.next = nil
        return last
    }
}
