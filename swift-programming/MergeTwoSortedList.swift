//
//  MergeTwoSortedList.swift
//  swift-programming
//
//  Created by Md Altaf Hoshain Firoj on 7/10/24.
//
//Merge Two Sorted Lists
//You are given the heads of two sorted linked lists list1 and list2.
//
//Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.
//
//Return the head of the merged linked list.

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

public class MergeTwoSortedLists {
    public func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        if list1 == nil {
            return list2
        }
        if list2 == nil {
            return list1
        }
       
        let listNode = ListNode(0)
        var current = listNode

        var l1 = list1
        var l2 = list2

        while l1 != nil || l2 != nil {
            if let l1Value = l1?.val, let l2Value = l2?.val {
                if l1Value <= l2Value {
                    current.next = l1
                    l1 = l1?.next
                } else {
                    current.next = l2
                    l2 = l2?.next
                }
            } else if l1 != nil {
                current.next = l1
                break
            } else if l2 != nil {
                current.next = l2
                break
            }
            current = current.next!
        }
        return listNode.next
    }
}
