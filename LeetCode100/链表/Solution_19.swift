//
//  Solution_19.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//

import Foundation

// 19. 删除链表的倒数第 N 个结点
class Solution_19 {

    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        // 为了防止删除的是头节点 可以用一个 dumpty来解决
        var dumpty = ListNode(-1)
        dumpty.next = head

        var x = findEnd(dumpty, n + 1) // 找到删除的节点的前驱
        x?.next = x?.next?.next
        return dumpty.next
    }

    // 找到倒数第n个节点
    func findEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var p1 = head

        // p1 走 n 步
        for i in 0..<n {
            p1 = p1?.next
        }

        var p2 = head
        while p1 != nil {
            p1 = p1?.next
            p2 = p2?.next
        }
        return p2
    }

}
