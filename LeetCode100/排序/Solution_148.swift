//
//  Solution_148.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_148 {
    /*
        归并排序
    */
    func sortList(_ head: ListNode?) -> ListNode? {
        // 只有一个节点 无需排序
        if head == nil || head?.next == nil {
            return head
        }
        // 快慢指针找出中间点
        var slow = head
        var fast = head
        var left = head
        var right = head
        // 快慢指针找到中心点
        while fast != nil && fast?.next != nil {
            fast = fast?.next?.next
            print(6)
            slow = slow?.next
        }
        print(7)
        // slow 就是中心
        let last = slow?.next
        slow?.next = nil
        // 对左半部进行归并
        let first = sortList(head)
         // 对右半部进行归并
        let second = sortList(last)
        let res = merge(first,second)
        return res
    }

    // 合并两个有序链表
    func merge(_ head1: ListNode?, _ head2: ListNode?) -> ListNode? {
        var dumpty:ListNode? = ListNode(-1)
        var temp = dumpty
        var p1 = head1
        var p2 = head2
        while p1 != nil && p2 != nil {
            if p1!.val < p2!.val {
                temp?.next = p1
                p1 = p1?.next
            }else {
                temp?.next = p2
                p2 = p2?.next
            }
            temp = temp?.next
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
