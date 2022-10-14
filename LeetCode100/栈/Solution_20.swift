//
//  Solution_20.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/10/14.
//


// 20. 有效的括号
class Solution_20 {

    /*
      用 stack 左入栈  遇到右找到对应的左 然后比较一致就出栈 最后栈为空 即合法
    */
    func isValid(_ s: String) -> Bool {
        var s = s.map({String($0)})
        var stack = [String]()
        for i in 0..<s.count {
            if s[i] == "(" || s[i] == "{" || s[i] == "[" {
                stack.append(s[i])
            }else {
                let t = isLeft(s[i])
                // 字符 c 是右括号
                if stack.count > 0 && stack.last! == t {
                    stack.removeLast()
                }else {
                    //  和最近的左括号不匹配
                    return false
                }
            }
        }
        //  是否所有的左括号都被匹配了
        return stack.count == 0
    }

    func isLeft(_ s: String) -> String {
        if s == ")" {
            return "("
        }
        if s == "]" {
            return "["
        }
        return "{"
    }
}
