//
//  ViewController.swift
//  LeetCode100
//
//  Created by zhangyangyang on 2022/9/8.
//

import UIKit

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        test13()
    }
   
    func test13() {
        let s = "MCMXCIV"
        let t = Solution13().romanToInt(s)
        print(t)
    }

}

