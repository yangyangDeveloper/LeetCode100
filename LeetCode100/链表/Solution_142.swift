//
//  Solution_142.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class Solution_142 {
    /*
        1、确认是否相交
       
    */
    func detectCycle(_ head: ListNode?) -> ListNode? {

        var slow = head
        var fast = head
        while fast != nil || fast?.next != nil {
            fast = fast?.next?.next
            slow = slow?.next
            if fast === slow {
                break
            }
        }

        if fast == nil || fast?.next == nil {
            return nil
        }

        // 存在相遇
        slow = head
        while slow !== fast {
            fast = fast?.next
            slow = slow?.next
        }
        return slow
    }
}
