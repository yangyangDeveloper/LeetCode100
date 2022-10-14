//
//  Solution_234.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation
// 234. 回文链表
class Solution_234 {
    /*
        1、找到中心  如果 fast不为nil  slow + 1
        2、从slow开始反转后面的链表 得到right
        然后left  right 相互比较

    */
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head

        while fast != nil || fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        if fast != nil {
            slow = slow?.next
        }

        var right = reverse(slow)
        var left = head

        while right != nil {
            if left!.val != right!.val {
                return false
            }
            left = left?.next
            right = right?.next
        }
        return true
    }

    // 给定一个头节点  反转链表
    func reverse(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }

        let last = reverse(head?.next)
        head?.next?.next = head
        head?.next = nil
        return last
    }
}
