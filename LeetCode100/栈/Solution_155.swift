//
//  Solution_155.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/15.
//

import Foundation
class MinStack {
    var stack = [Int]()
    var stkmin = [Int]()

    init() {
    
    }

    // 核心思想就是为了一个 同样高度的 min栈  这个栈的里面的元素始终保证最上面是最小值
    // 维护 minStk 栈顶为全栈最小元素
    func push(_ val: Int) {

        if stkmin.count == 0 {
             stack.append(val)
             stkmin.append(val)
        }else {
             stack.append(val)
             // 存放最小值
             stkmin.append(min(stkmin.last!, val))
        }
    }
    
    func pop() {
        stack.removeLast()
        stkmin.removeLast()
    }
    
    func top() -> Int {
        if stack.count > 0 {
            return stack.last!
        }
        return -1
    }
    
    // minStk 栈顶为全栈最小元素
    func getMin() -> Int {
        if stkmin.count > 0 {
            return stkmin.last!
        }
        return -1
    }
}
